<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>AlloPolice</title>
    		<%@include file="/WEB-INF/helpers/navRegister.jsp" %> 
      <!-- Normalize CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
    
      <!-- Bootstrap 4 CSS -->
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-beta.2/css/bootstrap.css'>
      <!-- Telephone Input CSS -->
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/12.1.2/css/intlTelInput.css'>
      <!-- Icons CSS -->
    <link rel='stylesheet' href='https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css'>
      <!-- Nice Select CSS -->
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/css/nice-select.min.css'>
     <!-- Style CSS -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/WebRessources/styles/styleRegister.css">
	<!-- Demo CSS -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/WebRessources/styles/demo.css">
  <style>
  @charset "UTF-8";
/*font Variables*/
/*Color Variables*/
@import url("https://fonts.googleapis.com/css?family=Roboto:300i,400,400i,500,700,900");
.multi_step_form {
  background: #f6f9fb;
  display: block;
  overflow-x: hidden;
}
.multi_step_form #msform {
  text-align: center;
  position: relative;
  padding-top: 50px;
  min-height: 630px;
    height: auto;
  max-width: 820px;
  margin: 0 auto;
  background: #ffffff;
  z-index: 1;
}
.multi_step_form #msform .tittle {
  text-align: center;
  padding-bottom: 60px;
  margin-top:-50px;
}
.multi_step_form #msform .tittle h2 {
  font: 500 24px/35px "Roboto", sans-serif;
  color: #3f4553;
  padding-bottom: 5px;
}
.multi_step_form #msform .tittle p {
  font: 400 16px/28px "Roboto", sans-serif;
  color: #5f6771;
}
.multi_step_form #msform fieldset {
  border: 0;
  padding: 10px 105px 0;
  position: relative;
  width: 100%;
  left: 0;
  right: 0;
}

