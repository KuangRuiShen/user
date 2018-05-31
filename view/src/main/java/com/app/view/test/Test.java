package com.app.view.test;

import java.io.File;

public class Test {

	public static void main(String[] args) {
		File f = new File("E:\\file\\upload\\img\\20180531210815.jpg");
		System.out.println(f.delete());
	}

}
