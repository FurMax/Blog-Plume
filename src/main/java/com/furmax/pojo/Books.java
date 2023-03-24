package com.furmax.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import org.springframework.beans.factory.annotation.Autowired;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Books {
    public int bookId;
    public String bookName;
    public int bookCounts;
    public int bookSum;
    public String detail;
    public String ISBN;
}
