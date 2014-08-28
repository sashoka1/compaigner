package com.saInfosoft.compaigner.models;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.saInfosoft.compaigner.dao.GroupDao;
 
import com.saInfosoft.compaigner.daoImpl.MemberDaoImpl;
import com.saInfosoft.compaigner.entity.GroupAdd;
import com.saInfosoft.compaigner.entity.MemberAdd;

@Controller()
@RequestMapping(value = "/member")
public class MemberController {

    @Autowired
    MemberDaoImpl dao;
    
    @RequestMapping(method = RequestMethod.GET, value = "/addView")
    public ModelAndView loginAddView(ModelAndView model ) {
        List<GroupAdd> dlist = dao.dropDownFetch();
        model.setViewName("memberAddView");
        model.addObject("dlist", dlist);
        System.out.println(dlist);
        return model;
    }

    @RequestMapping(method = RequestMethod.POST, value = "/memberAdd")
    public String groupAdd(@ModelAttribute MemberAdd member ) {
        dao.save(member);
        return "groupAdd";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/view")
    public ModelAndView loginView(ModelAndView model ) {
        List<MemberAdd> list = dao.view();
        model.setViewName("memberView");
        model.addObject("list", list);
        return model;
    }

    @RequestMapping(method = RequestMethod.GET, value = "/deleteView")
    public ModelAndView loginDelete(ModelAndView model, GroupDao dao) {
        List<GroupAdd> list = dao.deleteView();
        model.setViewName("deleteView");
        model.addObject("list", list);
        return model;
    }

    @RequestMapping(method = RequestMethod.GET, value = "/groupDelete")
    public ModelAndView loginGroupDelete(ModelAndView model, HttpServletRequest request, GroupDao dao) {
        String[] sgroup = request.getParameterValues("check");
        List<GroupAdd> list;
        list = dao.delete(sgroup);
        model.setViewName("deleteView");
        model.addObject("list", list);
        return model;
    }

}
