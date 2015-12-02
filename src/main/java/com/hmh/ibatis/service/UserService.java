package com.hmh.ibatis.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hmh.ibatis.dao.UserDao;
import com.hmh.ibatis.databaseutil.DBContextHolder;
import com.hmh.ibatis.model.User;
import com.hmh.ibatis.primaryutil.DBPrimaryKeyCreate;
import com.hmh.ibatis.primaryutil.DbUtil;

@Service("userService")
public class UserService implements IUserService {

	@Resource
	private UserDao userDao;
	@Override
	public int addUser(User user) {
		return userDao.addUser(user);
	}
	
	@Override
	public List<User> selectUsers() {
		return userDao.selectUsers();
	}

	@Override
	public int updateUser(User user) {
		return userDao.updateUser(user);
	}

	@Override
	public int deleteUser(int id) {
		return userDao.deleteUser(id);
	}

	@Override
	public User getUser(int id) {
		return userDao.getUser(id);
	}

	@Override
	public int addTableUser(User user) {
		String userId = DBPrimaryKeyCreate.getUUID();
		String dataBase = DbUtil.GetDataBaseModValue(userId);
		String tableName = DbUtil.GetTableNameModValue(userId);
		System.out.println("插入用户在"+dataBase+"库，"+tableName+"表");
		DBContextHolder.setDBType(dataBase);
		Map<String, String> map = new HashMap<String, String>();  
        map.put("tablename", tableName);
        map.put("user_id", "'"+dataBase+tableName+userId+"'");
        map.put("state", "'"+user.getState()+"'");  
        map.put("nickname", "'"+user.getNickname()+"'");
		return userDao.addTableUser(map);
	}

	@Override
	public User getTableUser(String userId) {
		String dataBase = DbUtil.GetDataBaseModValue(userId);
		String tableName = DbUtil.GetTableNameModValue(userId);
		DBContextHolder.setDBType(dataBase);
		Map<String, String> map = new HashMap<String, String>();
		map.put("tablename", tableName);
	    map.put("user_id", userId);
		return userDao.getTableUser(map);
	}

}
