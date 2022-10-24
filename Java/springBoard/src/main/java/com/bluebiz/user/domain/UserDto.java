package com.bluebiz.user.domain;

import org.springframework.stereotype.Repository;

@Repository
public class UserDto {
	private long unum;
	private String user_id;
	private String user_password;
	private String name;
	private int fjumin;
	private int ljumin;
	private String email;
	private char gender;
	private String addr;
	private int phone;
}
