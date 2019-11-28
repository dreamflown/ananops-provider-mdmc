package com.ananops.provider.model.domain;

import com.ananops.provider.model.base.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.persistence.*;
import java.util.Date;

@EqualsAndHashCode(callSuper = true)
@Data
@Table(name = "mdmc_task_log")
public class MdmcTaskLog extends BaseEntity {
    private static final long serialVersionUID = 4261430249471456829L;
    /**
     * 任务ID
     */
    @Column(name = "task_id")
    private Long taskId;

    /**
     * 当前操作对应的状态
     */
    private Integer status;

    /**
     * 当前操作的描述
     */
    private String movement;

    /**
     * 当前操作对应的时间戳
     */
    @Column(name = "status_timestamp")
    private Date statusTimestamp;

}