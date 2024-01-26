<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NavBar.aspx.cs" Inherits="Online_Banking_Services.NavBar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet1.css" rel="stylesheet" />

   

</head>
<body>
    <form id="form1" runat="server">
        <div id="menu" style="background-color:red">
            <ul>
                <li> <a href="#">Home Page</a> </li>
                <li> <a href="#">About</a> </li>
                <li> <a href="#">Services <span><img src="downarrow1.png" height="15px" width="15px"</span></a> 
                    <ul>
                        <li><a href="OpenAccount.aspx">Open Account</a> </li>
                        <li><a href="#">All Tranactions</a> </li>
                        <li><a href="#">Debit</a> </li>
                        <li> <a href="#">Credit</a></li>
                        <li><a href="#">View Account Balance</a></li>


                    </ul>
                </li>
                <li> <a href="#">Career</a> </li>
                <li> <a href="#">Contact Us</a> </li>

            </ul>
        </div>
        
    </form>
</body>
</html>
