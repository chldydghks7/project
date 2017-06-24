package group.riding.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import group.riding.bean.BoardReplyBean;

@Repository
public class BoardReplyDAOImpl implements BoardReplyDAO {
	
	private static final String namespace = "group.riding.BoardReplyMapper";
	
	@Inject
	private SqlSession session;
	
	@Override
	public List<BoardReplyBean> replyList(int writing_Id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".replyList", writing_Id);
	}

	@Override
	public void newReply(BoardReplyBean reply) throws Exception {
		// TODO Auto-generated method stub
		session.insert(namespace + ".newReply", reply);
	}

	@Override
	public void editReply(BoardReplyBean reply) throws Exception {
		// TODO Auto-generated method stub
		session.update(namespace + ".editReply", reply);
	}

	@Override
	public void delReply(int rno) throws Exception {
		// TODO Auto-generated method stub
		session.delete(namespace + ".delReply", rno);
	}


}
