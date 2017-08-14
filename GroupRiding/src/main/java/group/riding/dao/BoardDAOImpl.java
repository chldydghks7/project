package group.riding.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import group.riding.bean.BoardBean;
import group.riding.bean.SharReadFile;

@Repository
public class BoardDAOImpl implements BoardDAO {
		
	private static final String namespace = "group.riding.BoardMapper";
	
	@Inject
	private SqlSession session;
		
	@Override
	public void newShar(BoardBean vo) throws Exception {
		// TODO Auto-generated method stub
		session.insert(namespace + ".newShar", vo);
	}

	@Override
	public List<BoardBean> sharList() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".sharList");
	}

	@Override
	public void addFile(String bbs_FilePath,String kml_name,String picture_location,String kml_center) throws Exception {
		// TODO Auto-generated method stub
		HashMap<String, Object>map= new HashMap<>();
		
		map.put("bbs_FilePath", bbs_FilePath);
		map.put("kml_center", kml_center);
		map.put("kml_name", kml_name);
		
	
		map.put("picture_location", picture_location);
		session.insert(namespace + ".addFile", map);
	}

	@Override
	public List<String> getFile(int writing_Id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".getFile", writing_Id);
	}

	@Override
	public List<BoardBean> getFile2() {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".getFile2");
	}

	@Override
	public BoardBean sharRead(int writing_Id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace + ".sharRead", writing_Id);
	}

	@Override
	public void likeUpdate(BoardBean vo) throws Exception {
		// TODO Auto-generated method stub
		session.update(namespace + ".likeUpdate", vo);
	}

	@Override
	public void insertimgfile(String imgName) throws Exception {
		// TODO Auto-generated method stub
		session.insert(namespace+".insertImgFile", imgName);
	}

	@Override
	public void sharEdit(BoardBean vo) throws Exception {
		// TODO Auto-generated method stub
		session.update(namespace + ".sharEdit", vo);
	}

	@Override
	public void sharDel(int writing_Id) throws Exception {
		// TODO Auto-generated method stub
		session.delete(namespace + ".sharDel", writing_Id);
	}

	@Override
	public void editFile(BoardBean vo) throws Exception {
		// TODO Auto-generated method stub
		session.update(namespace + ".editFile", vo);
	}

	@Override
	public void delFile(int writing_Id) throws Exception {
		// TODO Auto-generated method stub
		session.delete(namespace + ".delFile", writing_Id);
	}

	@Override
	public List<SharReadFile> sharfileRead(int writing_Id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".sharReadFile", writing_Id);
	}

}
