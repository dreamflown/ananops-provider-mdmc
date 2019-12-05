package com.ananops.provider.model.domain;

import com.ananops.provider.model.base.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Date;

@EqualsAndHashCode(callSuper = true)
@Data
@Table(name = "mdmc_device")
public class MdmcDevice extends BaseEntity {
    private static final long serialVersionUID = 8604444743573834036L;
    /**
     * 设备型号
     */
    @Column(name = "device_model")
    private String deviceModel;

    /**
     * 设备类型
     */
    @Column(name = "device_type")
    private String deviceType;

    /**
     * 剩余设备数
     */
    private Integer count;

    /**
     * 设备单价
     */
    private BigDecimal cost;

    /**
     * 设备生产厂商
     */
    private String manufacture;

    /**
     * 设备生产日期
     */
    @Column(name = "production_date")
    private Date productionDate;

    /**
     * 设备安装日期
     */
    @Column(name = "installation_date")
    private Date installationDate;

    public MdmcDevice(String deviceType){
        this.deviceType = deviceType;
    }

}