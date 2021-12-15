package cn.smbms.service.impl.book;

import cn.smbms.dao.BookDao;
import cn.smbms.pojo.Book;
import cn.smbms.service.BookService;
import com.github.pagehelper.PageHelper;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author： 吕二宁
 * @date： 2021-12-10 19:28
 */
@Service("bookService")
public class BookServiceImpl implements BookService {
    @Autowired
    @Qualifier("bookDao")
    private BookDao bookDao;

    @Override
    public List<Book> getBookList(Book book, Integer page, Integer size, String bookName, String bookAuthor, String interest) {
        PageHelper.startPage(page,size);
        List<Book> bookList = bookDao.getBookList(book, page, size, bookName, bookAuthor, interest);
        return bookList;
    }

    @Override
    public Book getBookById(Integer id) {
        Book book = bookDao.getBookById(id);
        return book;
    }

    @Override
    public void deleteBook(Integer[] ids) {
        if (ids != null && ids.length > 0){
            bookDao.deleteBook(ids);
        }
    }

    @Override
    public int addBook(Book book) {
        int i = bookDao.addBook(book);
        return i;
    }

    @Override
    public List<Book> getBookByType(Book book,@Param("interest") String interest) {
        List<Book> bookList = bookDao.getBookByType(book,interest);
        return bookList;
    }

    @Override
    public int updateBook(Book book) {
        int i = bookDao.updateBook(book);
        return i;
    }
}
