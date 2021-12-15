package cn.smbms.pojo;

import java.util.Date;

/**
 * @author： 吕二宁
 * @date： 2021-12-10 19:24
 */
public class Book {
    private Integer id;
    private String bookName;
    private String bookAuthor;
    private Integer bookType;
    private Integer bookPrice;
    private Date bookDate;
    private String bookDetails;

    public Book() {
    }

    private String type;

    public Book(Integer id, String bookName, String bookAuthor, Integer bookType, Integer bookPrice, Date bookDate, String bookDetails, String type) {
        this.id = id;
        this.bookName = bookName;
        this.bookAuthor = bookAuthor;
        this.bookType = bookType;
        this.bookPrice = bookPrice;
        this.bookDate = bookDate;
        this.bookDetails = bookDetails;
        this.type = type;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getBookName() {
        return bookName;
    }

    public void setBookName(String bookName) {
        this.bookName = bookName;
    }

    public String getBookAuthor() {
        return bookAuthor;
    }

    public void setBookAuthor(String bookAuthor) {
        this.bookAuthor = bookAuthor;
    }

    public Integer getBookType() {
        return bookType;
    }

    public void setBookType(Integer bookType) {
        this.bookType = bookType;
    }

    public Integer getBookPrice() {
        return bookPrice;
    }

    public void setBookPrice(Integer bookPrice) {
        this.bookPrice = bookPrice;
    }

    public Date getBookDate() {
        return bookDate;
    }

    public void setBookDate(Date bookDate) {
        this.bookDate = bookDate;
    }

    public String getBookDetails() {
        return bookDetails;
    }

    public void setBookDetails(String bookDetails) {
        this.bookDetails = bookDetails;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Override
    public String toString() {
        return "Book{" +
                "id=" + id +
                ", bookName='" + bookName + '\'' +
                ", bookAuthor='" + bookAuthor + '\'' +
                ", bookType=" + bookType +
                ", bookPrice=" + bookPrice +
                ", bookDate=" + bookDate +
                ", bookDetails='" + bookDetails + '\'' +
                ", type='" + type + '\'' +
                '}';
    }
}
