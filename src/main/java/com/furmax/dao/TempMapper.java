package com.furmax.dao;

import com.furmax.pojo.Books;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface TempMapper {
    List<Books> queryAllBooks();
    List<Books> queryBookByISBNAndBookName(Map map);
    int decreaseBooksStock(@Param("bookId") int bookId,@Param("bookCounts")int bookCounts);
    int increaseBooksStock(@Param("bookId") int bookId,@Param("bookCounts")int bookCounts);
    int insertBook(Books book);
    int updateBook(@Param("bookName") String bookName,@Param("ISBN") String ISBN,@Param("bookCounts") int bookCounts,@Param("bookSum") int bookSum);
    int deleteBook(@Param("bookId")int bookId);
}
