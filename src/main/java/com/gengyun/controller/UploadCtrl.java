package com.gengyun.controller;

import com.alibaba.druid.util.StringUtils;
import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by root on 16-2-22.
 */
@Controller("UploadCtrl")
@RequestMapping("/upload")
public class UploadCtrl {

    private static SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");


    @RequestMapping("/tagview")
    String tagview(HttpServletRequest request, HttpServletResponse response) {
        request.setAttribute("uploadTitle", "tagupload");
        return "pages/upload";
    }

    @RequestMapping("/templateview")
    String templateview(HttpServletRequest request, HttpServletResponse response) {
        request.setAttribute("uploadTitle", "templateupload");
        return "pages/upload";
    }

    @RequestMapping(value = "/uploadFile", method = RequestMethod.POST)
    @ResponseBody
    public String upload(@RequestParam("file") MultipartFile file, @RequestParam("module") String module, HttpServletRequest request, HttpServletResponse response) {

        /*try {
            System.out.println(module);
            String realPath = request.getSession().getServletContext().getRealPath("/upload");

            response.setContentType("text/plain; charset=UTF-8");
            PrintWriter out = response.getWriter();
            String originalFilename = null;


            if (file.isEmpty()) {
                out.print("1`请选择文件后上传");
                out.flush();
                return null;
            } else {
                originalFilename = file.getOriginalFilename();
                System.out.println("文件原名: " + originalFilename);
                System.out.println("文件名称: " + file.getName());
                System.out.println("文件长度: " + file.getSize());
                System.out.println("文件类型: " + file.getContentType());
                System.out.println("========================================");
                try {
                    FileUtils.copyInputStreamToFile(file.getInputStream(), new File(realPath, originalFilename));
                } catch (IOException e) {
                    System.out.println("文件[" + originalFilename + "]上传失败,堆栈轨迹如下");
                    e.printStackTrace();
                    out.print("1`文件上传失败，请重试！！");
                    out.flush();
                }
            }
            out.print("0" + request.getContextPath() + "/upload/" + originalFilename);
            out.flush();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;*/
        boolean flag = false;
        File templatedir = new File("/opt/SparkCrawl/template");
        File tagDir = new File("/opt/SparkCrawl/tag");

        if (file.isEmpty()) {
            flag = false;
        } else {
            try {
                if (StringUtils.equals(module, "templateupload")) {
                    if (!templatedir.exists()) {
                        makeDir(templatedir);
                    }


                    String finalname = file.getOriginalFilename().substring(0, file.getOriginalFilename().indexOf(".")) + sdf.format(new Date()) + file.getOriginalFilename().substring(file.getOriginalFilename().indexOf("."));

                    FileUtils.copyInputStreamToFile(file.getInputStream(), new File(templatedir, finalname));
                    flag = true;

                }

                if (StringUtils.equals(module, "tagupload")) {
                    if (!tagDir.exists()) {
                        makeDir(tagDir);
                    }
                    String finalname = file.getOriginalFilename().substring(0, file.getOriginalFilename().indexOf(".")) + sdf.format(new Date()) + file.getOriginalFilename().substring(file.getOriginalFilename().indexOf("."));
                    FileUtils.copyInputStreamToFile(file.getInputStream(), new File(tagDir, finalname));

                    flag = true;
                }
            } catch (Exception e) {
                System.out.println(e.getMessage());
                flag = false;
            }
        }

        return "<script>window.parent.resultPanduan(" + flag + ");</script>";

    }


    private void makeDir(File dir) {
        if (!dir.getParentFile().exists()) {
            makeDir(dir.getParentFile());
        }
        dir.mkdir();
    }
}
