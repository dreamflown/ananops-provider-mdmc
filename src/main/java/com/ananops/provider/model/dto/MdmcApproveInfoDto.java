package com.ananops.provider.model.dto;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.io.Serializable;

@ApiModel
@Data
public class MdmcApproveInfoDto implements Serializable {

    private static final long serialVersionUID = 4508112443137268677L;

    @ApiModelProperty("工单编号")
    private Long taskId;

    @ApiModelProperty("工单状态")
    private String status;

    @ApiModelProperty("申请人ID")
    private Long proposerId;

    @ApiModelProperty("申请人")
    private String proposer;

    @ApiModelProperty("审核人ID")
    private Long approverId;

    @ApiModelProperty("审核人")
    private String approver;

    @ApiModelProperty("审核结果")
    private String approveResult;

    @ApiModelProperty("审核意见")
    private String approveMsg;

}
