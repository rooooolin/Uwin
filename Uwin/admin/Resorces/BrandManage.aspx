﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BrandManage.aspx.cs" Inherits="Uwin.admin.Resorces.BrandManage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>品牌管理</title>
<link href="../css/table.css" type="text/css" rel="stylesheet" />
    <link href="../../css/PageIndex.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="../js/jquery-1.6.4.min.js"></script>
    <script type="text/javascript" src="../js/function.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="navi"><span class="option"><a href="AddBrand.aspx">新增品牌</a></span><span class="posi"><b>当前位置：<asp:SiteMapPath ID="SiteMapPath1" runat="server"></asp:SiteMapPath> </b></span></div>
        <asp:Repeater runat="server" ID="BrandRepeter">
            <HeaderTemplate>
            <table id="mytable" cellspacing="0" summary="The technical specifications of the Apple PowerMac G5 series">
                <caption></caption>
                
                <tr>
                    <th width="30%"><span class="btn_all" onclick="checkAll(this);">全选</span></th>
                    <th width="30%">ID</th>
                    <th width="20%">品牌名称</th>
                 <th width="20%">logo</th>
                </tr>
                </table>
                </HeaderTemplate>
            <ItemTemplate>
            <table id="mytable" cellspacing="2" summary="The technical specifications of the Apple PowerMac G5 series">
                <tr>
                    <td width="30%"><asp:CheckBox CssClass="checkall" ID="BrandCheck" runat="server" /></td>
                    <td width="30%"><asp:Label ID="BrandID" runat="server" Text='<%#Eval("BrandID")%>'></asp:Label></td>
                     <td width="20%"><asp:Label ID="BrandName" runat="server" Text='<%#Eval("BrandName") %>'></asp:Label></td>
                     <td width="20%"><asp:Image ID="BrandLogo" ImageUrl='../../FileUpload/Images/Brand/<%#Eval("BrandLogo") %>' runat="server"></asp:Image> </td>
                </tr>
               

            </table>
                </ItemTemplate>
            </asp:Repeater>
        <div class="btnmenu">
               
                  <asp:LinkButton ID="DelBtn" runat="server" onclick="DelBtn_Click" OnClientClick="return confirm( '确定要删除这些记录吗？ ');">批量删除</asp:LinkButton>
                 

        </div>
    </div>
      
         <div style=" width:95%; float:right; height:30px; margin-right:10px; margin-top:10px; text-align:right;">
                <div id="PageInfo" runat="server" class="anpager"></div>
            </div>
        </form>
</body>
</html>