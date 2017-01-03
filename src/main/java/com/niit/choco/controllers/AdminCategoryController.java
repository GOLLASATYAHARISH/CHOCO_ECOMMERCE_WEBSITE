 package com.niit.choco.controllers;

 

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.niit.choco.dao.impl.InsertDao;
import com.niit.choco.model.Category;

@Controller
public class AdminCategoryController {

	@Autowired
	private InsertDao categoryDAOImpl;

	@RequestMapping(value="/categorygson")
	@ResponseBody
	public String CategoryGson()
	{
		String  list=categoryDAOImpl.list();
		
		return list;
	}

	@RequestMapping(value = { "category"})
	public ModelAndView CategoryPage(Model model) {
		model.addAttribute("category", new Category());
		model.addAttribute("categoryList", categoryDAOImpl.list());
		model.addAttribute("CategoryPageClicked", "true");
		
		String list=categoryDAOImpl.list();
		
		 
		return new ModelAndView("AdminCategory","data",list);
	}
	@RequestMapping(value = { "addcategory", "editcategory/addcategory" }, method = RequestMethod.POST)
	public String addCategory(@ModelAttribute("category") Category category) {
		categoryDAOImpl.saveOrUpdate(category);
		return "redirect:/category";
	}
	@RequestMapping("editcategory/{id}")
	public String editCategory(@PathVariable("id") String id, Model model) {
		System.out.println("editCategory");
		model.addAttribute("category", this.categoryDAOImpl.get(id));
		model.addAttribute("categoryList", categoryDAOImpl.list());
		model.addAttribute("CategoryPageClicked", "true");
		model.addAttribute("EditCategory", "true");
		return "redirect:/category";
	}
	@RequestMapping(value = { "removecategory/{id}", "editcategory/removecategory/{id}" })
	public String removeCategory(@PathVariable("id") String id, Model model) throws Exception {
		categoryDAOImpl.delete(id);
		model.addAttribute("message", "Successfully Deleted");
		return "redirect:/category";
	}
}
