package com.ananops.provider.base;


import tk.mybatis.mapper.common.Mapper;
import tk.mybatis.mapper.common.MySqlMapper;

/**
 * Created by rongshuai on 2019/11/26 21:38
 */
public interface MyMapper<T> extends Mapper<T>, MySqlMapper<T> {
}
