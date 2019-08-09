package global.sesoc.test9;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import global.sesoc.test9.vo.Carrer;
import lombok.extern.log4j.Log4j;

@RestController
@Log4j
public class Ajax2Controller {

	@RequestMapping("/hana")
	public String hana(String name, int age){
		log.info(name + ", " + age);
		return "OK";
	}
	
	@RequestMapping(value="/dool", method=RequestMethod.POST)
	public Carrer dool(Carrer carrer, int age){
		log.info(carrer.toString());
		log.info(age);
		
		return carrer;
	}
	
	@RequestMapping(value="/set", method=RequestMethod.POST)
	public String set(ArrayList<Carrer>carrer){
		log.info(carrer.toString());
		
		return "OK";
	}
}
