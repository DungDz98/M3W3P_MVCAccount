package controller;

import manager.AccountManager;
import model.Account;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/account"})
public class AccountServlet extends HttpServlet {
    AccountManager accountManager = new AccountManager();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher rd;
        String action = req.getParameter("action");
        int index = Integer.parseInt(req.getParameter("index"));
        if (action == null) action = "";
        switch (action) {
            case "create":
                resp.sendRedirect("view/CreatAccount.jsp");
                break;
            case "edit":
                req.setAttribute("account", accountManager.list.get(index));
                rd = req.getRequestDispatcher("view/EditAccount.jsp");
                rd.forward(req, resp);
                break;
            case "delete":
                accountManager.delete(index);
                resp.sendRedirect("/account");
                break;
            default:
                req.setAttribute("listAccount", accountManager.list);
                rd = req.getRequestDispatcher("ShowAccount.jsp");
                rd.forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher rd;
        String action = req.getParameter("action");
        switch (action) {
            case "create":
                int cID = Integer.parseInt(req.getParameter("id"));
                String cUsername = req.getParameter("user");
                String cPassword = req.getParameter("pass");
                String cEmail = req.getParameter("email");
                Account cAccount = new Account(cID, cUsername, cPassword, cEmail);
                accountManager.save(cAccount);
                break;
            case "edit":
                int eIndex = Integer.parseInt(req.getParameter("index"));
                int eID = Integer.parseInt(req.getParameter("id"));
                String eUsername = req.getParameter("user");
                String ePassword = req.getParameter("pass");
                String eEmail = req.getParameter("email");
                Account eAccount = new Account(eID, eUsername, ePassword, eEmail);
                accountManager.edit(eIndex, eAccount);
                break;
        }
            resp.sendRedirect("/account");
    }
}
