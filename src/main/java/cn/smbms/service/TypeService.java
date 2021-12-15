package cn.smbms.service;

import cn.smbms.pojo.Type;

import java.util.List;

/**
 * @author： 吕二宁
 * @date： 2021-12-14 10:03
 */
public interface TypeService {
    //查询所有图书类型
    List<Type> getTypeList();
}
