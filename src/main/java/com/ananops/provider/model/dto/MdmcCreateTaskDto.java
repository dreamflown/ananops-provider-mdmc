package com.ananops.provider.model.dto;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

/**
 * Created by rongshuai on 2019/11/27 14:08
 */
@Data
@ApiModel
public class MdmcCreateTaskDto implements Serializable {
    private static final long serialVersionUID = -4671892462942978241L;

    /**
     * 用户ID
     */
    @ApiModelProperty(value = "发起维修请求的用户ID")
    private Long userId;

    /**
     * 甲方负责人ID
     */
    @ApiModelProperty(value = "甲方负责人ID")
    private Long principalId;

    /**
     * 项目ID
     */
    @ApiModelProperty(value = "任务从属的项目ID")
    private Long projectId;

//    /**
//     * 服务商ID
//     */
//    @ApiModelProperty(value = "发起维修请求的用户ID")
//    private Long facilitatorId;

//    /**
//     * 维修工ID
//     */
//    private Long maintainerId;

//    /**
//     * 计划完成时间
//     */
//    private Date scheduledFinishTime;

//    /**
//     * 实际完成时间
//     */
//    private Date actualFinishTime;

//    /**
//     * 计划开始时间
//     */
//    private Date scheduledStartTime;

//    /**
//     * 实际开始时间
//     */
//    private Date actualStartTime;
//
//    /**
//     * 最迟结束时间
//     */
//    private Data deadline;

    /**
     * 发出请求的位置，纬度
     */
    @ApiModelProperty(value = "发出维修请求的位置，纬度")
    private BigDecimal requestLatitude;

    /**
     * 发出请求的位置，经度
     */
    @ApiModelProperty(value = "发出维修请求的位置，经度")
    private BigDecimal requestLongitude;

    /**
     * 当前任务状态
     */
    @ApiModelProperty(value = "当前任务的状态")
    private Integer status;

//    /**
//     * 当前任务总花费
//     */
//    private Double totalCost;

//    /**
//     * 结算方式
//     */
//    private Integer clearingForm;


}
