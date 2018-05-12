<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DerivedAttribute_new.aspx.cs" Inherits="DerivedAttribute_new" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<%--<head id="Head1" runat="server">--%>
    <title></title>
    <form id="form1" runat="server">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
</head>
</head>
<body id="top">

<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div class="wrapper row0">
  <div id="topbar" class="clear"> 
    <!-- ################################################################################################ -->
    <%--<nav>
      <ul>
        <li><a href="#">Home</a></li>
        <li><a href="#">Contact Us</a></li>
        <li><a href="#">A - Z Index</a></li>
        <li><a href="#">Student Login</a></li>
        <li><a href="#">Staff Login</a></li>
      </ul>
    </nav>--%>
    <!-- ################################################################################################ --> 
  </div>
</div>
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div class="wrapper row1">
  <header id="header" class="clear"> 
    <!-- ################################################################################################ -->
    <div id="logo" class="fl_left">
      <h1><a href="index.html">Automated ER Diagram Maker</a></h1>
      <%--<p>Free Website Template</p>--%>
    </div>
    <div class="fl_right">
     
        <%--<fieldset>
          <legend>Search:</legend>
          <input type="text" value="" placeholder="Search Here">
          <button class="fa fa-search" type="submit" title="Search"><em>Search</em></button>
        </fieldset>
     --%>
    </div>
    <!-- ################################################################################################ --> 
  </header>
</div>
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div class="wrapper row2">
  <div class="rounded">
    <nav id="mainav" class="clear"> 
      <!-- ################################################################################################ -->
      <ul class="clear">
        <li class="active"><a href="Login_new.aspx">Home</a></li>
        <li><a  href="Entity_new.aspx">Add Entity</a>
          
        </li>
        <li><a class="drop" href="#">Add Attributes</a>
          <ul>
            <li><a href="Attribute_new.aspx">Attribute</a></li>
            <li><a  href="DerivedAttribute_new.aspx">Derived</a>
            <li><a  href="MultyvaluedAttribute_new.aspx">Multi-Valued</a>
              </li>
          </ul>
        </li>
        <li><a href="Relationship_new.aspx">Add Relation</a></li>
        <li><a href="Login_new.aspx">Logout</a></li>
       
      </ul>
      <!-- ################################################################################################ --> 
    </nav>
  </div>
</div><div>
  <table style="width:41%;">
            <tr>
                <td class="style1" colspan="2">
                    Derived Attributes</td>
            </tr>
            <tr>
                <td class="style1">
                    Entity Name</td>
                <td class="style1">
                    <asp:DropDownList ID="DropDownList1" runat="server" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                        ForeColor="Black">
                        <asp:ListItem>Select Entity</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="DropDownList1" ErrorMessage="Select Entity" 
                        InitialValue="Select Entity"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Attribute&nbsp; Name</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Enter The Attribute"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Add" onclick="Button1_Click" 
                        style="height: 26px" ForeColor="Black" />
                    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Next" 
                        CausesValidation="False" ForeColor="Black" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

