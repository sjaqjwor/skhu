package skhu.mapper;

import java.util.List;
import skhu.model.Rule;
import skhu.model.Pagination;

public interface RuleMapper {
    
    void insert(Rule rule);
    void updateReadCount(int id);
    List<Rule> selectPage(Pagination pagination);
    int selectCount();
    Rule selectById(int id);
}

