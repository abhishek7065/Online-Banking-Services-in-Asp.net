<%@ Page Title="" Language="C#" MasterPageFile="~/TopHeader.Master" AutoEventWireup="true" CodeBehind="OpenAccount.aspx.cs" Inherits="Online_Banking_Services.OpenAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table align="center">
        <tr>
            <td colspan="4" align="center">
     <h3> Bank Acccount Opening Form</h3><br />

           </td>
        </tr>

         <tr>
     <td style="width:50%">
         <asp:Label ID="Label1" runat="server" Text="Account Number"></asp:Label>

     </td>
     <td>
         <asp:Label ID="lblAccountno" runat="server"></asp:Label>

     </td>
 </tr>
         <tr>
    <td style="width:50%"> 
    <asp:Label ID="Label2" runat="server" Text="Account Type"></asp:Label>

</td>
<td >
    <asp:Label ID="lblAccounttype" runat="server" ForeColor="Blue"  Text="SAVINGS" Font-Size="20px"></asp:Label>
</td>
 </tr>
         <tr>
        <td style="width:50%">
    <asp:Label ID="Label3" runat="server" Text="First Name"></asp:Label>
            
</td>
    <td>
         <asp:TextBox ID="txtfirstname" Height="28px" Width="200px" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" SetFocusOnError="true" ForeColor="Red" runat="server"
    ErrorMessage="*" Display="Dynamic" ControlToValidate="txtfirstname"></asp:RequiredFieldValidator>
   <%-- <div>
     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" SetFocusOnError="true" ForeColor="Red" ErrorMessage="Only Alphabets are allowed" Display="Dynamic"
     ControlToValidate="txtfirstname" ValidationExpression="^[a-zA-Z\s]" ></asp:RegularExpressionValidator>
    </div>--%>
</td>
 </tr>
         <tr>
             <td style="width:50%">
    <asp:Label ID="Label4" runat="server" Text="Last Name"></asp:Label>
            
</td>
    <td>
         <asp:TextBox ID="txtlastname" Height="28px" Width="200px" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" SetFocusOnError="true" ForeColor="Red" runat="server"
    ErrorMessage="*" Display="Dynamic" ControlToValidate="txtlastname"></asp:RequiredFieldValidator>
<%-- <div>
     <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" SetFocusOnError="true" ForeColor="Red" ErrorMessage="Only Alphabets are allowed" Display="Dynamic"
    ControlToValidate="txtlastname" ValidationExpression="^[a-zA-Z\s]" ></asp:RegularExpressionValidator>
 </div>--%>
</td>
 </tr>
         <tr>
     <td>
         <asp:Label ID="Label5" runat="server" Text="Gender"></asp:Label>
     </td>
     <td>
         <asp:DropDownList ID="ddlgender" Height="28px" Width="208px" runat="server">
             <asp:ListItem Selected="True">Select your gender</asp:ListItem>
             <asp:ListItem>Male</asp:ListItem>
             <asp:ListItem>Female</asp:ListItem>
         </asp:DropDownList>

     </td>
 </tr>
         <tr>
     <td style="width:50%">
         <asp:Label ID="Label6" runat="server" Text="Email"></asp:Label>
     </td>
     <td>
         <asp:TextBox ID="txtEmail" Height="28" Width="200" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" SetFocusOnError="true" ForeColor="Red" ControlToValidate="txtEmail" Display="Dynamic" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
         <div>
           <asp:RegularExpressionValidator ID="RegularExpressionValidator3" SetFocusOnError="true" ForeColor="Red" ControlToValidate="txtEmail"
         Display="Dynamic" runat="server" ErrorMessage="Invalid Email format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
         </div>
     </td>
 </tr>
         <tr>
     <td>
         <asp:Label ID="Label7" runat="server" Text="Marital Status"></asp:Label>
     </td>
     <td>
         <asp:DropDownList ID="ddlmarital" Height="28" Width="208" runat="server">
             <asp:ListItem Selected="True">Select any option </asp:ListItem>
             <asp:ListItem>Single</asp:ListItem>
             <asp:ListItem>Married</asp:ListItem>
             <asp:ListItem>Divorced</asp:ListItem>
             <asp:ListItem>Widowed</asp:ListItem>
         </asp:DropDownList>
     </td>
 </tr>
         <tr>
     <td  style="width:50%">
         <asp:Label ID="Label8" runat="server" Text="Mobile"></asp:Label>
     </td>
     <td>
         <asp:TextBox ID="txtmob" Height="28px" Width="200px" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" SetFocusOnError="true" ControlToValidate="txtmob" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
        <div>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtmob"
  SetFocusOnError="true" ForeColor="Red" Display="Dynamic" ValidationExpression="^[6-9]\d{9}$" ErrorMessage="Incorrect Format"></asp:RegularExpressionValidator>
        </div>
     </td>
 </tr>
        
         <tr>
     <td style="width:50%">
         <asp:Label ID="Label10" runat="server" Text="Aadhar Number"></asp:Label>
     </td>
     <td>
         <asp:TextBox ID="txtAadhar" Height="28px" Width="200px" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ForeColor="Red" ControlToValidate="txtAadhar" Display="Dynamic" SetFocusOnError="true" ErrorMessage="*"></asp:RequiredFieldValidator>
         <%--<div>
              <asp:RegularExpressionValidator ID="RegularExpressionValidator5" ControlToValidate="txtAadhar" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server"
             ErrorMessage="Invalid Aadhar Format" ValidationExpression="^[2-9]{1}[0-9]{3}\\s[0-9]{4}\\s[0-9]{4}$"></asp:RegularExpressionValidator> 

         </div>--%>
 </td>
 </tr>
         <tr>
     <td style="width:50%">
     <asp:Label ID="Label11" runat="server" Text="Father Name"></asp:Label>
     </td>
     <td>
         <asp:TextBox ID="txtfathername" Height="28px" Width="200px" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="txtfathername" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"  runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
       <%-- <div>
             <asp:RegularExpressionValidator ControlToValidate="txtfathername" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"
 ValidationExpression="^[a-zA-Z\s]" ID="RegularExpressionValidator6" runat="server" ErrorMessage="Invalid Format"></asp:RegularExpressionValidator>
        </div>--%>
     </td>
 </tr>
         <tr>
      <td style="width:50%">
 <asp:Label ID="Label12" runat="server" Text="Mother Name"></asp:Label>
 </td>
 <td>
     <asp:TextBox ID="txtmothername" Height="28px" Width="200px" runat="server"></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="txtmothername" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"  runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
    <%-- <div>
         <asp:RegularExpressionValidator ControlToValidate="txtmothername" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"
