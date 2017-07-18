package group.riding.service;

import java.util.List;

import group.riding.bean.BoardBean;

public interface BoardService {
	public void newShar(BoardBean vo) throws Exception;
	public List<BoardBean> sharList() throws Exception;
	public void likeUpdate(BoardBean vo) throws Exception;
	public List<String> getFile(int writing_Id) throws Exception;
	public List<BoardBean> getFile2() throws Exception;
	public BoardBean sharRead(int writing_Id) throws Exception;
	public void insertimgfile(String imgName)throws Exception;
	
	public void sharDel(int writing_Id) throws Exception;

}
