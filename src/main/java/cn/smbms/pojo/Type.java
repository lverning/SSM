package cn.smbms.pojo;

/**
 * @author： 吕二宁
 * @date： 2021-12-11 15:55
 */
public class Type {
    private Integer id;
    private String type;

    public Type() {
    }

    public Type(Integer id, String type) {
        this.id = id;
        this.type = type;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Override
    public String toString() {
        return "Type{" +
                "id=" + id +
                ", type='" + type + '\'' +
                '}';
    }
}
