package group.riding.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import group.riding.bean.GoldenWeek;
import group.riding.bean.KmlBean;
import group.riding.bean.MyPicture;
import group.riding.bean.RidingInfo;
import group.riding.bean.UserBean;
import group.riding.bean.UserData;
import group.riding.bean.UserData2;
import group.riding.dao.UserDAO;
import group.riding.dto.LoginDTO;


@Service
public class UserServiceImpl implements UserService {

	@Inject
	private UserDAO dao;

@Transactional
	@Override
	public void register(UserBean user) throws Exception {
		dao.create(user);
		
		dao.addAttach(user);
		
	}

	@Override
	public int ck(String uid) throws Exception {
		return dao.ck(uid);
	}

	@Override
	public UserBean login(LoginDTO dto) throws Exception {
		return dao.login(dto);
	}

	@Override
	public UserBean user(String uid) throws Exception {
		return dao.user(uid);
	}

	@Override
	public List<String> getAttach(String uid) throws Exception {
		return dao.getAttach(uid);
	}

	@Override
	   public List<UserData> userData(String uid,String startDate,String stopDate) throws Exception {
	      // TODO Auto-generated method stub
	       return dao.userData(uid,startDate,stopDate);
	   }

	   @Override
	   public List<UserData2> userData2(String uid) throws Exception {
	      // TODO Auto-generated method stub
	      return dao.userData2(uid);
	   }
	   
	   @Override
	   public int Ridingdata3(String uid) throws Exception {
	      // TODO Auto-generated method stub
	      return dao.Ridingdata3(uid);
	   }

	@Override
	public int id_check(String uid) throws Exception {
		return dao.id_check(uid);
	}

	@Override
	public void insertkml(KmlBean kml) throws Exception {
		// TODO Auto-generated method stub
		dao.insertkml(kml);
	}

	@Override
	public void insertRidingInfo(RidingInfo info) throws Exception {
		// TODO Auto-generated method stub
		dao.insertRidingInfo(info);
	}

	@Override
	public List<MyPicture> showMyPic(String uid) throws Exception {
		// TODO Auto-generated method stub
		return dao.showMyPic(uid);
	}

	@Override
	public int selectkmlid() throws Exception {
		// TODO Auto-generated method stub
		return dao.selectkmlid();
	}

	@Override
	public List<RidingInfo> showhistory(String uid) throws Exception {
		// TODO Auto-generated method stub
		return dao.showhistory(uid);
	}

	@Override
	public void updateGrData(String startDate, String stopDate,int kmlid,String uid) throws Exception {
		// TODO Auto-generated method stub
		dao.updateGrData(startDate, stopDate, kmlid,uid);
	}

	@Override
	   public List<GoldenWeek> WeekData(String uid) throws Exception {
	      // TODO Auto-generated method stub
	      return dao.WeekData(uid);
	}


	@Override
	public void insertRidingInfoNotice(RidingInfo info) throws Exception {
		// TODO Auto-generated method stub
		dao.insertRidingInfoNotice(info);
	}
	


}
