package erp.hrm.web;

import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class HrmController {

	// 로그인
	@RequestMapping(value="/login.do")
	public String login(HttpServletRequest request, ModelMap model) {
		
		return "HRM/login";
	}
	
	// 로그인 체크
	@RequestMapping(value="/login-check.do")
	public String loginCheck(HttpServletRequest request, ModelMap model) {
		
		return "HRM/login-check";
	}
	
	// 회원가입
	@RequestMapping(value="/signup.do")
	public String signup(HttpServletRequest request, ModelMap model) {
		
		return "HRM/signup";
	}
	
	// 회원가입 성공
	@RequestMapping(value="/signup-success.do")
	public String signupSuccess(HttpServletRequest request, ModelMap model) {
		
		return "HRM/signup-success";
	}
	
	// 메인 페이지
	@RequestMapping(value="/main-calendar.do")
	public String mainCalendar(HttpServletRequest request, ModelMap model) {
		
		return "HRM/main-calendar";
	}
	
	// 에러
		@RequestMapping(value="/error.do")
		public String error(HttpServletRequest request, ModelMap model) {
		      
			return "HRM/error";
		      
		}
}
