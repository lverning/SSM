package cn.smbms.dao;

import cn.smbms.pojo.Type;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author： 吕二宁
 * @date： 2021-12-14 10:02
 */
@Repository("typeDao")
public interface TypeDao {
    //查询所有图书类型
    List<Type> getTypeList();
}
