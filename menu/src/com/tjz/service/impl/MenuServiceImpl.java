package com.tjz.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.tjz.mapper.MenuMapper;
import com.tjz.pojo.Menu;
import com.tjz.service.MenuService;

@Service
public class MenuServiceImpl implements MenuService {

	@Resource
	private MenuMapper menuMapper;
	
	@Override
	public List<Menu> showMenu() {
		return menuMapper.selByPid(0);
	}

}
