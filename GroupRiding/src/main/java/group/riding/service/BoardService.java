package group.riding.service;

import java.util.List;

import group.riding.bean.BoardBean;
import group.riding.bean.SharReadFile;

public interface BoardService {
	public void newShar(BoardBean vo) throws Exception;
	public List<BoardBean> sharList() throws Exception;
	public void sharEdit(BoardBean vo) throws Exception;
	public void sharDel(int writing_Id) throws Exception;
	public void likeUpdate(BoardBean vo) throws Exception;
	public List<String> getFile(int writing_Id) throws Exception;
	public List<BoardBean> getFile2() throws Exception;
	public BoardBean sharRead(int writing_Id) throws Exception;
	public void insertimgfile(String imgName)throws Exception;
	
	/*sharing 게시물 읽을때 사진 여러개 올리고 읽을수 있게 하기위해*/
	public List<SharReadFile> sharfileRead(int writing_Id)throws Exception;
}
