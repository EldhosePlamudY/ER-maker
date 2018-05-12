<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Entity_new.aspx.cs" Inherits="Entity_new" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {            color: #000000;
        }
        .style2
        {
            width: 145px;
        }
        .style3
        {
            width: 145px;
            color: #000000;
        }
        </style>
    <meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
</head>
</head>
<body id="top">
<%--<form id="form2" runat="server">--%>
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
      <form class="clear" method="post" action="#">
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
</div>
</head>
<body style="width: 1180px; height: 82px">
    <form id="form1" runat="server">
    <div>
    
        <table style="width:47%;">
            <tr>
                <td class="style1" colspan="2">
                    Entities</td>
            </tr>
            <tr>
                <td class="style3">
                    Entity Name</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Enter the Entity"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Add" onclick="Button1_Click" 
                        ForeColor="Black" />
                    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Next" 
                        CausesValidation="False" ForeColor="Black" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
