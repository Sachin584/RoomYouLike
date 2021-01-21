<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<h2 style = "text-align:center; " class="text-primary">Register</h2>
<form action = "insertUser.jsp" class="form-horizontal" action='' method="POST" style = "margin-left:400px">
  <fieldset>
     
     <div class="control-group">
      <!-- fname -->
      <label class="control-label"  for="username">First Name</label>
      <div class="controls">
        <input type="text" id="fname" name="fname" placeholder="" class="input-xlarge">
      </div>
    </div>
    
     
    <div class="control-group">
      <!-- lname -->
      <label class="control-label"  for="username">Last Name</label>
      <div class="controls">
        <input type="text" id="lname" name="lname" placeholder="" class="input-xlarge">
      </div>
    </div>
 
    <div class="control-group">
      <!-- E-mail -->
      <label class="control-label" for="email">E-mail</label>
      <div class="controls">
        <input type="text" id="email" name="email" placeholder="" class="input-xlarge">
        
      </div>
    </div>
    
    <div class="control-group">
      <!-- adhar no. -->
      <label class="control-label"  for="username">Adhar Number</label>
      <div class="controls">
        <input type="text" id="adhar" name="adhar" placeholder="" class="input-xlarge">
      </div>
    </div>
    
    <div class="control-group">
      <!-- Address -->
      <label class="control-label"  for="username">Address</label>
      <div class="controls">
        <input type="text" id="address" name="address" placeholder="" class="input-xlarge">
      </div>
    </div>
    
    <div class="control-group">
      <!-- profession -->
      <label class="control-label"  for="username">Profession</label>
      <div class="controls">
        <input type="text" id="profession" name="profession" placeholder="" class="input-xlarge">
      </div>
    </div>
 
    <div class="control-group">
      <!-- Password-->
      <label class="control-label" for="password">Password</label>
      <div class="controls">
        <input type="password" id="password" name="pass" placeholder="" class="input-xlarge">
        
      </div>
    </div>
 
    <div class="control-group">
      <!-- Password -->
      <label class="control-label"  for="password_confirm">Password (Confirm)</label>
      <div class="controls">
        <input type="password" id="password_confirm" name="password_confirm" placeholder="" class="input-xlarge">
        
      </div>
    </div>
    
    <div class="control-group">
      <!-- mob no. -->
      <label class="control-label"  for="username">Mobile Number</label>
      <div class="controls">
        <input type="text" id="mobNo" name="mobNo" placeholder="" class="input-xlarge">
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
