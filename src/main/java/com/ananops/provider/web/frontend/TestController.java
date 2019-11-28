package com.ananops.provider.web.frontend;

import com.ananops.provider.model.domain.MdmcDevice;
import com.ananops.provider.service.MdmcDeviceService;
import com.ananops.provider.utils.WrapMapper;
import com.ananops.provider.utils.Wrapper;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
/**
 * Created by rongshuai on 2019/11/26 11:50
 */
@RestController
@RequestMapping(value = "/maintenance",produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
@Api(value = "WEB - MdmcAddDevice",produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
public class TestController {

    @Resource
    MdmcDeviceService mdmcDeviceService;

    @PostMapping(value = "/hello")
    @ApiOperation(httpMethod = "POST",value = "插入一条设备记录")
    public Wrapper<String> SayHello(@RequestBody String Message){
        JsonObject jsonObject = (JsonObject)new JsonParser().parse(Message);
        String device_type =jsonObject.get("device_type").getAsString();
        MdmcDevice mdmcDevice = new MdmcDevice(device_type);
        System.out.println(device_type);
        System.out.println(mdmcDevice.toString());
        Integer result = mdmcDeviceService.insertRecord(mdmcDevice);
        return WrapMapper.ok(result.toString());
    }

//    @PostMapping(value = "/save")
//    @ApiOperation(httpMethod = "POST",value = "插入一条维修维护记录")
}
