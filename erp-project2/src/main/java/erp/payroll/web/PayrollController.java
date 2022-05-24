package erp.payroll.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PayrollController {


	// 공제 총액 상세
	@RequestMapping(value="/payroll-deduction.do")
	public String Deduction(HttpServletRequest request, ModelMap model) {
	      
		return "PAYROLL/payroll-deduction";
	      
	}
	
	// 초과 근무 조회
	@RequestMapping(value="/payroll-overtime-inquiry.do")
	public String OvertimeInquiry(HttpServletRequest request, ModelMap model) {
	      
		return "PAYROLL/payroll-overtime-inquiry";
	      
	}
	
	// 초과 근무 입력
	@RequestMapping(value="/payroll-overtime-registration.do")
	public String OvertimeRegistration(HttpServletRequest request, ModelMap model) {
	      
		return "PAYROLL/payroll-overtime-registration";
	      
	}
	
	// 사원별 기본급 입력
	@RequestMapping(value="/payroll-user-basepay-registration.do")
	public String userBasepayRegistration(HttpServletRequest request, ModelMap model) {
	      
		return "PAYROLL/payroll-user-basepay-registration";
	      
	}
	
	// 부서/직급별 기본급 입력
	@RequestMapping(value="/payroll-dp-basepay-registration.do")
	public String dpBasepayRegistration(HttpServletRequest request, ModelMap model) {
	      
		return "PAYROLL/payroll-dp-basepay-registration";
	      
	}
	
	// 수당 비율 등록
	@RequestMapping(value="/payroll-benefit-registration.do")
	public String benefitRegistration(HttpServletRequest request, ModelMap model) {
	      
		return "PAYROLL/payroll-benefit-registration";
	      
	}
	
	
}