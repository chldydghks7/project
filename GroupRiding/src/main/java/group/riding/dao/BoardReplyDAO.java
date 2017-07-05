package group.riding.dao;

import java.util.List;

import group.riding.bean.BoardReplyBean;

public interface BoardReplyDAO {
	public List<BoardReplyBean> replyList(int writing_Id) throws Exception;
	public void newReply(BoardReplyBean reply) throws Exception;
	public void editReply(BoardReplyBean reply) throws Exception;
	public void delReply(int rno) throws Exception;

}
