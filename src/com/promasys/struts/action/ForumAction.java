
package com.promasys.struts.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import com.promasys.service.inter.PostsServiceInter;


public class ForumAction extends DispatchAction {

	private PostsServiceInter postsService;
	
	public PostsServiceInter getPostsService() {
		return postsService;
	}

	public void setPostsService(PostsServiceInter postsService) {
		this.postsService = postsService;
	}

	public ActionForward ForumUI(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("topiclist", postsService.getResult("from Posts", null));
		return mapping.findForward("goForumUI");
	}
}