package group.riding.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import group.riding.bean.BoardReplyBean;
import group.riding.dao.BoardReplyDAO;

@Service
public class BoardReplyServiceImpl implements BoardReplyService {
	
	@Inject
	private BoardReplyDAO dao;
	
	@Override
	public List<BoardReplyBean> replyList(int writing_Id) throws Exception {
		// TODO Auto-generated method stub
		return dao.replyList(writing_Id);
	}

	@Override
	public void newReply(BoardReplyBean reply) throws Exception {
		// TODO Auto-generated method stub
		dao.newReply(reply);
	}

	@Override
	public void editReply(BoardReplyBean reply) throws Exception {
		// TODO Auto-generated method stub
		dao.editReply(reply);
	}

	@Override
	public void delReply(int rno) throws Exception {
		// TODO Auto-generated method stub
		dao.delReply(rno);
	}
}
