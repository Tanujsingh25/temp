package com.cg.ctrl;
import java.time.LocalDate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
@RequestMapping("myCtrl")
public class HelloController {
    @RequestMapping(value="/Hello")
    public ModelAndView showMessage() {
        LocalDate td = LocalDate.now();
        ModelAndView mdv = new ModelAndView("Login","toObj",td);
        return mdv;
        }
    }
