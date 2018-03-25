<html>
 <head>
    <link rel="stylesheet" href="Design.css" />       
 </head>   
 <body bgcolor="lightgreen">
   <div class="frm">
   <form action="ProfileAction" method="post">   
    <table border="0" width="100%">
        <tr>
         <td colspan=4 class="lbl" style="text-align: left;">   
          <%
            String msg = (String)request.getAttribute("msg");
            if(msg!=null) 
              out.print(msg);
          %>
       </tr>
       <tr>
           <td class='lbl'>Name<td><input type="text" name="name" />
           <td class='lbl'>Father's Name<td><input type="text" name="fname" />
       </tr>
       <tr>
           <td class='lbl'>Sex<td><select name="sex">
                                    <option value=''>I m ....</option>
                                    <option value='Male'>Male.</option>
                                    <option value='Female'>Female.</option>
                                  </select>
           <td class='lbl'>DOB.<td><input type="text" name="dob" placeholder="DD-MON-YYYY"/>
       </tr>
       <tr>
           <td class='lbl'>Mail Id<td><input type="text" name="mail" placeholder="mrajora@yahoo.com" />
           <td class='lbl'>Mobile<td><input type="text" name="mob" placeholder="9990046906"/>
       </tr>
       <tr>
           <td class='lbl'>Address<td colspan="3"><textarea name=addr style="width:440; height:50px;"></textarea>
       </tr>
       <tr>
           <td class='lbl'>Qualification<td><input type="text" name="quali" placeholder="Qualification" />
           <td class='lbl'>Pin<td><input type="text" name="pin" placeholder="201001"/>
       </tr>
       <tr>
           <th colspan="4"><input type="submit" value="Update Profile" /> <input type="reset" value=" C l e a r " /> 
       </tr>      
       
    </table>      
    </form>   
   </div>  
 </body>
</html>