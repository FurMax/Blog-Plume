package com.furmax.service;
//此Service只是应付javaee期中考


import com.furmax.pojo.Books;

import java.util.List;
import java.util.Map;

public interface TempService {
    List<Books> queryAllBooks();
    List<Books> queryBookByISBNAndBookName(Map map);
    int decreaseBooksStock(int bookId,int bookCounts);
    int increaseBooksStock(int bookId,int bookCounts);
    int updateBook(String bookName,String ISBN,int bookCounts,int bookSum);
    int deleteBook(int bookId);
}
