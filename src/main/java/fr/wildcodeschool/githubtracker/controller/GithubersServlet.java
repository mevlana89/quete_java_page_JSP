package fr.wildcodeschool.githubtracker.controller;

import fr.wildcodeschool.githubtracker.model.Githuber;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "GithubersServlet", value = "/githubers")
public class GithubersServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Githuber githuber1 = new Githuber("gitHuber1", "githuber1@mail.fr", "login_githuber1", "http://githuber1.com");
        Githuber githuber2 = new Githuber("gitHuber2", "githuber2@mail.fr", "login_githuber2", "http://githuber2.com");
        Githuber githuber3 = new Githuber("gitHuber3", "githuber3@mail.fr", "login_githuber3", "http://githuber3.com");
        Githuber githuber4 = new Githuber("gitHuber4", "githuber4@mail.fr", "login_githuber4", "http://githuber4.com");
        Githuber githuber5 = new Githuber("gitHuber5", "githuber5@mail.fr", "login_githuber5", "http://githuber5.com");
        //System.out.println(githuber5);

        List<Githuber> listGithubers= new ArrayList();
        listGithubers.add(githuber1);
        listGithubers.add(githuber2);
        listGithubers.add(githuber3);
        listGithubers.add(githuber4);
        listGithubers.add(githuber5);
        //listGithubers.get(1).getName();

        request.setAttribute("githuber", githuber5);
        request.setAttribute("listGithubers", listGithubers);

        this.getServletContext().getRequestDispatcher("/githubers.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
