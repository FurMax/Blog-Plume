package com.furmax.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.*;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ArticleComment {
    private String userId;
    private Date createTime;
    private String content;
    private int articleId;
    private int commentId;
    private int supId;

    private List<ArticleComment> replayComments = new ArrayList<ArticleComment>();
}
