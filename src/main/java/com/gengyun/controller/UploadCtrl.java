package com.gengyun.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by root on 16-2-22.
 */
@Controller("UploadCtrl")
@RequestMapping("/upload")
public class UploadCtrl {
    @RequestMapping("/tagview")
    String tagview(HttpServletRequest request, HttpServletResponse response){
        request.setAttribute("uploadTitle","标签上传");
        return "pages/upload";
    }

    @RequestMapping("/templateview")
    String templateview(HttpServletRequest request,HttpServletResponse response){
        request.setAttribute("uploadTitle","模板上传");
        return "pages/upload";
    }
}
