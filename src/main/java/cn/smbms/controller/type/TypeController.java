package cn.smbms.controller.type;

import cn.smbms.pojo.Type;
import cn.smbms.service.TypeService;
import com.alibaba.fastjson.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @author： 吕二宁
 * @date： 2021-12-14 10:02
 */
@Controller
@RequestMapping("type")
public class TypeController {

    @Autowired
    @Qualifier("typeService")
    private TypeService typeService;

    @RequestMapping(value = "getTypeList.html" , produces={"text/html;charset=UTF-8;","application/json;"})
    @ResponseBody
    public String getTypeList(){
        List<Type> typeList = typeService.getTypeList();
        String s = JSONArray.toJSONString(typeList);
        return s;
    }
}
