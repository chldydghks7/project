package group.riding.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.aop.ThrowsAdvice;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;


public class LoginInterceptor extends HandlerInterceptorAdapter {
	private static final String LOGIN = "login";
	
		@Override
		public void postHandle(HttpServletRequest request, 
				HttpServletResponse response, Object handler, 
				ModelAndView modelAndView) throws Exception {
			HttpSession session = request.getSession();
			ModelMap modelMap = modelAndView.getModelMap();
			Object userBean = modelMap.get("userBean");
			
			if(userBean != null) {
				session.setAttribute(LOGIN, userBean);
				response.sendRedirect("/");
			}
		}
			
		
		@Override
		public boolean preHandle(HttpServletRequest request, 
				HttpServletResponse response, Object handler) throws Exception {
			
			HttpSession session = request.getSession();
			
			if(session.getAttribute(LOGIN) != null) {
				session.removeAttribute(LOGIN);
			}
			return true;
		}
		
	
}
