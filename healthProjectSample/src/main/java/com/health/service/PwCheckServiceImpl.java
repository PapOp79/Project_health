package com.health.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.health.dao.userDAO;

@Service
public class PwCheckServiceImpl implements LoginService{
	
	@Autowired
	private userDAO dao;
	
	@Override
	public int execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		System.out.println(request.getParameter("chkid"));
		System.out.println(request.getParameter("chkpw"));
		String id = request.getParameter("userId");
		String pwd = request.getParameter("userPw");
		String dbpw = dao.pwchk(id);
		
		
		
		if(dbpw!=null) {
			return 0;
		}
		if(pwd.equals(dbpw)) {
			return 1;
		} else {
			return -1;	
		}
	}
}