
package com.promasys.struts.action;

import java.net.InetAddress;
import java.net.UnknownHostException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import com.promasys.domain.Users;
import com.promasys.service.inter.DocServiceInter;
import com.promasys.service.inter.PostsServiceInter;
import com.promasys.service.inter.UserServiceInter;

public class HomeAction extends DispatchAction {

	private DocServiceInter docService;
	private UserServiceInter userService;
	private PostsServiceInter postsService;
	
	public PostsServiceInter getPostsService() {
		return postsService;
	}

	public void setPostsService(PostsServiceInter postsService) {
		this.postsService = postsService;
	}

	public DocServiceInter getDocService() {
		return docService;
	}

	public void setDocService(DocServiceInter docService) {
		this.docService = docService;
	}

	public UserServiceInter getUserService() {
		return userService;
	}

	public void setUserService(UserServiceInter userService) {
		this.userService = userService;
	}

	public ActionForward ProHome(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws UnknownHostException {
		request.setAttribute("prodoclist", docService.getResult("from Prodoclist", null));
		request.setAttribute("docNum", docService.getResult("from Prodoclist", null).size());
		request.setAttribute("stafflist", userService.getResult("from Users", null));
		request.setAttribute("loginAddress", InetAddress.getLocalHost().getHostAddress());
		return mapping.findForward("goHomeUI");
	}
	
	public ActionForward UserHome(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws UnknownHostException {
		Users loginuser = (Users) request.getSession().getAttribute("loginuser");
		request.setAttribute("topiclist", postsService.getResult("from Posts where users.id=?", 
				new Object[]{new Integer(loginuser.getId())}));
		request.setAttribute("doclist", docService.getResult("from Prodoclist where users.id=?", 
				new Object[]{new Integer(loginuser.getId())}));
		return mapping.findForward("goUserHome");
	}
}