<%@ Page Title="" Language="C#" MasterPageFile="~/TopHeader.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Online_Banking_Services.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table align="center">
        <tr>
            <td colspan="4" align="center">
                <h3>Login</h3>

            </td>
        </tr>
       
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Email Id:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtEmail" placeholder="Enter Email Id" Height="28px" Width="200px" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*"  ForeColor="Red" 
                    Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>

                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Email should be in correct format"
        ControlToValidate="txtEmail" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpass" placeholder="Enter Password" Height="28px" Width="200px" TextMode="Password" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*"
                SetFocusOnError="true" Display="Dynamic" ForeColor="Red" ControlToValidate="txtpass"></asp:RequiredFieldValidator>
            </td>
           
        </tr>
       
        <tr>
            <td colspan="3">
                <div id="error" runat="server" style="color: red">
                </div>
            </td>
           <tr>
            <td>
                <asp:Button ID="btnreset" CausesValidation="false" Height="30px" Width="60px" runat="server" Text="Reset" OnClick="btnreset_Click" />

            </td>
            <td style="padding-right: 40px;">&nbsp;</td>
            <td>
            <asp:Button ID="btnlogin" Height="30px" Width="60px" runat="server" Text="Login" OnClick="btnlogin_Click" />
           
            </td>
        </tr>
   <tr>
     <td>
         <asp:LinkButton ID="forgetpass" Height="28px" CausesValidation="false" runat="server" OnClick="forgetpass_Click">Forget Password?</asp:LinkButton>
     </td>
     <td style="padding-right: 40px;">&nbsp;</td>
     <td>
         <asp:LinkButton ID="Register" Height="28px" CausesValidation="false" OnClick="Register_Click" runat="server">Need an Acccount? Signup!</asp:LinkButton>
         </td>
 </tr>
        <td> <br />
            <asp:Label ID="txtlbl" runat="server" Font-Size="20px" ForeColor="Green"></asp:Label>
        </td>

    </table>



</asp:Content>
