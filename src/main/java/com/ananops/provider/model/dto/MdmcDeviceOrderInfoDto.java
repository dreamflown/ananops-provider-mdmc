package com.ananops.provider.model.dto;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

@Data
@ApiModel
public class MdmcDeviceOrderInfoDto implements Serializable {
    private static final long serialVersionUID = -7726506781855377985L;

    @ApiModelProperty("工单编号")
    private Long orderId;

    @ApiModelProperty("申请人")
    private String proposer;

    @ApiModelProperty("审核人")
    private String approver;

    @ApiModelProperty("申请时间")
    private Date createTIme;

    @ApiModelProperty("总费用")
    private Float totalCost;

    @ApiModelProperty("设备订单列表")
    private List<DeviceOrderDto> deviceOrderDtos;


    @Data
    @NoArgsConstructor
    public class DeviceOrderDto {
        private Long deviceOrderId;

        private String warehouse;

        private String item;

        private String status;

        private Float cost;

        private Integer count;
    }


}
