package erp.attendance.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AttendanceController {

	// 근태관리 인덱스
	@RequestMapping(value="/attendance-index.do")
	public String attendanceIndex(HttpServletRequest request, ModelMap model) {
	      
		return "ATTENDANCE/attendance-index";
	      
	}
	
	// 근태(휴가) 조회
	@RequestMapping(value="/attendance-inquiry.do")
	public String attendanceInquiry(HttpServletRequest request, ModelMap model) {
	      
		return "ATTENDANCE/attendance-inquiry";
	      
	}
	
	// 근태(휴가) 등록
	@RequestMapping(value="/attendance-registration.do")
	public String attendanceRegistration(HttpServletRequest request, ModelMap model) {
	      
		return "ATTENDANCE/attendance-registration";
	      
	}
	
	// 근태 항목 등록
	@RequestMapping(value="/attendance-option-registration.do")
	public String optionRegistration(HttpServletRequest request, ModelMap model) {
	      
		return "ATTENDANCE/attendance-option-registration";
	      
	}
	
	// 근태 항목 등록 성공
	@RequestMapping(value="/attendance-option-registration-success.do")
	public String optionRegistrationSuccess(HttpServletRequest request, ModelMap model) {
	      
		return "ATTENDANCE/attendance-option-registration-success";
	      
	}
		
}
