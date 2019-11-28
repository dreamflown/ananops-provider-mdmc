package com.ananops.provider.model.base;

import lombok.Data;

import java.io.Serializable;

/**
 * Created by rongshuai on 2019/11/26 12:45
 */
@Data
public class LoginAuthDto implements Serializable {
    private static final long serialVersionUID = -9106947354573176084L;

    private Long userId;
    private String loginName;
    private String userName;
    private Long groupId;
    private String groupName;

    public LoginAuthDto(){

    }
    public LoginAuthDto(Long userId,String loginName,String userName){
        this.userId = userId;
        this.loginName = loginName;
        this.userName = userName;
    }

    public LoginAuthDto(Long userId, String loginName, String userName, Long groupId, String groupName) {
        this.userId = userId;
        this.loginName = loginName;
        this.userName = userName;
        this.groupId = groupId;
        this.groupName = groupName;
    }
}
