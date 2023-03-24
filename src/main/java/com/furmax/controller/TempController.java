package com.furmax.controller;

import com.furmax.pojo.Books;
import com.furmax.service.TempService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RequestMapping("/temp")
@Controller
public class TempController {
    @Autowired
    @Qualifier("TempServiceImpl")
    TempService tempService;

    @RequestMapping("/toFileDemoPage1")
    public String toFileDemo1(){
        return "fileDemo1";
    }

    @RequestMapping("/toBMSAdmin")
    public String toBmsManagerUIPage(){
        return "bmsAdminPage";
    }

    @RequestMapping("/toBookManagerUI")
    public String toBookManagerUI(){
        return "booksManagerUI";
    }
    @RequestMapping("/queryAll")
    public String queryAllBooks(Model model){
        List<Books> books = tempService.queryAllBooks();
        model.addAttribute("bookList",books);
        return "booksManagerUI";
    }

    @RequestMapping(value = "/queryBookByISBNAndBookName",method = RequestMethod.POST)
    public String queryBookByISBNAndBookName(@RequestParam String ISBN, @RequestParam String bookName, Model model)throws NullPointerException{
        System.out.println(ISBN);
        System.out.println(bookName);
        List<Books> books;
        Map map = new HashMap();
        if (bookName!=""){
            map.put("bookName",bookName);
        }
        if (ISBN!=""){
            map.put("ISBN",ISBN);
        }

        List<Books> bookList = tempService.queryBookByISBNAndBookName(map);
        model.addAttribute("bookList",bookList);
        return "booksManagerUI";


//        if (ISBN.equals("") && bookName.equals("")){
//            books = tempService.queryAllBooks();
//            model.addAttribute("bookList",books);
//            return "booksManagerUI";
//
//
//        }
//        else {
//            books = tempService.queryBookByISBNAndBookName(ISBN, bookName);
//            System.out.println(books.toString());
//            model.addAttribute("bookList",books);
//            return "booksManagerUI";
//
//
//        }

    }
//   库存+1
    @RequestMapping(value = "/decreaseBooksStock",method = RequestMethod.GET)
    public String decreaseBooksStock(int bookId,int bookCounts,Model model){
        int changeLines = tempService.decreaseBooksStock(bookId, bookCounts);
        System.out.println(changeLines);
        return "booksManagerUI";
    }
//  库存-1 ajax返回后要刷新页面。
    @RequestMapping(value = "/increaseBooksStock",method = RequestMethod.GET)
    public String increaseBooksStock(int bookId,int bookCounts,Model model){
        int changeLines = tempService.increaseBooksStock(bookId, bookCounts);
        System.out.println(changeLines);
        return "booksManagerUI";
    }

    @RequestMapping("toUpdateBookPage")
    public String toUpdateBookPage(){
        return "updateBook1";
    }
    @RequestMapping(value = "/updateBook",method = RequestMethod.GET)
    public String updateBook(String bookName,String ISBN,int bookCounts,int bookSum){
        System.out.println(bookCounts);
        tempService.updateBook(bookName,ISBN,bookCounts,bookSum);
        return "booksManagerUI";
    }

    @RequestMapping(value = "/deleteBook",method = RequestMethod.GET)
    public String deleteBook(int bookId){
        tempService.deleteBook(bookId);
        return "booksManagerUI";
    }



}
