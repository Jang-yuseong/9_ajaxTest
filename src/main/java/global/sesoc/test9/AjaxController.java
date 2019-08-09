package global.sesoc.test9;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import global.sesoc.test9.vo.Carrer;

@RestController //모든 클래스들을 ajax로 만들어준다
public class AjaxController {
	
	@RequestMapping("/ajaxone")
	public String ajaxone(){
		return "OK";
	}
	
	@RequestMapping("/ajaxtwo")
	public Carrer ajaxTwo(){
		Carrer carrer = new Carrer("(주)모모", "직원");
		return carrer;
	}
	
	@RequestMapping("/ajaxthree")
	public List<Carrer> ajaxThree(){
		List<Carrer>list = new ArrayList<>();
		list.add(new Carrer("(주)모모", "직원"));
		list.add(new Carrer("(주)태평양", "주임"));
		list.add(new Carrer("(주)대서양", "과장"));
		list.add(new Carrer("(주)낙천", "대리"));
		list.add(new Carrer("(주)임천당", "사장"));
		return list;
	}
	
	@RequestMapping("/ajaxfour")
	public Map<String, Carrer> ajaxFour(){
		Map<String, Carrer>map = new HashMap<String, Carrer>();
		map.put("one", new Carrer("(주)한라", "부장"));
		map.put("two", new Carrer("(주)백두", "이사"));
		return map;
	}
}

