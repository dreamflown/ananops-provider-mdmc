package com.ananops.provider.model.dto;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

@ApiModel
@Data
public class MdmcOrderOperationDto implements Serializable {

    private static final long serialVersionUID = 3338605941294408119L;

    /**
     * 工单id
     */
    @ApiModelProperty("维修工单")
    private Long orderId;

    /**
     * 操作人
     */
    @ApiModelProperty("最近操作人名称")
    private String operator;

    /**
     * 操作类型
     */
    @ApiModelProperty("操作类型")
    private String operationType;

    /**
     * 操作信息
     */
    @ApiModelProperty("操作结果")
    private String operationMsg;

    /**
     * 更新时间
     */
    @ApiModelProperty("最近更新时间")
    private Date updateTime;


}
