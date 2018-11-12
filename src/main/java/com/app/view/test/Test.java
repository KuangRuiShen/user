package com.app.view.test;

import java.util.Optional;

public class Test {

	public static void main(String[] args) {	
		String value = "ABCa";

		String name =  Optional.ofNullable(value).map(String::toUpperCase).orElse("NONE");
//		name.orElse("为空");
		System.out.println(name);
		
	}
	

}
