package com.spring.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class ClientVO {
	private int bno;
	private String userid;
	private String password;
	private String email;
	private String address;
	private String mobile;
}
