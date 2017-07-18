package group.riding.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import group.riding.bean.BoardBean;

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
	public void addFile(BoardBean vo) throws Exception {
		// TODO Auto-generated method stub
		session.insert(namespace + ".addFile", vo);
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
	public void sharDel(int writing_Id) throws Exception {
		// TODO Auto-generated method stub
		 session.delete(namespace + ".sharDel", writing_Id);

	}

	@Override
	public void delFile(int writing_Id) throws Exception {
		// TODO Auto-generated method stub
		 session.delete(namespace + ".delFile", writing_Id);

	}

}
