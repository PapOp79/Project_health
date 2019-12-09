package com.health.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.health.dao.userDAO;
import com.health.dto.userDTO;

@Service
public class modifyCheckServiceImpl implements LoginService {

	@Autowired
	private userDAO dao;
	
	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");	
		
		System.out.println("modifyid : " + request.getParameter("modifyId"));
		System.out.println("modifyPw : " + request.getParameter("modifyPw"));
		System.out.println("modifyName : " + request.getParameter("modifyName"));
		System.out.println("modifyEmail : " + request.getParameter("modifyEmail"));
		userDTO Udto = new userDTO();
		Udto.setUserId(request.getParameter("modifyId"));
		Udto.setUserPw(request.getParameter("modifyPw"));
		Udto.setUserName(request.getParameter("modifyName"));
		Udto.setUserEmail(request.getParameter("modifyEmail"));
		int rn =0;
		try {
			rn = dao.modifychk(Udto);
		} catch (Exception e) {
			e.printStackTrace();
		}	
		
		if(rn == 1) {
			userDTO user = dao.getMemberInfo(request.getParameter("userId"));
			HttpSession session = request.getSession();		
			session.setAttribute("user_name", user.getUserName());
		}
		
	}

}
