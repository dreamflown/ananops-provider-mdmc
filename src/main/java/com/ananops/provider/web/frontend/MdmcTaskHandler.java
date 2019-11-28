package com.ananops.provider.web.frontend;

import com.ananops.provider.model.domain.MdmcTask;
import com.ananops.provider.model.dto.MdmcCreateTaskDto;
import com.ananops.provider.service.MdmcTaskService;
import com.ananops.provider.utils.WrapMapper;
import com.ananops.provider.utils.Wrapper;
import com.google.gson.JsonObject;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.beans.BeanUtils;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

/**
 * Created by rongshuai on 2019/11/27 13:57
 */
@RestController
@RequestMapping(value = "/task",produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
@Api(value = "WEB - MdmcAddDevice",produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
public class MdmcTaskHandler {
    @Resource
    MdmcTaskService mdmcTaskService;

    @PostMapping(value = "/save")
    @ApiOperation(httpMethod = "POST",value = "新增一条维修申请任务记录")
    public Wrapper<String> saveTask(@ApiParam(name = "saveTask",value = "新增一条维修申请任务记录") @RequestBody MdmcCreateTaskDto mdmcCreateTaskDto){
        MdmcTask mdmcTask = new MdmcTask();
        BeanUtils.copyProperties(mdmcCreateTaskDto,mdmcTask);
        Integer result = mdmcTaskService.createTask(mdmcTask);
        return WrapMapper.ok(result.toString());
    }

}