.multi_step_form #msform fieldset:not(:first-of-type) {
  display: none;
}
.multi_step_form #msform fieldset h3 {
  font: 500 18px/35px "Roboto", sans-serif;
  color: #3f4553;
}
.multi_step_form #msform fieldset h6 {
  font: 400 15px/28px "Roboto", sans-serif;
  color: #5f6771;
  padding-bottom: 30px;
}
.multi_step_form #msform fieldset .intl-tel-input {
  display: block;
  background: transparent;
  border: 0;
  box-shadow: none;
  outline: none;
}
.multi_step_form #msform fieldset .intl-tel-input .flag-container .selected-flag {
  padding: 0 20px;
  background: transparent;
  border: 0;
  box-shadow: none;
  outline: none;
  width: 65px;
}
.multi_step_form #msform fieldset .intl-tel-input .flag-container .selected-flag .iti-arrow {
  border: 0;
}
.multi_step_form #msform fieldset .intl-tel-input .flag-container .selected-flag .iti-arrow:after {
  content: "\f35f";
  position: absolute;
  top: 0;
  right: 0;
  font: normal normal normal 24px/7px Ionicons;
  color: #5f6771;
}
.multi_step_form #msform fieldset #phone {
  padding-left: 80px;
}
.multi_step_form #msform fieldset .form-group {
  padding: 0 10px;
}
.multi_step_form #msform fieldset .fg_2, .multi_step_form #msform fieldset .fg_3 {
  padding-top: 10px;
  display: block;
  overflow: hidden;
}
.multi_step_form #msform fieldset .fg_3 {
  padding-bottom: 70px;
}
.multi_step_form #msform fieldset .form-control, .multi_step_form #msform fieldset .product_select {
  border-radius: 3px;
  border: 1px solid #d8e1e7;
  padding: 0 20px;
  height: auto;
  font: 400 15px/48px "Roboto", sans-serif;
  color: #5f6771;
  box-shadow: none;
  outline: none;
  width: 100%;
}
.multi_step_form #msform fieldset .form-control.placeholder, .multi_step_form #msform fieldset .product_select.placeholder {
  color: #5f6771;
}
.multi_step_form #msform fieldset .form-control:-moz-placeholder, .multi_step_form #msform fieldset .product_select:-moz-placeholder {
  color: #5f6771;
}
.multi_step_form #msform fieldset .form-control::-moz-placeholder, .multi_step_form #msform fieldset .product_select::-moz-placeholder {
  color: #5f6771;
}
.multi_step_form #msform fieldset .form-control::-webkit-input-placeholder, .multi_step_form #msform fieldset .product_select::-webkit-input-placeholder {
  color: #5f6771;
}
.multi_step_form #msform fieldset .form-control:hover, .multi_step_form #msform fieldset .form-control:focus, .multi_step_form #msform fieldset .product_select:hover, .multi_step_form #msform fieldset .product_select:focus {
  border-color: #6282a9;
}
.multi_step_form #msform fieldset .form-control:focus.placeholder, .multi_step_form #msform fieldset .product_select:focus.placeholder {
  color: transparent;
}
.multi_step_form #msform fieldset .form-control:focus:-moz-placeholder, .multi_step_form #msform fieldset .product_select:focus:-moz-placeholder {
  color: transparent;
}
.multi_step_form #msform fieldset .form-control:focus::-moz-placeholder, .multi_step_form #msform fieldset .product_select:focus::-moz-placeholder {
  color: transparent;
}
.multi_step_form #msform fieldset .form-control:focus::-webkit-input-placeholder, .multi_step_form #msform fieldset .product_select:focus::-webkit-input-placeholder {
  color: transparent;
}
.multi_step_form #msform fieldset .product_select:after {
  display: none;
}
.multi_step_form #msform fieldset .product_select:before {
  content: "\f35f";
  position: absolute;
  top: 0;
  right: 20px;
  font: normal normal normal 24px/48px Ionicons;
  color: #5f6771;
}
.multi_step_form #msform fieldset .product_select .list {
  width: 100%;
}
.multi_step_form #msform fieldset .done_text {
  padding-top: 40px;
}
.multi_step_form #msform fieldset .done_text .don_icon {
  height: 36px;
  width: 36px;
  line-height: 36px;
  font-size: 22px;
  margin-bottom: 10px;
  background: #6282a9;
  display: inline-block;
  border-radius: 50%;
  color: #ffffff;
  text-align: center;
}
.multi_step_form #msform fieldset .done_text h6 {
  line-height: 23px;
}
.multi_step_form #msform fieldset .code_group {
  margin-bottom: 60px;
}
.multi_step_form #msform fieldset .code_group .form-control {
  border: 0;
  border-bottom: 1px solid #a1a7ac;
  border-radius: 0;
  display: inline-block;
  width: 30px;
  font-size: 30px;
  color: #5f6771;
  padding: 0;
  margin-right: 7px;
  text-align: center;
  line-height: 1;
}
.multi_step_form #msform fieldset .passport {
  margin-top: -10px;
  padding-bottom: 30px;
  position: relative;
}
.multi_step_form #msform fieldset .passport .don_icon {
  height: 36px;
  width: 36px;
  line-height: 36px;
  font-size: 22px;
  position: absolute;
  top: 4px;
  right: 0;
  background: #6282a9;
  display: inline-block;
  border-radius: 50%;
  color: #ffffff;
  text-align: center;
}
.multi_step_form #msform fieldset .passport h4 {
  font: 500 15px/23px "Roboto", sans-serif;
  color: #5f6771;
  padding: 0;
}
.multi_step_form #msform fieldset .input-group {
  padding-bottom: 40px;
}
.multi_step_form #msform fieldset .input-group .custom-file {
  width: 100%;
  height: auto;
}
.multi_step_form #msform fieldset .input-group .custom-file .custom-file-label {
  width: 168px;
  border-radius: 5px;
  cursor: pointer;
  font: 700 14px/40px "Roboto", sans-serif;
  border: 1px solid #99a2a8;
  text-align: center;
  transition: all 300ms linear 0s;
  color: #5f6771;
}
.multi_step_form #msform fieldset .input-group .custom-file .custom-file-label i {
  font-size: 20px;
  padding-right: 10px;
}
.multi_step_form #msform fieldset .input-group .custom-file .custom-file-label:hover, .multi_step_form #msform fieldset .input-group .custom-file .custom-file-label:focus {
  background: #6282a9;
  border-color: #6282a9;
  color: #fff;
}
.multi_step_form #msform fieldset .input-group .custom-file input {
  display: none;
}
.multi_step_form #msform fieldset .file_added {
  text-align: left;
  padding-left: 190px;
  padding-bottom: 60px;
}
.multi_step_form #msform fieldset .file_added li {
  font: 400 15px/28px "Roboto", sans-serif;
  color: #5f6771;
}
.multi_step_form #msform fieldset .file_added li a {
  color: #6282a9;
  font-weight: 500;
  display: inline-block;
  position: relative;
  padding-left: 15px;
}
.multi_step_form #msform fieldset .file_added li a i {
  font-size: 22px;
  padding-right: 8px;
  position: absolute;
  left: 0;
  transform: rotate(20deg);
}
.multi_step_form #msform #progressbar {
  margin-bottom: 30px;
  overflow: hidden;
    margin-top:-70px;
  
}
.multi_step_form #msform #progressbar li {
  list-style-type: none;
  color: #99a2a8;
  font-size: 9px;
  width: calc(100%/3);
  float: left;
  position: relative;
  font: 500 13px/1 "Roboto", sans-serif;
}
.multi_step_form #msform #progressbar li:nth-child(2):before {
  content: "2";
}
.multi_step_form #msform #progressbar li:nth-child(3):before {
  content: "3";
}
.multi_step_form #msform #progressbar li:before {
  content: "1";/*f82f*/
  font: normal normal normal 30px/50px Ionicons;
  width: 50px;
  height: 50px;
  line-height: 50px;
  display: block;
  background: #eaf0f4;
  border-radius: 50%;
  margin: 0 auto 10px auto;
}
.multi_step_form #msform #progressbar li:after {
  content: '';
  width: 100%;
  height: 10px;
  background: #eaf0f4;
  position: absolute;
  left: -50%;
  top: 21px;
  z-index: -1;
}
.multi_step_form #msform #progressbar li:last-child:after {
  width: 150%;
}
.multi_step_form #msform #progressbar li.active {
  color: #6282a9;
}
.multi_step_form #msform #progressbar li.active:before, .multi_step_form #msform #progressbar li.active:after {
  background: #6282a9;
  color: white;
}
.multi_step_form #msform .action-button {
  background: #6282a9;
  color: white;
  border: 0 none;
  border-radius: 5px;
  cursor: pointer;
  min-width: 130px;
  font: 700 14px/40px "Roboto", sans-serif;
  border: 1px solid #6282a9;
  margin: 0 5px;
  text-transform: uppercase;
  display: inline-block;
}
.multi_step_form #msform .action-button:hover, .multi_step_form #msform .action-button:focus {
  background: #405867;
  border-color: #405867;
}
.multi_step_form #msform .previous_button {
  background: transparent;
  color: #99a2a8;
  border-color: #99a2a8;
}
.multi_step_form #msform .previous_button:hover, .multi_step_form #msform .previous_button:focus {
  background: #405867;
  border-color: #405867;
  color: #fff;
}</style>
  </head>
  <body>
 <main style="margin-top:5px">
  <article>
      <!-- Start Multiform HTML -->
  <section class="multi_step_form">  
  <form action="registerServlet" method="POST" id="msform"> 
    <!-- Tittle -->
    <div class="tittle">
      <h2>Inscrivez-vous sur notre application web</h2>
      <p>Afin de bénéficier de tous nos services, veillez créer votre compte avec des informations valides.</p>
    </div>
    <!-- progressbar -->
    <ul id="progressbar">
      <li class="active">Civilité</li>  
      <li>Informations personnelles</li> 
      <li>Informations de connexion</li>
    </ul>
    <!-- fieldsets -->
    <fieldset>

      <h3>Entrer vos informations</h3>
      <div class="form-row">
        <div class="form-group col-md-6"> 
          <label for="gender" style="margin-top:-70px;">CIN: *</label>        
          <input type="text" name="CIN" class="form-control" placeholder="ZA154296">
        </div> 
        <div class="form-group col-md-6">
        <label for="gender" style="margin-top:-70px;">Civilité: *</label>        
        <select class="product_select" name="sexe" id="gender">
        <option value="M">M</option>
        <option value="F">Mme</option>
        </select>
        </div>
      </div> 
      <div class="form-row">
      <div class="form-group col-md-6"> 
      <label for="gender" style="margin-top:-70px;">Profession: *</label>        
          <input type="text" class="form-control" name="profession" placeholder="Ingénieur">
        </div> 
        <div class="form-group col-md-6"> 
          <label for="gender" style="margin-top:-70px;">Nationalité: *</label>        
          <input type="text" class="form-control" name="nationalite" placeholder="Marocain(e)">
        </div> 
      </div>
      <button type="button" class="action-button previous_button">Précédent</button>
      <button type="button" class="next action-button">Continue</button>  
    </fieldset>
    <fieldset>
        <div class="form-row" style="margin-top:-30px">
                <div class="form-group col-md-6"> 
          <label for="gender" >Nom:*</label>         
          <input type="text" name="nom" class="form-control" placeholder="ALAOUI">
        </div> 
        <div class="form-group col-md-6"> 
          <label for="gender" >Prénom:*</label>         
          <input type="text" name="prenom" class="form-control" placeholder="Karim">
        </div> 
        </div>
        <div class="form-row">
        <div class="form-group col-md-6"> 
          <label for="gender" >Date de naissance:*</label>         
          <input type="date" name="datenaissance" class="form-control" placeholder="58 allées des orangiers,Ain Sebaâ">
        </div>  
        <div class="form-group col-md-6"> 
          <label for="gender" >Lieu de naissance:*</label>         
          <input type="text" name="lieunaissance" class="form-control" placeholder="Casablanca">
        </div>                                            
        </div>
       <div class="form-row">
        <div class="form-group col-md-6">
        <label for="gender" >Téléphone: *</label>          
          <input type="tel"  id="phone" class="form-control" placeholder="+212"> 
        </div>  
        <div class="form-group col-md-6"> 
          <label for="gender"><br></label>        
          <input type="text" name="tel" class="form-control" placeholder="+2121123456789">
        </div>           
        </div>
        <div class="form-row">
        <div class="form-group col-md-12"> 
          <label for="gender">Adresse:*</label>         
          <input type="text" name="adresse" class="form-control" placeholder="58 allées des orangiers,Ain Sebaâ">
        </div>  
        </div>           
      <button type="button" class="action-button previous previous_button">Précédent</button>
      <button type="button" class="next action-button">Continuer</button>  
    </fieldset>  
    <fieldset>
      <h3>Finaliser la création de votre compte</h3>
      <div class="form-group"> 
     <div class="form-row">
      <div class="form-group col-md-6"> 
      <label for="gender" style="margin-top:-70px;">Email: *</label>        
          <input type="email" name="email" class="form-control" placeholder="example@mail.com">
        </div> 
        <div class="form-group col-md-6"> 
          <label for="gender" style="margin-top:-70px;">Mot de passe: *</label>        
          <input type="password" name="mdp" class="form-control" placeholder="ZA@£296ui">
        </div> 
      </div>
      </div>
      <button type="button" class="action-button previous previous_button">Précédent</button> 
      <button type="submit" class="action-button">Finir</button> 
    </fieldset>  
  </form>  
</section> 
      <!-- END Multiform HTML -->
  </article>
 </main>  
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-beta/js/bootstrap.min.js'></script>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js'></script>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/12.1.2/js/intlTelInput.js'></script>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js'></script>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/js/jquery.nice-select.min.js'></script>
    <script src="<%=request.getContextPath()%>/WebRessources/js/scriptRegister.js"></script>
  
  </body>
</html>