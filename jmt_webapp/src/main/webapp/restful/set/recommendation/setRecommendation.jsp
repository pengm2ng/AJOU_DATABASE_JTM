 <%@ page language="java" contentType="application/json; charset=utf-8"%>
<%@page import="java.dao.impl.PlaceDAO"%>
<%
    
    try{

    PlaceDAO placeDao = new PlaceDAO();
    String bizNo = request.getParameter("bizNo");
    Place place = new Place(bizNo, null , 0);
    placeDao.updateLikeCount(place);
    response.setStatus(200);


    }catch(Exception e){
        e.printStackTrace();
        response.sendError(400, "데이터베이스에 존재하지 않음");
    }
    
%>