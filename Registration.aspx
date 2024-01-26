<%@ Page Title="" Language="C#" MasterPageFile="~/TopHeader.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Online_Banking_Services.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <table align="center">
       <tr>
           <td colspan="4" align="center">
               <h3>Registration Form</h3><br />

           </td>
       </tr>
      
           <tr>
               <td>
                   <asp:Label ID="Label1" runat="server" Text="Full Name:"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="txtname" placeholder="Enter your name here" Height="28px" Width="200px" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" ControlToValidate="txtname" 
                       ErrorMessage="Name is mandatory" SetFocusOnError="true" Display="Dynamic" ></asp:RequiredFieldValidator>
               </td>
           </tr>
       <tr>
           <td>
               <asp:Label ID="Label3" runat="server" Text="Email Id:"></asp:Label>
           </td>
           <td>
               <asp:TextBox ID="txtEmail" placeholder="Enter Email Id" Height="28px" Width="200px" runat="server"></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Email is mandatory"  ForeColor="Red" 
                   Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>

               <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Email should be in correct format"
       ControlToValidate="txtEmail" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
           </td>
       </tr>
           <tr>
               <td>
                   <asp:Label ID="Label4" runat="server" Text="Mobile no:"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="txtmob" Height="28px" Width="200px" placeholder="Mobile Number" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Display="Dynamic"
                  ForeColor="Red" SetFocusOnError="true" ControlToValidate="txtmob" ErrorMessage="Mobile no is mandatory"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtmob"
SetFocusOnError="true" ForeColor="Red" Display="Dynamic" ValidationExpression="^[6-9]\d{9}$" ErrorMessage="Incorrect Format"></asp:RegularExpressionValidator>
               </td>
           </tr>

       <tr>
           <td>
               <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
           </td>
           <td>
               <asp:TextBox ID="txtpass" placeholder="Enter Password" Height="28px" Width="200px" TextMode="Password" runat="server"></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password is mandatory"
               SetFocusOnError="true" Display="Dynamic" ForeColor="Red" ControlToValidate="txtpass"></asp:RequiredFieldValidator>
           </td>
          
       </tr>
           <tr>
               <td width="50%">
                   <asp:Label ID="Label5" runat="server" Text="Security Question"></asp:Label>
               </td>
               <td>
                   <asp:DropDownList ID="ddlsecurityquestion" runat="server" Height="28px" Width="208px" DataSourceID="SqlDataSource1" DataTextField="securityquestionName" DataValueField="securityquestionid">

                   </asp:DropDownList>
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bankingTransactionConnectionString2 %>" SelectCommand="SELECT * FROM [Securityquestion]"></asp:SqlDataSource>

               </td>
           </tr>

              <tr>
     <td style="width:50%">
    <asp:Label ID="Label16" runat="server" Text=" Security Answer"></asp:Label>
</td>
<td>
    <asp:TextBox ID="txtAnswer" runat="server" Height="28px" Width="200px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ControlToValidate="txtAnswer" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
</td>
</tr>  
      
      <tr>
    <td>
        <asp:Button ID="submitbtn" Height="30px" Width="110px" runat="server" ForeColor="white" BackColor="Blue" Text="Register here" OnClick="submitbtn_Click" />

    </td>
    <td style="padding-right: 40px;">&nbsp;</td>
    <td>
    <asp:Button ID="resetbtn" CausesValidation="false"  Height="30px" Width="60px" ForeColor="white" runat="server" Text="Reset" BackColor="Blue" OnClick="resetbtn_Click" />
   
    </td>
</tr>
           <tr>
               <td>
                   <asp:LinkButton ID="login" runat="server" CausesValidation="false" OnClick="login_Click">Already have an Account? Login</asp:LinkButton>
               </td>
           </tr>
          

           <td> <br />
               
               <asp:Label ID="txtLabel"  ForeColor="green" font-size="20px" runat="server"></asp:Label>
           </td>
          

   </table>
</asp:Content>
