package com.ananops.provider.mapper;

import com.ananops.provider.base.MyMapper;
import com.ananops.provider.model.domain.MdmcTaskItem;
import org.springframework.stereotype.Component;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
@Component
public interface MdmcTaskItemMapper extends MyMapper<MdmcTaskItem> {

    List<MdmcTaskItem> selectByTaskId(Long taskId);
}