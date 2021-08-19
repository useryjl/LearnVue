package com.yjl.controller;

import com.yjl.domain.Student;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ThreeServlet")
public class ThreeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Student student=new Student("A000","jkl","20");

//      {"id":"?","name":"?","age":"?"}
        //student对象转换为json对象
        String str=" {\"id\":\""+student.getId()+"\",\"name\":\""+student.getName()+"\",\"age\":\""+student.getAge()+"\"}";

        PrintWriter out=response.getWriter();
        out.print(str);
        out.flush();
        out.close();

    }
}
