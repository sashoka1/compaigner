package com.saInfosoft.compaigner.models;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.saInfosoft.compaigner.daoImpl.GroupDaoImpl;
import com.saInfosoft.compaigner.entity.GroupAdd;

@Controller()
@RequestMapping(value = "/group")
public class GroupController {

    @Autowired
    GroupDaoImpl dao;

    @RequestMapping(method = RequestMethod.GET, value = "/addView")
    public ModelAndView addView(ModelAndView model) {
        model.setViewName("addView");
        return model;
    }

    @RequestMapping(method = RequestMethod.GET, value = "/deleteView")
    public ModelAndView deleteView(ModelAndView model) {
        List<GroupAdd> list = dao.deleteView();
        model.setViewName("deleteView");
        model.addObject("list", list);
        return model;
    }

    @RequestMapping(method = RequestMethod.POST, value = "/add")
    public String add(@ModelAttribute("group") GroupAdd group) {
        dao.save(group);
        return "groupAdd";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/view")
    public ModelAndView view(ModelAndView model) {
        List<GroupAdd> list = dao.view();
        model.setViewName("groupView");
        model.addObject("groupLlist", list);
        return model;
    }

    @RequestMapping(method = RequestMethod.GET, value = "/delete")
    public ModelAndView delete(@RequestParam String[] check, ModelAndView model) {
        List<GroupAdd> list = dao.delete(check);
        model.setViewName("deleteView");
        model.addObject("list", list);
        return model;
    }
}
