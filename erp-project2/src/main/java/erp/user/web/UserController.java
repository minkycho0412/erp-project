package erp.user.web;

import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class UserController {

	// 인사 조회
		@RequestMapping(value="/user-inquiry.do")
		public String userInquiry(HttpServletRequest request, ModelMap model) {
			
			return "USER/user-inquiry";
		}
		
		// 인사카드
		@RequestMapping(value="/user-personal-record.do")
		public String personalRecord(
				@RequestParam("uno")String uno,
				@RequestParam("uname")String uname,
				@RequestParam("dname")String dname,
				@RequestParam("pname")String pname,
				@RequestParam("joindate")String joindate,
				@RequestParam("email")String email,
				@RequestParam("birth")String birth,
				@RequestParam("Fbirthno")String Fbirthno,
				@RequestParam("Bbirthno")String Bbirthno,
				@RequestParam("addr")String addr,
				@RequestParam("deduct")String deduct,
				@RequestParam("bname")String bname,
				@RequestParam("bno")String bno,
				@RequestParam("bhold")String bhold,
				@RequestParam("info")String info,
				HttpServletRequest request, ModelMap model) {
			
			String bnopattern = "^[0-9]*$";
			
			boolean regex = Pattern.matches(bnopattern, bno);
			if(regex) {
				model.addAttribute("bno", bno);
			} else {
				model.addAttribute("bno", "잘못된 입력");
			}
			
			model.addAttribute("uno", uno);
			model.addAttribute("uname", uname);
			model.addAttribute("dname", dname);
			model.addAttribute("pname", pname);
			model.addAttribute("joindate", joindate);
			model.addAttribute("email", email);
			model.addAttribute("birth", birth);
			model.addAttribute("Fbirthno", Fbirthno);
			model.addAttribute("Bbirthno", Bbirthno);
			model.addAttribute("addr", addr);
			model.addAttribute("deduct", deduct);
			model.addAttribute("bname", bname);
			
			model.addAttribute("bhold", bhold);
			model.addAttribute("info", info);
			return "USER/user-personal-record";
		}
		
		// 사원 신규 등록
		@RequestMapping(value="/user-registration.do")
		public String registration(HttpServletRequest request, ModelMap model) {
			
			return "USER/user-registration";
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
		
		
		// 하위 부서 관리
		@RequestMapping(value="/user-sub-department.do")
		public String subDepartment(HttpServletRequest request, ModelMap model) {
	      
			return "USER/user-sub-department";
		}
	   
		// 하위 부서별 사원 명단
		@RequestMapping(value="/user-sub-department-list.do")
		public String subDepartmentList(HttpServletRequest request, ModelMap model) {
	      
			return "USER/user-sub-department-list";
		}

		
		// 직급 관리
		@RequestMapping(value="/user-position-registration.do")
		public String positionRegistration(HttpServletRequest request, ModelMap model) {
		      
			return "USER/user-position-registration";
		      
		}
		
}
