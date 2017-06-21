package group.riding.dao;

import java.util.List;

import group.riding.bean.BoardBean;

public interface BoardDAO {
	public void newShar(BoardBean vo) throws Exception;
	public List<BoardBean> sharList() throws Exception;
	public BoardBean sharRead(int writing_Id) throws Exception;
	public void likeUpdate(BoardBean vo) throws Exception;
	public void addFile(BoardBean vo) throws Exception;
	public List<String> getFile(int writing_Id) throws Exception;
	public List<BoardBean> getFile2();
	public void insertimgfile(String imgName)throws Exception;
}