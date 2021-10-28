package co.micol.mybatis.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.mybatis.comm.Command;

public class HomeCommand implements Command {

	public String run(HttpServletRequest request, HttpServletResponse response) {
		//홈페이지를 돌려준다
		return "home/home";	
	}

}
