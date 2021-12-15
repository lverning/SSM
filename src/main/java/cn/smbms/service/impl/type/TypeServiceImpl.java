package cn.smbms.service.impl.type;

import cn.smbms.dao.TypeDao;
import cn.smbms.pojo.Type;
import cn.smbms.service.TypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author： 吕二宁
 * @date： 2021-12-14 10:04
 */
@Service("typeService")
public class TypeServiceImpl implements TypeService{

    @Autowired
    @Qualifier("typeDao")
    private TypeDao typeDao;

    @Override
    public List<Type> getTypeList() {
        List<Type> typeList = typeDao.getTypeList();
        return typeList;
    }
}
