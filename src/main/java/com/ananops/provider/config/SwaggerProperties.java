package com.ananops.provider.config;

import lombok.Data;

/**
 * Created by rongshuai on 2019/11/27 12:14
 */
@Data
public class SwaggerProperties {
    private String title;

    private String description;

    private String version = "1.0";

    private String license = "Apache License 2.0";

    private String licenseUrl = "http://www.apache.org/licenses/LICENSE-2.0";

    private String contactName = "荣帅";

    private String contactUrl = "http://paascloud.net";

    private String contactEmail = "paascloud.net@gmail.com";
}
