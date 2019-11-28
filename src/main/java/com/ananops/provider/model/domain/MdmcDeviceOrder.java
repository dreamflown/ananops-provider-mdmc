package com.ananops.provider.model.domain;

import com.ananops.provider.model.base.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Date;

@EqualsAndHashCode(callSuper = true)
@Data
@Table(name = "mdmc_device_order")
public class MdmcDeviceOrder extends BaseEntity {
    private static final long serialVersionUID = 5974877933815704041L;
    /**
     * 对应的任务ID
     */
    @Column(name = "task_id")
    private Long taskId;

    /**
     * 对应的任务子项ID
     */
    @Column(name = "task_item_id")
    private Long taskItemId;

    /**
     * 对应的维修工ID
     */
    @Column(name = "maintainer_id")
    private Long maintainerId;

    /**
     * 设备ID
     */
    @Column(name = "device_id")
    private Long deviceId;

    /**
     * 当前订单的花费
     */
    private BigDecimal cost;

}