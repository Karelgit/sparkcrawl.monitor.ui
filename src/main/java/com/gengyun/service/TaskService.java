package com.gengyun.service;

import com.gengyun.dao.CrawlTasktypeMapper;
import com.gengyun.model.CrawlTasktype;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by root on 16-2-22.
 */
@Service("TaskService")
@Scope("singleton")
public class TaskService {
    @Autowired
    private CrawlTasktypeMapper crawlTasktypeMapper;

    public List<CrawlTasktype> getTaskTypes() {
        return crawlTasktypeMapper.findAll("");
    }

}
