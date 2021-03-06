package cn.ecust.ssei.service;

import java.util.Collection;
import java.util.List;

import cn.ecust.ssei.base.DaoSupport;
import cn.ecust.ssei.domain.Privilege;

public interface PrivilegeService extends DaoSupport<Privilege>{

	/**
	 * 查询所有顶级的权限
	 * 
	 * @return
	 */
	List<Privilege> findTopList();

	/**
	 * 查询所有权限对应的URL集合（不重复）
	 * @return
	 */
	Collection<String> getAllPrivilegeUrls();
}
