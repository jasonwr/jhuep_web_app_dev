<%-- 
    Document   : gift_shop
    Created on : Jul 3, 2015, 4:30:17 PM
    Author     : jsnrice
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- COMMENTING OUT SINCE MEMORY IS NOT ALLOCATED (e.g. Make Controller)
jsp:useBean id="user" class="resources.newhorizons.domain.UserSessionBean" scope="session"/
jsp:setProperty name="user"  property="name" value="NewHorizonUser"/
-->
<!DOCTYPE html>
<html>
    <head>
        <title>Gift Shop</title>
        <link href="css/hw.css" rel="stylesheet" type="text/css" />
        <link href="css/master.css" rel="stylesheet" type="text/css" />        
        <script src="js/jquery.js" type="text/javascript"></script>
        <script src="js/newhorizons/ui/loadinggif.js" type="text/javascript"></script>                
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">        
    </head>
    <body>
        <jsp:include page="banner.jsp"/>
        <form id="form" action="loginpage" method="post">
            <table>
                <tr>
                    <td>
                        <h1 class="main-title">Gift Shop</h1>            
                    </td>
                </tr>                
                <tr class="empty-row"/>
                <tr>
                    <td>
                        <fieldset id="credentials">
                            <legend>Login Credentials</legend>
                            <label for="username">Username:</label>
                            <input type="text" id="username" name="username" required/>
                            <br/> 
                            <label for="passwd">Password:</label> 
                            <input type="password" name="passwd" required/> 
                            <br/><br/>
                            <div id="submitbuttons">
                                <input id="submit" type="submit" name="submituserpassword" value="submit"/> 
                                <input type="button" onclick="window.location.href='new_user.jsp'" value = "new user"/>
                            </div>
                            <div id="loader"></div>                            
                        </fieldset>
                    </td>
                </tr>
            </table>
            <div style="color:#FF0000"><div style align='center'>${user.errorMessage}</div></div>
        </form>
    </body>
</html>
