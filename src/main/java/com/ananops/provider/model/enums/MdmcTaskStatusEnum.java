package com.ananops.provider.model.enums;

/**
 * Created by rongshuai on 2019/11/26 13:33
 */

public enum MdmcTaskStatusEnum {
    /**
     * 当前任务进度
     * 0.任务已取消
     * 1.任务
     * 2.服务商已接单，维修工未全部接单
     * 3.维修工已全部接单
     * 4.所有维修工维修方案确认完毕，维修方案审核中（服务商审核）
     * 5.服务商已经审核完维修方案
     * 6.维修方案甲方负责人审核中
     * 7.维修方案已被甲方负责人审核完毕
     * 8.维修中
     * 9.维修结束，尚未支付
     * 10.已支付，尚未评价
     * 11.已评价，次任务终结
     * 12.客户终止任务
     */

    /**
     * 服务商未接单
     */
    QvXiao(1,"已取消"),

    ShenQing(2, "维修申请"),

    ShenHeZhong(3, "审核中"),

    JieDan(4, "待接单"),

    ZhiXing(5, "待执行"),

    WeiXiu(6, "维修中"),

    QueRenFuWu(7, "待确认服务"),

    SPShenHeZhangDan(8, "待服务商审核账单"),

    LDShenHeZhangDan(9, "待负责人审核账单"),

    YanShou(10, "待验收"),

    PingJia(11, "待评价"),

    WanCheng(12, "已完成");

    private Integer type;

    private String status;

    MdmcTaskStatusEnum(Integer type, String status){
        this.type = type;
        this.status = status;
    }

    public String getStatus(){
        return status;
    }

    public Integer getType(){
        return type;
    }

    public static MdmcTaskStatusEnum getEnum(String type) {
        for (MdmcTaskStatusEnum ele : MdmcTaskStatusEnum.values()) {
            if (ele.getStatus().equals(type)) {
                return ele;
            }
        }
        return null;
    }
}
