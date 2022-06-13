<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.*,java.util.*"%>
    <%
    List<String> area =(List<String>)request.getAttribute("area");
    List<Station> list=(List<Station>)request.getAttribute("list");
    String cTrain = (String)request.getAttribute("train");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>えきすぱぁと（仮）</title>
</head>
<body>
<h3>路線を選んでください</h3>
<form action="/stationapp/Main" method="post">
<select name="train">
<%for(String s:area){ %>
<option value="<%=s %>" <%= s.equals(cTrain)?"selected":""%>><%=s %></option>
<%} %>
</select>
<input type="submit" value="送信">
</form>
<div>
<%if(list != null && list.size()>0){ %>
<h3><%=cTrain%>の駅一覧</h3>
<table border=1>
<tr><th>駅名</th><th>都道府県</th></tr>
<%for(Station s:list){ %>
<tr><td><%=s.getName() %></td><td><%=s.getPrefecture() %></td></tr>
<%} %>
</table>
<%} %>
</div>
</body>
</html>