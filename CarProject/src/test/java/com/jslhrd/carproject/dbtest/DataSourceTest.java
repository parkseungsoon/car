package com.jslhrd.carproject.dbtest;


import java.sql.Connection;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;


@SpringBootTest
public class DataSourceTest {
	private static final Logger log = 
			LoggerFactory.getLogger(DataSourceTest.class); //테스트하는 클래스이름
	
	@Autowired
	//@Resource 위에거랑 같음
	private SqlSessionFactory sqlSessionFactory;
	
	@Test
	public void dbTest() {
		SqlSession session = sqlSessionFactory.openSession();
		Connection conn = session.getConnection();
		
		log.info("Session :"+ session);
		log.info("Connection :"+ conn);
	}
}
