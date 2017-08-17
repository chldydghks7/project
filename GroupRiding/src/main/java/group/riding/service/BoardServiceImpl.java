package group.riding.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import group.riding.bean.BoardBean;
import group.riding.bean.SharReadFile;
import group.riding.dao.BoardDAO;

@Service
public class BoardServiceImpl implements BoardService {

	@Inject
	private BoardDAO dao;
	
	@Transactional
	@Override
	public void newShar(BoardBean vo) throws Exception {
		// TODO Auto-generated method stub
		dao.newShar(vo);
	String[] filepath=vo.getBbs_FilePath();
	String[] piclocation=vo.getPicture_location();
		
		
		for(int i=0;i<filepath.length;i++)
		{
			System.out.println("파일이름 "+filepath[i]);
			System.out.println("사진위치 "+piclocation[i]);
			dao.addFile(filepath[i], vo.getKml_name(), piclocation[i], vo.getKml_center());
		}
	}

	@Override
	public List<BoardBean> sharList() throws Exception {
		// TODO Auto-generated method stub
		return dao.sharList();
	}

	@Override
	public List<String> getFile(int writing_Id) throws Exception {
		// TODO Auto-generated method stub
		return dao.getFile(writing_Id);
	}

	@Override
	public List<BoardBean> getFile2() throws Exception {
		// TODO Auto-generated method stub
		return dao.getFile2();
	}

	@Override
	public BoardBean sharRead(int writing_Id) throws Exception {
		// TODO Auto-generated method stub
		return dao.sharRead(writing_Id);
	}

	@Override
	public void likeUpdate(BoardBean vo) throws Exception {
		// TODO Auto-generated method stub
		dao.likeUpdate(vo);
	}

	@Override
	public void insertimgfile(String imgName) throws Exception {
		// TODO Auto-generated method stub
		dao.insertimgfile(imgName);
	}

	@Override
	public void sharEdit(BoardBean vo) throws Exception {
		// TODO Auto-generated method stub
		dao.editFile(vo);
		dao.sharEdit(vo);
	}

	@Override
	public void sharDel(int writing_Id) throws Exception {
		// TODO Auto-generated method stub
		dao.delFile(writing_Id);
		dao.sharDel(writing_Id);
	}

	@Override
	public List<SharReadFile> sharfileRead(int writing_Id) throws Exception {
		// TODO Auto-generated method stub
		return dao.sharfileRead(writing_Id);
	}

}
