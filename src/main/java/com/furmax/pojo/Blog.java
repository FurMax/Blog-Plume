package com.furmax.pojo;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Blog {

    private int blogId;
    private String blogTitle;
    private String blogContent;
    private String blogTag;
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date createTime;
    private Date modifyTime;
    private String blogMaster;
    private String blogCover;
    private String blogDetailUrl;
    private String blogSummary;
}
