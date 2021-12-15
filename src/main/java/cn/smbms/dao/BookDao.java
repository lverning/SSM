package cn.smbms.dao;

import cn.smbms.pojo.Book;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author： 吕二宁
 * @date： 2021-12-10 19:28
 */
public interface BookDao {
    //查询所有图书
    List<Book> getBookList(@Param("book") Book book,@Param("page") Integer page,@Param("size") Integer size,
                           @Param("bookName") String bookName,
                           @Param("bookAuthor") String bookAuthor,
                            @Param("interest") String interest);

    //根据id查询图书
    Book getBookById(@Param("id") Integer id);

    //根据id删除图书
    void deleteBook(@Param("ids") Integer[] ids);

    //添加图书
    int addBook(Book book);

    //查询指定类型图书
    List<Book> getBookByType(Book book,@Param("interest") String interest);

    //根据id修改图书
    int updateBook(Book book);

}
