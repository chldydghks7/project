package group.riding.dao;

import java.util.List;

import group.riding.bean.BoardBean;
import group.riding.bean.MapBean;

public interface MapDAO {
	public List<MapBean> makerList() throws Exception;
	public MapBean makerRead(String place_name) throws Exception;
	public void likeUpdate(MapBean map) throws Exception;
}
