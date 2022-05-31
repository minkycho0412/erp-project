package erp.user.web;

import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class UserController {
	
	// 인사 인덱스 
	@RequestMapping(value="/user-index.do")
	public String userIndex(HttpServletRequest request, ModelMap model) {
		
		return "USER/user-index";
	}

	// 인사 조회
	@RequestMapping(value="/user-inquiry.do")
	public String userInquiry(HttpServletRequest request, ModelMap model) {
		
		return "USER/user-inquiry";
	}
	
	// 인사카드
	@RequestMapping(value="/user-personal-record.do")
	public String personalRecord(HttpServletRequest request, ModelMap model) {
		
		return "USER/user-personal-record";
	}
		
		
//	// 인사카드
//	@RequestMapping(value="/user-personal-record.do")
//	public String personalRecord(
//			@RequestParam("uno")String uno,
//			@RequestParam("uname")String uname,
//			@RequestParam("dname")String dname,
//			@RequestParam("pname")String pname,
//			@RequestParam("joindate")String joindate,
//			@RequestParam("email")String email,
//			@RequestParam("birth")String birth,
//			@RequestParam("Fbirthno")String Fbirthno,
//			@RequestParam("Bbirthno")String Bbirthno,
//			@RequestParam("addr")String addr,
//			@RequestParam("deduct")String deduct,
//			@RequestParam("bname")String bname,
//			@RequestParam("bno")String bno,
//			@RequestParam("bhold")String bhold,
//			@RequestParam("info")String info,
//			HttpServletRequest request, ModelMap model) {
//		
//		String bnopattern = "^[0-9]*$";
//		
//		boolean regex = Pattern.matches(bnopattern, bno);
//		if(regex) {
//			model.addAttribute("bno", bno);
//		} else {
//			model.addAttribute("bno", "잘못된 입력");
//		}
//		
//		model.addAttribute("uno", uno);
//		model.addAttribute("uname", uname);
//		model.addAttribute("dname", dname);
//		model.addAttribute("pname", pname);
//		model.addAttribute("joindate", joindate);
//		model.addAttribute("email", email);
//		model.addAttribute("birth", birth);
//		model.addAttribute("Fbirthno", Fbirthno);
//		model.addAttribute("Bbirthno", Bbirthno);
//		model.addAttribute("addr", addr);
//		model.addAttribute("deduct", deduct);
//		model.addAttribute("bname", bname);
//		
//		model.addAttribute("bhold", bhold);
//		model.addAttribute("info", info);
//		return "USER/user-personal-record";
//	}
	
	// 사원 신규 등록
	@RequestMapping(value="/user-registration.do")
	public String registration(HttpServletRequest request, ModelMap model) {
		
		return "USER/user-registration";
	}
	
	// 사원 신규 등록 성공
	@RequestMapping(value="/user-registration-success.do")
	public String registrationSuccess(HttpServletRequest request, ModelMap model) {
		
		return "USER/user-registration-success";
	}
	
	// 인사 발령 조회
	@RequestMapping(value="/user-PA-inquiry.do")
	public String PAinquiry(HttpServletRequest request, ModelMap model) {
		
		return "USER/user-PA-inquiry";
	}
	
	// 인사 발령 등록
	@RequestMapping(value="/user-PA-registration.do")
	public String PAregistration(HttpServletRequest request, ModelMap model) {
	      
		return "USER/user-PA-registration";
	      
	}
	
	
	// 인사 발령 등록 성공
	@RequestMapping(value="/user-PA-registration-success.do")
	public String PAregistrationSuccess(HttpServletRequest request, ModelMap model) {
	      
		return "USER/user-PA-registration-success";
	}
	
	// 부서 관리
	@RequestMapping(value="/user-department.do")
	public String department(HttpServletRequest request, ModelMap model) {
	      
		return "USER/user-department";
	}
	
	// 부서 관리
	@RequestMapping(value="/user-department-information.do")
	public String departmentInformation(HttpServletRequest request, ModelMap model) {
	      
		return "USER/user-department-information";
	}
	
	// 부서 등록
	@RequestMapping(value="/user-department-insert.do")
	public String departmentInsert(HttpServletRequest request, ModelMap model) {
	      
		return "USER/user-department-insert";
	}
	
	// 부서 삭제
	@RequestMapping(value="/user-department-delete.do")
	public String departmentDelete(HttpServletRequest request, ModelMap model) {
	      
		return "USER/user-department-delete";
	}
	
	// 직급 관리
	@RequestMapping(value="/user-position.do")
	public String position(HttpServletRequest request, ModelMap model) {
	      
		return "USER/user-position";
	      
	}
	
	// 직급 등록
	@RequestMapping(value="/user-position-insert.do")
	public String positionInsert(HttpServletRequest request, ModelMap model) {
	      
		return "USER/user-position-insert";
	      
	}
	
	// 직급 삭제
	@RequestMapping(value="/user-position-delete.do")
	public String positionDelete(HttpServletRequest request, ModelMap model) {
	      
		return "USER/user-position-delete";
	      
	}
		
}
