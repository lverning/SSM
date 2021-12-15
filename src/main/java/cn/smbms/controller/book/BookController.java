package cn.smbms.controller.book;

import cn.smbms.pojo.Book;
import cn.smbms.service.BookService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

/**
 * @author： 吕二宁
 * @date： 2021-12-10 19:29
 */
@Controller
@RequestMapping("/book")
public class BookController {

    @Autowired
    @Qualifier("bookService")
    private BookService bookService;

    @RequestMapping("getBookList")
    public String getBookList() {
        return "book/login";
    }

    //page默认第1页  Size每页显示条数
    @RequestMapping("booklist")
    @ResponseBody
    public ModelAndView bookList(Book book,@RequestParam(defaultValue = "1") Integer page, @RequestParam(defaultValue = "5") Integer size,String bookName,String bookAuthor,String interest) {
        ModelAndView modelAndView = new ModelAndView();
        System.err.println(interest);
        List<Book> bookList = bookService.getBookList(book,page,size,bookName,bookAuthor,interest);
        PageInfo<Book> pageInfo = new PageInfo<>(bookList);
        modelAndView.addObject("pageInfo", pageInfo);
        modelAndView.setViewName("book/bookList");
        return modelAndView;
    }

    @RequestMapping("addbook.html")
    public String add() {
        return "book/add";
    }

    @RequestMapping("addbooks.html")
    public String addBook(String bookName, String bookAuthor, String bookType, String bookPrice, String bookDate, String bookDetails) throws ParseException {
        Book book = new Book();
        book.setBookName(bookName);
        book.setBookAuthor(bookAuthor);
        book.setBookType(Integer.valueOf(bookType));
        book.setBookPrice(Integer.valueOf(bookPrice));
        book.setBookDate(new SimpleDateFormat("yyyy-MM-dd").parse(bookDate));
        book.setBookDetails(bookDetails);
        int i = bookService.addBook(book);
        if (i != 0) {
            return "redirect:/book/booklist";
        } else {
            return "redirect:/book/addbook.html";
        }
    }

    //查看指定图书信息
    @RequestMapping("xinxi.html")
    public ModelAndView xinxi(Integer id) {
        ModelAndView modelAndView = new ModelAndView();
        Book book = bookService.getBookById(id);
        modelAndView.addObject("book", book);
        modelAndView.setViewName("book/xinxi");
        return modelAndView;
    }

    //根据id删除图书
    @RequestMapping("deleteBook.html")
    public String deleteBook(Integer[] ids) {
        bookService.deleteBook(ids);
        return "redirect:/book/booklist";
    }

    //查询指定类型图书
    @RequestMapping("getType.html")
    @ResponseBody
    public ModelAndView getBookByType(String interest) {
        List<Book> book = bookService.getBookByType(new Book(), interest);
        PageInfo<Book> pageInfo = new PageInfo<>(book);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("pageInfo", pageInfo);
        modelAndView.setViewName("book/bookList");
        return modelAndView;
    }

    //修改图书信息
    @RequestMapping("update.html")
    @ResponseBody
    public ModelAndView update(Integer id) {
        Book book = bookService.getBookById(id);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("book", book);
        modelAndView.setViewName("book/updateBook");
        return modelAndView;
    }

    //执行修改图书操作
    @RequestMapping("updateBook.html")
    public String updateBook(String bookName, String bookAuthor, String bookType, String bookPrice, String bookDate, String bookDetails, Integer id) throws ParseException {
        Book book = new Book();
        book.setBookName(bookName);
        book.setBookAuthor(bookAuthor);
        book.setBookType(Integer.valueOf(bookType));
        book.setBookPrice(Integer.valueOf(bookPrice));
        book.setBookDate(new SimpleDateFormat("yyyy-MM-dd").parse(bookDate));
        book.setBookDetails(bookDetails);
        book.setId(id);
        bookService.updateBook(book);
        return "redirect:/book/booklist";
    }
}
