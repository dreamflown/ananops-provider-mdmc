package com.ananops.provider.service.impl;

import com.ananops.provider.mapper.MdmcTaskMapper;
import com.ananops.provider.model.domain.MdmcTask;
import com.ananops.provider.service.MdmcDeviceService;
import com.ananops.provider.service.MdmcTaskService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by rongshuai on 2019/11/27 13:58
 */
@Service
public class MdmcTaskServiceImpl implements MdmcTaskService {
    @Resource
    private MdmcTaskMapper mdmcTaskMapper;

    public Integer createTask(MdmcTask mdmcTask){
        return mdmcTaskMapper.insert(mdmcTask);
    }
}
