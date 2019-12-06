package com.ananops.provider.web.frontend;

import com.ananops.provider.model.dto.MdmcApproveInfoDto;
import com.ananops.provider.model.dto.MdmcOrderDto;
import com.ananops.provider.service.MdmcTaskService;
import com.ananops.provider.utils.WrapMapper;
import com.ananops.provider.utils.Wrapper;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * Created by zhs on 2019/12/5 13:57
 */
@RestController
@RequestMapping(value = "ananops/api/v1/task",produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
@Api(value = "WEB - MdmcAddDevice",produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
public class MdmcTaskHandler {
    @Resource
    MdmcTaskService taskService;

    @PostMapping(value = "/submit/{taskId}")
    @ApiOperation(httpMethod = "POST",value = "提交维修任务申请")
    public Wrapper<String> submit(@ApiParam(name = "submitTask",value = "提交维修任务申请") @RequestBody MdmcOrderDto order){
        try {
            String res = taskService.submitTask(order);
            if (!res.equals("success")) {
                return WrapMapper.error(res);
            }
        } catch (Exception e){
            return WrapMapper.error(e.getMessage());
        }
        return WrapMapper.ok("success");
    }

    @PostMapping(value = "/approve")
    @ApiOperation(httpMethod = "POST", value = "审核维修申请")
    public Wrapper<String> approve(@ApiParam(name = "approve task", value = "审核维修申请") @RequestBody MdmcApproveInfoDto data) {
        String res = "fail";
        try {
            if (data.getApproveResult().equals("pass")){
                res = taskService.leaderApprovePass(data);
            } else if (data.getApproveResult().equals("fail")) {
                res = taskService.leaderApproveFail(data);
            } else {
                return WrapMapper.illegalArgument();
            }

        } catch (Exception e) {
            return WrapMapper.error(e.getMessage());
        }
        return WrapMapper.ok(res);
    }

    @PostMapping(value = "/takeTask")
    @ApiOperation(httpMethod = "POST", value = "服务提供商接单")
    public Wrapper<String> takeOrder(@ApiParam(name = "taskId", value = "任务ID") @RequestParam Long taskId,
                                     @ApiParam(name = "facilitatorId", value = "服务提供商ID") @RequestParam Long facilitatorId,
                                     @ApiParam(name = "op", value = "操作") @RequestParam int operation) {
        String res = "fail";
        try {
            if (operation <= 1) {
                res = taskService.serviceProviderReceiveTask(taskId, facilitatorId,operation);
            } else {
                return WrapMapper.illegalArgument();
            }

        } catch (Exception e) {
            return WrapMapper.error(e.getMessage());
        }
        return WrapMapper.ok(res);
    }



}
