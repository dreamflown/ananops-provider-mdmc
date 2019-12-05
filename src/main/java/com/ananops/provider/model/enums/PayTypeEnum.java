package com.ananops.provider.model.enums;

public enum PayTypeEnum {

    XiJie(1),

    QiZhang(2),

    BaoNian(3);

    private Integer type;

    PayTypeEnum(Integer type){
        this.type = type;
    }

    public Integer getType(){
        return type;
    }
}
