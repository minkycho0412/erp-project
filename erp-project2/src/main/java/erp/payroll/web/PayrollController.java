package erp.payroll.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class PayrollController {

	// 급여관리 인덱스
	@RequestMapping(value="/payroll-index.do")
	public String payrollIndex(HttpServletRequest request, ModelMap model) {
	      
		return "PAYROLL/payroll-index";
	      
	}
	
	// 급여 조회
	@RequestMapping(value="/payroll-inquiry.do")
	public String payrollInquiry(HttpServletRequest request, ModelMap model) {
	      
		return "PAYROLL/payroll-inquiry";
	      
	}

	// 지급 총액 상세
	@RequestMapping(value="/payroll-payment.do")
	public String Payment(HttpServletRequest request, ModelMap model) {
	      
		return "PAYROLL/payroll-payment";
	      
	}
	
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
	
	// 초과 근무 입력 삽입
	@RequestMapping(value="/payroll-overtime-registration-insert.do")
	public String OvertimeRegistrationInsert(HttpServletRequest request, ModelMap model) {
	      
		return "PAYROLL/payroll-overtime-registration-insert";
	      
	}
	
	// 사원별 기본급 입력
	@RequestMapping(value="/payroll-user-basepay-registration.do")
	public String userBasepayRegistration(HttpServletRequest request, ModelMap model) {
	      
		return "PAYROLL/payroll-user-basepay-registration";
	      
	}
	
	// 사원별 기본급 입력 업데이트
	@RequestMapping(value="/payroll-user-basepay-registration-update.do")
	public String userBasepayRegistrationUpdate(HttpServletRequest request, ModelMap model) {
	      
		return "PAYROLL/payroll-user-basepay-registration-update";
	      
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
	
	// 수당 비율 등록 성공
	@RequestMapping(value="/payroll-benefit-registration-insert.do")
	public String benefitRegistrationinsert(HttpServletRequest request, ModelMap model) {
	      
		return "PAYROLL/payroll-benefit-registration-insert";
	      
	}
	
	//부서 직급별 기본급 등록 성공
	@RequestMapping(value="/payroll-dp-basepay-registartion-insert.do")
	public String payrolldpbasepayregistartioninsert(HttpServletRequest request, ModelMap model) {
	      
		return "PAYROLL/payroll-dp-basepay-registartion-insert";
	      
	}
	
	
}
