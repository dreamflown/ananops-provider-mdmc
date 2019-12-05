package com.ananops.provider.model.domain;

import com.ananops.provider.model.base.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.math.BigDecimal;
import java.util.Date;
import javax.persistence.*;

@EqualsAndHashCode(callSuper = true)
@Data
@Table(name = "mdmc_task_item")
public class MdmcTaskItem extends BaseEntity {
    /**
     * 任务ID
     */
    @Column(name = "task_id")
    private Long taskId;

    /**
     * 设备ID
     */
    @Column(name = "device_id")
    private Long deviceId;

    /**
     * 设备名称
     */
    @Column(name = "device_name")
    private String deviceName;

    /**
     * 完成维修的时间戳
     */
    @Column(name = "actual_finish_time")
    private Date actualFinishTime;

    /**
     * 开始维修的时间戳
     */
    @Column(name = "actual_start_time")
    private Date actualStartTime;

    /**
     * 故障描述
     */
    private String description;

    /**
     * 故障等级
     */
    private Integer level;

    /**
     * 故障设备位置，纬度
     */
    @Column(name = "device_latitude")
    private BigDecimal deviceLatitude;

    /**
     * 故障设备位置，经度
     */
    @Column(name = "device_longitude")
    private BigDecimal deviceLongitude;

    /**
     * 维修工ID
     */
    @Column(name = "maintainer_id")
    private Long maintainerId;

    /**
     * 当前维修状态
     */
    private Integer status;

    /**
     * 维修建议（维修工填写）
     */
    private String suggestion;

    /**
     * 维修结果（维修工填写）
     */
    private String result;

}