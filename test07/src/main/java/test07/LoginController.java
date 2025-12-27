package test07;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import jakarta.servlet.http.HttpSession; // Spring 6 必须用 jakarta

@Controller
public class LoginController {

    // 去登录页
    @RequestMapping("/login")
    public String toLogin() {
        return "login"; 
    }

    // 处理登录
    @RequestMapping("/doLogin")
    public String doLogin(User user, HttpSession session, Model model) {
        if ("admin".equals(user.getUsername()) && "123456".equals(user.getPassword())) {
            session.setAttribute("currentUser", user);
            return "success";
        } else {
            model.addAttribute("msg", "账号或密码错误！");
            return "fail";
        }
    }
    
    // 主页 (测试拦截器用)
    @RequestMapping("/main")
    public String mainPage() {
        return "main";
    }
}