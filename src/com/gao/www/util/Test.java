package com.gao.www.util;

import java.sql.Connection;

public class Test {
	public static void main(String[] args) {
		Connection connection = DB.getConn();
		System.out.println("ok");
	}
}
