package com.furmax.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Article {
    private Long articleId;
    private String articleTitle;
    private Date createTime;
    private Date modifyTime;
    private String articleCreator;
    private String articleContent;
    private String subareaName;
    private Long subareaId;
    private String articleRight;
    private int commentsNum;
    private int likesNum;
    private String articleSummary;

}
