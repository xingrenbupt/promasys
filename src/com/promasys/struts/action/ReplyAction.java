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
	
	//��������б��
	public ActionForward replyUI(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {

		request.getSession().setAttribute("posts", postsService.getResult("from Posts where id=?", 
				new Object[]{new Integer(request.getParameter("topicId"))}).get(0));

		request.setAttribute("replylist", replyService.getResult("from Reply where posts.id=?", 
				new Object[]{new Integer(request.getParameter("topicId"))}));
		
		return mapping.findForward("goReplyUI");
	}
	
	//����ظ���ť��
	public ActionForward reply(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		//��õ�ǰ�û�
		Users loginuser = (Users) request.getSession().getAttribute("loginuser");
		//��õ�ǰ����
		Posts posts = (Posts) request.getSession().getAttribute("posts");
		//����û���
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