package com.gengyun.utils;

import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.EntityUtils;

import java.io.IOException;

/**
 * Created by root on 16-2-22.
 */
public class HttpUtils {

    public static String post(String url, String json) throws IOException{
        HttpClient client = new DefaultHttpClient();
        HttpPost post = new HttpPost(url);
        post.addHeader("content-type", "application/json");
        post.addHeader("Accept", "application/json");


        post.setEntity(new StringEntity(json, HTTP.UTF_8));

        HttpResponse response = client.execute(post);

        return EntityUtils.toString(response.getEntity());

    }

}
