package com.promasys.struts.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import com.promasys.domain.Posts;
import com.promasys.domain.Reply;
import com.promasys.domain.Users;
import com.promasys.service.inter.PostsServiceInter;
import com.promasys.service.inter.ReplyServiceInter;
import com.promasys.struts.form.ReplyForm;

public class ReplyAction extends DispatchAction {
	private PostsServiceInter postsService;
	private ReplyServiceInter replyService;
	
	public PostsServiceInter getPostsService() {
		return postsService;
	}

	public void setPostsService(PostsServiceInter postsService) {
		this.postsService = postsService;
	}

	public ReplyServiceInter getReplyService() {
		return replyService;
	}

	public void setReplyService(ReplyServiceInter replyService) {
		this.replyService = replyService;
	}
	
	//点击主题列表后
	public ActionForward replyUI(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {

		request.getSession().setAttribute("posts", postsService.getResult("from Posts where id=?", 
				new Object[]{new Integer(request.getParameter("topicId"))}).get(0));

		request.setAttribute("replylist", replyService.getResult("from Reply where posts.id=?", 
				new Object[]{new Integer(request.getParameter("topicId"))}));
		
		return mapping.findForward("goReplyUI");
	}
	
	//点击回复按钮后
	public ActionForward reply(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		//获得当前用户
		Users loginuser = (Users) request.getSession().getAttribute("loginuser");
		//获得当前帖子
		Posts posts = (Posts) request.getSession().getAttribute("posts");
		//获得用户表单
		ReplyForm replyForm = (ReplyForm) form;
		
		Reply reply = new Reply();
		reply.setPosts(posts);
		reply.setUsers(loginuser);
		reply.setContent(replyForm.getContent());
		reply.setReplyTime(new java.util.Date());
		
		replyService.save(reply);
		
		posts.setReplyNum(posts.getReplyNum()+1);
		postsService.update(posts);
		
		return mapping.findForward("goReplyUI");
	}
}