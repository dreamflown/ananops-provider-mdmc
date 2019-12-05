package com.ananops.provider.model.dto;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.io.Serializable;

@Data
@ApiModel
public class MdmcTroubleInfoDto implements Serializable {

    private static final long serialVersionUID = 7760895967590597491L;

    @ApiModelProperty("工单编号")
    private Long orderId;

    @ApiModelProperty("报修人")
    private String caller;

    @ApiModelProperty("报修人电话")
    private String cellphone;

    @ApiModelProperty("故障等级")
    private String level;

    @ApiModelProperty("故障类别")
    private String category;

    @ApiModelProperty("故障描述")
    private String description;
}
