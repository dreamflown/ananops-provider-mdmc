package com.ananops.provider.model.domain;

import com.ananops.provider.model.base.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.math.BigDecimal;
import java.util.Date;
import javax.persistence.*;

@EqualsAndHashCode(callSuper = true)
@Data
@Table(name = "mdmc_task")
public class MdmcTask extends BaseEntity {
    /**
     * 发起此次维修请求的用户ID
     */
    @Column(name = "user_id")
    private Long userId;

    /**
     * 任务名称
     */
    @Column(name = "title")
    private String title;

    /**
     * 用户负责人（领导）ID
     */
    @Column(name = "principal_id")
    private Long principalId;

    /**
     * 任务对应的项目ID
     */
    @Column(name = "project_id")
    private Long projectId;

    /**
     * 服务商ID
     */
    @Column(name = "facilitator_id")
    private Long facilitatorId;

    /**
     * 维修工ID
     */
    @Column(name = "maintainer_id")
    private Long maintainerId;

    /**
     * 预计完成时间
     */
    @Column(name = "scheduled_finish_time")
    private Date scheduledFinishTime;

    /**
     * 实际完成时间
     */
    @Column(name = "actual_finish_time")
    private Date actualFinishTime;

    /**
     * 预计开始时间
     */
    @Column(name = "scheduled_start_time")
    private Date scheduledStartTime;

    /**
     * 实际开始时间
     */
    @Column(name = "actual_start_time")
    private Date actualStartTime;

    /**
     * 最迟完成时间
     */
    private Date deadline;

    /**
     * 请求维修的地点，纬度
     */
    @Column(name = "request_latitude")
    private BigDecimal requestLatitude;

    /**
     * 请求维修的地点，经度
     */
    @Column(name = "request_longitude")
    private BigDecimal requestLongitude;

    /**
     * 当前任务的进度状态
     */
    private Integer status;

    /**
     * 维修总花费
     */
    @Column(name = "total_cost")
    private BigDecimal totalCost;

    /**
     * 结算方式
     */
    @Column(name = "clearing_form")
    private Integer clearingForm;

}