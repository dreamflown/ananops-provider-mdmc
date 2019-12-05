package com.ananops.provider.model.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigInteger;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class User {
    Long uId;

    String name;

    String phone;

    String company;

    public User getUserInfo(){
        return new User(1L,"张三", "18812345678", "BUPT");
    }
}
