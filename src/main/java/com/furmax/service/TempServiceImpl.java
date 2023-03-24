package com.furmax.service;

import com.furmax.dao.TempMapper;
import com.furmax.pojo.Books;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import java.util.List;
import java.util.Map;

public class TempServiceImpl implements TempService{

    private TempMapper tempMapper;
    public void setTempMapper(TempMapper tempMapper) {
        this.tempMapper=tempMapper;
    }
    @Override
    public List<Books> queryAllBooks() {
        return tempMapper.queryAllBooks();
    }

    @Override
    public List<Books> queryBookByISBNAndBookName(Map map) {
        return tempMapper.queryBookByISBNAndBookName(map);
    }

    @Override
    public int decreaseBooksStock(int bookId, int bookCounts) {
        bookCounts = bookCounts - 1;
        return tempMapper.decreaseBooksStock(bookId, bookCounts);
    }

    @Override
    public int increaseBooksStock(int bookId, int bookCounts) {
        bookCounts = bookCounts + 1;
        return tempMapper.increaseBooksStock(bookId, bookCounts);
    }

    @Override
    public int updateBook(String bookName,String ISBN,int bookCounts,int bookSum) {
        return tempMapper.updateBook(bookName,ISBN,bookCounts,bookSum);
    }

    @Override
    public int deleteBook(int bookId) {
        return tempMapper.deleteBook(bookId);
    }
}
