package kr.green.portpolio.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import kr.green.portpolio.vo.UserVo;

public class LoginInterceptor extends HandlerInterceptorAdapter{
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
		// 컨트롤러에서 넘겨준 정보를 가져옴
		// 컨트롤러에서 mv.addObject("user",xx)으로 데이터를 보냈다면
		// modelMap.get("user")를 통해 해당 데이터를 가져올 수 있음
	    ModelMap modelMap = modelAndView.getModelMap();
	    UserVo user = (UserVo)modelMap.get("user");
	    System.out.println("인터셉트한 정보 : " + user);
	    // user에 정보가 있으면 해당 정보를 세션에 저장
	    if(user != null) {
	        HttpSession session = request.getSession();
	        session.setAttribute("user", user);	// 해당 세션에 user라는 이름으로 데이터 저장(추가)
	    }
	}
}
