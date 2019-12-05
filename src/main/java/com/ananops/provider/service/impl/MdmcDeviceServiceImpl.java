package com.ananops.provider.service.impl;

import com.ananops.provider.mapper.MdmcDeviceMapper;
import com.ananops.provider.model.domain.MdmcDevice;
import com.ananops.provider.service.MdmcDeviceService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by rongshuai on 2019/11/26 21:43
 */
@Service
public class MdmcDeviceServiceImpl implements MdmcDeviceService {
    @Resource
    private MdmcDeviceMapper mdmcDeviceMapper;

    public Integer insertRecord(MdmcDevice mdmcDevice){
        return mdmcDeviceMapper.insert(mdmcDevice);
    }
}
