package group.riding.dao;

import java.util.List;

import group.riding.bean.BoardBean;
import group.riding.bean.SharReadFile;

public interface BoardDAO {
	public void newShar(BoardBean vo) throws Exception;
	
	public List<BoardBean> sharList() throws Exception;
	
	public void sharEdit(BoardBean vo) throws Exception;
	
	public void sharDel(int writing_Id) throws Exception;
	
	public BoardBean sharRead(int writing_Id) throws Exception;
	
	public void likeUpdate(BoardBean vo) throws Exception;
	
	public void addFile(String bbs_FilePath,String kml_name,String picture_location,String kml_center) throws Exception;
	
	public void editFile(BoardBean vo) throws Exception;
	
	public void delFile(int writing_Id) throws Exception;
	
	public List<String> getFile(int writing_Id) throws Exception;
	
	public List<BoardBean> getFile2();
	
	public void insertimgfile(String imgName)throws Exception;
	
	public List<SharReadFile> sharfileRead(int writing_Id)throws Exception;
}