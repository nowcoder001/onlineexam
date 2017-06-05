<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'program.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <div id="cc" class="easyui-layout" fit="true">   
    <div data-options="region:'north',split:false,title:'查询过滤'" style="height:70px;">
    	<form id="formProgram">
		<table class="tableForm datagrid-toolbar">
		   <tr>
		   	<td align="right" height="30" width="50">编号</td>
		   	<td><input type="text" name="id" id="id"/></td>
		   	<td align="right" height="30" width="60">题目</td>
		   	<td><input type="text" name="question" id="question"/></td>
		   	<td><a href="javascript:void(0);" class="easyui-linkbutton" data-options="selected:true,iconCls:'icon-search',plain:true"  onClick="search()">查询</a>
		   		<a href="javascript:void(0);" class="easyui-linkbutton" data-options="selected:true,iconCls:'icon-clear',plain:true" onClick="clear()">清空</a>
		   	</td>
		   </tr>
		</table>
		</form>
    </div>   

    <div data-options="region:'center',title:'编程题列表'" >
    	<script type="text/javascript" src="myjs/program.js"></script>
  		<table id="datagridProgram" >
 		 </table>	
    
    </div>   
</div>    
    


  </body>
</html>