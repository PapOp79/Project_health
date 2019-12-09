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
	public int execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");	
		
<<<<<<< HEAD
		System.out.println("modifyid : " + request.getParameter("modifyId"));
		System.out.println("modifyPw : " + request.getParameter("modifyPw"));
		System.out.println("modifyName : " + request.getParameter("modifyName"));
		System.out.println("modifyEmail : " + request.getParameter("modifyEmail"));
=======
>>>>>>> branch 'master' of https://github.com/PapOp79/Project_health.git
		
		userDTO Udto = new userDTO();
<<<<<<< HEAD
		Udto.setUserId(request.getParameter("modifyId").trim());
		Udto.setUserPw(request.getParameter("modifyPw").trim());
		Udto.setUserName(request.getParameter("modifyName").trim());
		Udto.setUserEmail(request.getParameter("modifyEmail").trim());
		
		int rn = dao.userInfoModify(Udto);
		System.out.println("rn찍어보기"+rn);
		
=======
		Udto.setUserId(request.getParameter("modifyId"));
		Udto.setUserPw(request.getParameter("modifyPw"));
		Udto.setUserName(request.getParameter("modifyName"));
		Udto.setUserEmail(request.getParameter("modifyEmail"));
		
		System.out.println(Udto.getUserId());
		System.out.println(Udto.getUserPw());
		System.out.println(Udto.getUserName());
		System.out.println(Udto.getUserEmail());
		
		int rn =0;
		try {
			rn = dao.modifychk(Udto);
		} catch (Exception e) {
			e.printStackTrace();
		}	
		System.out.println(rn);
>>>>>>> branch 'master' of https://github.com/PapOp79/Project_health.git
		if(rn == 1) {
			userDTO user = dao.getMemberInfo(request.getParameter("modifyId").trim());
			HttpSession session = request.getSession();		
			session.setAttribute("user_name", user.getUserName());
			return 1;
		}
		return 0;	
	}
}