package com.kosmo.veve.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminMainController {

	
	@RequestMapping("/Admin/Main.do")
	public String admin_Main() {
		//뷰정보 반환
		return "admin/AdminMain.adminTiles";
	}//////////admin_Main
	
	
	
	
	
}
