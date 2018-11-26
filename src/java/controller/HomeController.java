/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entities.Users;
import model.LoginModel;
import model.PosterModel;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {
    @RequestMapping(value="/trangchu")
    public String home(Model m){
        PosterModel model = new PosterModel();
        m.addAttribute("listPoster", model.getAll());
        
        return "trangchu";
    }
    //Đăng nhập:
    @RequestMapping(value="/dangnhap",method = RequestMethod.GET)
    public String dangnhap(ModelMap mm){
        return "dangnhap";
    }
    
    @RequestMapping(value="dangnhap", method = RequestMethod.POST)
    public String dangnhap (@ModelAttribute(value="login")Users u, ModelMap mm){
        LoginModel lm = new LoginModel();
        u=lm.login(u.getUsername(), u.getPassword());
        if(u!=null){
            return "admincp";
        }else{
            mm.addAttribute("error", "Tài khoản hoặc mật khẩu không đúng!");
            return "dangnhap";
        }
    }
}
