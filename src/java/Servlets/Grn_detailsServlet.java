//Generated by 24HRS
package Servlets;

import Models.Grn_details;
import Controllers.Grn_detailsController;
import Models.Grn_details_List;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "Grn_detailsServlet", urlPatterns = {"/Grn_detailsServlet"})

public class Grn_detailsServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            String action = request.getParameter("action");
            String pattern = "yyyy/MM/dd - HH:mm:ss";
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern);
            String current_date = simpleDateFormat.format(new Date());

            if (action.equals("insert")) {
                int grn_id = Integer.parseInt(request.getParameter("grn_id"));
                int item_registration_id = Integer.parseInt(request.getParameter("item_registration_id"));
                double qty = Double.parseDouble(request.getParameter("qty"));
                double unit_price = Double.parseDouble(request.getParameter("unit_price"));
                String status = request.getParameter("status");
                Grn_details obj = new Grn_details();
                obj.setGrn_id(grn_id);
                obj.setItem_registration_id(item_registration_id);
                obj.setQty(qty);
                obj.setUnit_price(unit_price);
                obj.setStatus(status);
                obj.setDate_time(current_date);
                try {
                    Grn_detailsController.getInstance().Save(obj);
                    response.getWriter().println("Saved!");
                } catch (Exception ex) {
                    //error
                }
            } else if (action.equals("update")) {
                int grn_details = Integer.parseInt(request.getParameter("grn_details"));
                int grn_id = Integer.parseInt(request.getParameter("grn_id"));
                int item_registration_id = Integer.parseInt(request.getParameter("item_registration_id"));
                double qty = Double.parseDouble(request.getParameter("qty"));
                double unit_price = Double.parseDouble(request.getParameter("unit_price"));
                String status = request.getParameter("status");
                Grn_details obj = new Grn_details();
                obj.setGrn_details(grn_details);
                obj.setGrn_id(grn_id);
                obj.setItem_registration_id(item_registration_id);
                obj.setQty(qty);
                obj.setUnit_price(unit_price);
                obj.setStatus(status);
                obj.setDate_time(current_date);
                try {
                    Grn_detailsController.getInstance().Update(obj);
                    response.getWriter().println("Updated!");
                } catch (Exception ex) {
                    //error
                }

            } else if (action.equals("delete")) {
                int grn_details = Integer.parseInt(request.getParameter("grn_details"));
                Grn_details obj = new Grn_details();
                obj.setGrn_details(grn_details);
                try {
                    Grn_detailsController.getInstance().Delete(obj);
                    response.getWriter().println("Updated!");
                } catch (Exception ex) {
                    //error
                }
            } else if (action.equals("serch")) {
                try {
                    List<Grn_details> list = new ArrayList<>();
                    List stringList = new ArrayList<>();

                    list = Grn_detailsController.getInstance().SearchAll();
                    for (int i = 0; i < list.size(); i++) {
                        String s = list.get(i).getGrn_details() + "_" + list.get(i).getGrn_id() + "_" + list.get(i).getItem_registration_id() + "_" + list.get(i).getQty() + "_" + list.get(i).getUnit_price() + "_" + list.get(i).getStatus() + "_" + list.get(i).getDate_time() + "_";
                        stringList.add(s);
                    }
                    String b = String.join("~", stringList);
                    response.getWriter().println(b);
                } catch (Exception ex) {
                    //Error
                }

            } else if (action.equals("cart_insert")) {
                int grn_id_d = Integer.parseInt(request.getParameter("grn_id_d"));
                int item_registration_id = Integer.parseInt(request.getParameter("item_registration_id"));
                double qty = Double.parseDouble(request.getParameter("qty"));
                double unit_price = Double.parseDouble(request.getParameter("unit_price"));
                String status_d = request.getParameter("status_d");
                Grn_details obj = new Grn_details();
                obj.setGrn_id(grn_id_d);
                obj.setItem_registration_id(item_registration_id);
                obj.setQty(qty);
                obj.setUnit_price(unit_price);
                obj.setStatus(status_d);
                obj.setDate_time(current_date);
                try {
                    Grn_details_List.getInstance().addGrn(obj);
                    double total = Grn_details_List.getInstance().calTotal();
                    response.getWriter().println(total);
                } catch (Exception ex) {
                    //error
                }
            } else if (action.equals("cart_delete")) {
                int item_registration_id = Integer.parseInt(request.getParameter("item_dump"));
                try {
                    Grn_details_List.getInstance().deleteGrn(item_registration_id);
                    double total = Grn_details_List.getInstance().calTotal();
                    response.getWriter().println(total);
                } catch (Exception ex) {
                    //error
                }
            }else if (action.equals("cart_serch")) {
                try {
                    List<Grn_details> list = new ArrayList<>();
                    List stringList = new ArrayList<>();

                    list = Grn_details_List.getInstance().getCart();
                    for (int i = 0; i < list.size(); i++) {
                        String s = list.get(i).getGrn_details() + "_" + list.get(i).getGrn_id() + "_" + list.get(i).getItem_registration_id() + "_" + list.get(i).getQty() + "_" + list.get(i).getUnit_price() + "_" + list.get(i).getStatus() + "_" + list.get(i).getDate_time() + "_";
                        stringList.add(s);
                    }
                    String b = String.join("~", stringList);
                    response.getWriter().println(b);
                } catch (Exception ex) {
                    //Error
                }

            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
