package com.restaurentmanagement.handlers;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;

public class CustomSuccessHandler implements AuthenticationSuccessHandler {
    private RedirectStrategy redirectStrategy=new DefaultRedirectStrategy();
    @Override
    public void onAuthenticationSuccess(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Authentication authentication) throws IOException, ServletException {
        System.out.println("**************");
        System.out.println(authentication.getCredentials()+" "+authentication.getPrincipal().getClass());
        System.out.println(authentication.getDetails());
        System.out.println(authentication.getAuthorities()+"********** ");;


       /* Calendar calendar = Calendar.getInstance();
        Date legacyCurrentDate = calendar.getTime();


        httpServletRequest.getSession().setAttribute("loginTime", legacyCurrentDate);
*/
        UserDetails userDetails = (UserDetails) authentication.getPrincipal();
/*

        // Access the HttpSession
        HttpSession session = httpServletRequest.getSession();




        // Store user details in the session
        session.setAttribute("userDetails", userDetails);
*/


        System.out.println(userDetails+" **********");



        if(authentication.isAuthenticated()){
            System.out.println("&&&&&&&");
            Collection<? extends GrantedAuthority> authorities=authentication.getAuthorities();
            for(GrantedAuthority grantedAuthority:authorities){
                String authority=grantedAuthority.getAuthority();
                if(authority.equals("ROLE_ADMIN")){
                    redirectStrategy.sendRedirect(httpServletRequest,httpServletResponse,"/home/HotelAndItems");
                }else {
                    redirectStrategy.sendRedirect(httpServletRequest,httpServletResponse,"/categories/getCategories");
                }
            }
        }
    }


   /* private static final long serialVersionUID = 1L;

    private final String loginTime;

    public CustomSuccessHandler(HttpServletRequest request) {
        super(request);
        this.loginTime = LocalDateTime.now().toString();
    }

    public String getLoginTime() {
        return loginTime;
    }
*/
}
