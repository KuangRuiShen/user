package com.app.view.service;

import java.util.List;

import com.app.view.pojo.Welcome;

public interface WelcomeService {

	List<Welcome> list();

	void add(Welcome w);

	void delete(List<String> ids);

	void update(Welcome w);

}
