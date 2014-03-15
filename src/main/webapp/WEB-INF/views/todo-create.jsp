<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
</head>
<body>

						<form class="form-horizontal" method="post" action="save">  
						        <fieldset>  
          <legend>Spring data Bootstrap Todo example</legend>  <br>
  <div class="form-group">
    <label for="inputtaskname" class="col-sm-2 control-label">Task Name</label>
    <div class="col-xs-4">
      <input type="text" class="form-control" id="task_name" name="task_name" value="${todo.title}">
    </div>
  </div>
  <div class="form-group">
    <label for="inputtaskdesc" class="col-sm-2 control-label" >Task Description</label>
    <div class="col-xs-4">
      <textarea class="form-control" rows="3" id="task_desc" name="task_desc">${todo.desc}</textarea>
    </div>
  </div>
  <div class="form-group">
    <label for="inputstatus" class="col-sm-2 control-label" >Task Status</label>
    <div class="col-xs-4">
      <div class="radio">
  <label>
  
    <input type="radio"  value="Done" id="task_status" name="task_status"
     <c:if test="${todo.status.equals(\"Done\")}">
   		checked
   	 </c:if>>Done

  </label>
</div>
<div class="radio">
  <label>
    <input type="radio"  value="Not Done" id="task_status" name="task_status"
      <c:if test="${todo.status.equals(\"Not Done\")}">
   		checked
   	 </c:if>>Not Done
  </label>
</div>
    </div>
  </div>
  <div class="form-group">
    <label for="inputPriority" class="col-sm-2 control-label">Task Priority</label>
    <div class="col-xs-4">
     <select class="form-control" id="task_priority" name="task_priority">
   <option>Select Priority</option>  
    
   <option <c:if test="${todo.priority.equals(\"High\")}">
   		selected
   	 </c:if>>High</option>
  
  <option <c:if test="${todo.priority.equals(\"Medium\")}">
   		selected
   	 </c:if>>Medium</option>
  
  <option <c:if test="${todo.priority.equals(\"Low\")}">
   		selected
   	 </c:if>>Low</option>
</select>
    </div>
  </div><br>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Date</label>
    <input type="date" id="date" name="date" value="12/12/2012"></input>
    ${todo.date}
    </div>
  <div class="col-xs-4">
  <center><button type="submit" class="btn btn-success btn-lg">Save</button>
  <button type="button" class="btn btn-danger btn-lg">Cancel</button></center>
  </div>
         </fieldset>
         
</form>

</body>
</html>