package com.tjz.mapper;

import java.util.List;

import com.tjz.pojo.Menu;

public interface MenuMapper {
	public abstract List<Menu> selByPid(int pid);
}
