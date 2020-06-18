<%@ Page Title="" Language="C#" MasterPageFile="~/Manager/Manager.Master" AutoEventWireup="true" CodeBehind="Home_Page.aspx.cs" Inherits="Test.Manager.Home_Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div>
    <center><h4>Welcome to Manager Home Page</h4></center>
</div>
<hr />
<div class="outer-w3-agile col-xl">
                        <div class="stat-grid p-3 d-flex align-items-center justify-content-between bg-primary">
                            <div class="s-l">
                                <h5>Projects</h5>
                                <%--<p class="paragraph-agileits-w3layouts text-white">Lorem Ipsum</p>--%>
                            </div>
                            <div class="s-r">
                                <h6>
                                    <asp:Label ID="Label1" runat="server"></asp:Label>
                                    <i class="far fa-edit"></i>
                                </h6>
                            </div>
                        </div>
                        <div class="stat-grid p-3 mt-3 d-flex align-items-center justify-content-between bg-success">
                            <div class="s-l">
                                <h5>Allot Projects</h5>
                                
                            </div>
                            <div class="s-r">
                                <h6>
                                    <asp:Label ID="Label2" runat="server"></asp:Label>
                                    <i class="far fa-smile"></i>
                                </h6>
                            </div>
                        </div>
                        <div class="stat-grid p-3 mt-3 d-flex align-items-center justify-content-between bg-danger">
                            <div class="s-l">
                                <h5>Returned Projects</h5>
                                
                            </div>
                            <div class="s-r">
                                <h6>
                                    <asp:Label ID="Label3" runat="server"></asp:Label>
                                    <i class="fas fa-tasks"></i>
                                </h6>
                            </div>
                        </div>
                        <div class="stat-grid p-3 mt-3 d-flex align-items-center justify-content-between bg-warning">
                            <div class="s-l">
                                <h5>Project Result</h5>
                               
                            </div>
                            <div class="s-r">
                                <h6>
                                    <asp:Label ID="Label4" runat="server"></asp:Label>
                                    <i class="fas fa-users"></i>
                                </h6>
                            </div>
                        </div>
                    </div>
</asp:Content>
