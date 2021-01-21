<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<h2 style = "text-align:center; " class="text-primary">Register</h2>
<form action = "insertRoom.jsp" class="form-horizontal" action='' method="POST" style = "margin-left:400px">
  <fieldset>
     
     <div class="control-group">
      <!-- fname -->
      <label class="control-label"  for="area">area</label>
      <div class="controls">
        <input type="text" id="area" name="area" placeholder="" class="input-xlarge">
      </div>
    </div>
    
     
    <div class="control-group">
      <!-- lname -->
      <label class="control-label"  for="rent">rent</label>
      <div class="controls">
        <input type="text" id="rent" name="rent" placeholder="" class="input-xlarge">
      </div>
    </div>
 
       <div class="control-group">
      <!-- Button -->
      <div class="controls">
        <button class="btn btn-success">Register</button>
      </div>
    </div>
  </fieldset>
</form>
