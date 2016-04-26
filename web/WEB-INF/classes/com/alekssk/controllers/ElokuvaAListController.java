package com.alekssk.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alekssk.domain.ElokuvaA;

@Controller
public class ElokuvaAListController {
	private List<ElokuvaA> elokuvaAList = new ArrayList<ElokuvaA>(); 
	
	@RequestMapping(value="/LisaaArvostelu.htm",method=RequestMethod.GET)
	public String showForm(){
		return "LisaaArvostelu";
	}
	
	@RequestMapping(value="/LisaaArvostelu.htm",method=RequestMethod.POST)
	public @ResponseBody String lisaaArvostelu(@ModelAttribute(value="elokuvaA") ElokuvaA elokuvaA, BindingResult result ){
		String returnText;
		if(!result.hasErrors()){
			elokuvaAList.add(elokuvaA);
			returnText = "Elokuva-arvostelut lisätty, elokuva-arvosteluita yhteensä: " + elokuvaAList.size();
		}else{
			returnText = "Virhe tapahtui, arvostelua ei lisätty.";
		}
		return returnText;
	}

	@RequestMapping(value="/NaytaArvostelut.htm")
	public String naytaArvostelut(ModelMap model){
		model.addAttribute("Elokuvat", elokuvaAList);
		return "NaytaArvostelut";
	}
}
