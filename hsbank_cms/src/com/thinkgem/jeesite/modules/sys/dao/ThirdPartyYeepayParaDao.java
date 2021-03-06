/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.sys.dao;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.entity.ThirdPartyYeepayPara;

/**
 * 托管账号参数DAO接口
 * @author yangtao
 * @version 2015-08-03
 */
@MyBatisDao
public interface ThirdPartyYeepayParaDao extends CrudDao<ThirdPartyYeepayPara> {
	
}