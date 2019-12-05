package com.ananops.provider.model.dto;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

@Data
@ApiModel
public class MdmcProcessInfoDto implements Serializable {

    private static final long serialVersionUID = 3322591819506877191L;

    @ApiModelProperty("工单编号")
    private Long orderId;

    @ApiModelProperty("开始时间")
    private Date startTime;

    @ApiModelProperty("结束时间")
    private Date endTime;

    @ApiModelProperty("维修费用")
    private Float cost;

    @ApiModelProperty("维修状态")
    private String status;

    @ApiModelProperty("设备部位")
    private String position;

    @ApiModelProperty("维修班组")
    private String group;

    @ApiModelProperty("故障原因")
    private String cause;

    @ApiModelProperty("紧急程度")
    private String level;

    @ApiModelProperty("故障类别")
    private String category;

    @ApiModelProperty("维修报告")
    private String report;


}
