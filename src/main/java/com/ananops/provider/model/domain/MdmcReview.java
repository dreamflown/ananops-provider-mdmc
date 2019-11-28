package com.ananops.provider.model.domain;

import com.ananops.provider.model.base.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.persistence.*;
import java.util.Date;

@EqualsAndHashCode(callSuper = true)
@Data
@Table(name = "mdmc_review")
public class MdmcReview extends BaseEntity {
    private static final long serialVersionUID = -450561133491555572L;
    /**
     * 任务ID
     */
    @Column(name = "task_id")
    private Long taskId;

    /**
     * 服务商ID
     */
    @Column(name = "facilitator_id")
    private Long facilitatorId;

    /**
     * 维修工程师ID
     */
    @Column(name = "maintainer_id")
    private Long maintainerId;

    /**
     * 申请维修维护的用户的ID
     */
    @Column(name = "user_id")
    private Long userId;

    /**
     * 服务评级
     */
    private Integer score;

    /**
     * 服务评论
     */
    private String contents;
}