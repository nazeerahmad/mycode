<html>
 <head>
    <link rel="stylesheet" href="Design.css" />       
 </head>   
 <body bgcolor="lightgreen">
   <div class="frm" style="width:400px;">
   <form action="RegisAction" method="post">   
    <pre>
 <%
          String msg = (String)request.getAttribute("msg");
          if(msg!=null) 
             out.print(msg);
 %>

       User Id  <input type="text" name="uid" />

       Password <input type="password" name="pass" />

         <input type="submit" value='Sign Up' />
       
    </pre>
    </form>   
   </div>  
 </body>
</html>