ValidationExpression="^[a-zA-Z\s]" ID="RegularExpressionValidator7" runat="server" ErrorMessage="Invalid Format"></asp:RegularExpressionValidator>
     </div>--%>
 </td>
 </tr>
         <tr>
          <td style="width:50%">
<asp:Label ID="Label13" runat="server" Text="Nominee"></asp:Label>
</td>
<td>
    <asp:TextBox ID="txtnominee" Height="28px" Width="200px" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="txtnominee" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"  runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
   <%--<div>
        <asp:RegularExpressionValidator ControlToValidate="txtnominee" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"
 ValidationExpression="^[a-zA-Z\s]" ID="RegularExpressionValidator8" runat="server" ErrorMessage="Invalid Format"></asp:RegularExpressionValidator>
   </div>--%>
</td>
 </tr>
         <tr>
     <td style="width:50%">
         <asp:Label ID="Label14" runat="server" Text="Address"></asp:Label>
     </td>
     <td>
         <asp:TextBox ID="txtAddr" runat="server" Height="28px" Width="200px" TextMode="MultiLine"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ControlToValidate="txtAddr" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
     </td>
 </tr> 
         <tr>
     <td style="width:50%">
         <asp:Label ID="Label15" runat="server" Text="Initial Amount "></asp:Label>
     </td>
     <td>
         <asp:TextBox ID="txtAmount" Height="28px" Width="200px" TextMode="Number" runat="server"></asp:TextBox>
        <div>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ControlToValidate="txtAmount" runat="server" SetFocusOnError="true" Display="Dynamic" ForeColor="Red" ErrorMessage="Initial amount must be deposited"></asp:RequiredFieldValidator>
 <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ForeColor="Red" ControlToValidate="txtAmount" Display="Dynamic" SetFocusOnError="true" ValidationExpression="\d{1,5}" ErrorMessage="Amount length must be between 1-5 digits"></asp:RegularExpressionValidator>
        </div>
     </td>
 </tr>
         <tr>
     <td align="center"> <br />
         <asp:Button ID="btnAccount" Height="28px" Width="60px" runat="server" Text="Register" OnClick="btnAccount_Click" />
     </td>
     <td> <br />
      <asp:Button ID="cancelbtn" Height="28px" Width="60px" runat="server"  CausesValidation="false" Text="Cancel" OnClick="cancelbtn_Click" /> 
     </td>
 </tr>
         <tr>
      <td colspan="3">
     <div id="error" runat="server" style="color: red">
     </div>
 </td>
 </tr>


    </table>

</asp:Content>
