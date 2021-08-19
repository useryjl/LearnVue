package com.yjl.controller;

import com.yjl.domain.Student;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "oneServlet")
public class oneServlet extends HttpServlet {
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      /**
       * 接受请求参数 执行处理结果
       *
       * 使用vue 发起ajax请求
       *
       */
      String name=request.getParameter("name");
      System.out.println(name);
      String id=request.getParameter("id");
      System.out.println(id);
      String age=request.getParameter("age");
      System.out.println(name);
      System.out.println("===进入doget方法===");

      Student student=new Student("A0001","YJL","20");

//     自己拼 jaskon
      //objectmapper om=new objectmapper
      //om.
//      {"id":"?","name":"?","age":"?"}
      //student对象转换为json对象
      String str=" {\"id\":\""+student.getId()+"\",\"name\":\""+student.getName()+"\",\"age\":\""+student.getAge()+"\"}";

      PrintWriter out=response.getWriter();
      out.print(str);
      out.flush();
      out.close();

    }
}
