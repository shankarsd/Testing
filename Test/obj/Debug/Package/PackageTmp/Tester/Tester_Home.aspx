<%@ Page Title="" Language="C#" MasterPageFile="~/Tester/Tester.Master" AutoEventWireup="true" CodeBehind="Tester_Home.aspx.cs" Inherits="Test.Tester.Tester_Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div>
    <center><h4>Welcome to 
        <asp:Label ID="lblName" runat="server" ForeColor="#0066FF"></asp:Label> Home Page</h4></center>
</div>
<hr />
<div class="outer-w3-agile col-xl">
                        <div class="stat-grid p-3 d-flex align-items-center justify-content-between bg-primary">
                            <div class="s-l">
                                <h5>Alloted Projects</h5>
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
                                <h5></h5>
                                
                            </div>
                            <div class="s-r">
                                <h6>
                                    <asp:Label ID="Label2" runat="server"></asp:Label>
                                    <%--<i class="far fa-smile"></i>--%>
                                </h6>
                            </div>
                        </div>
                        <div class="stat-grid p-3 mt-3 d-flex align-items-center justify-content-between bg-danger">
                            <div class="s-l">
                                <h5>Test Project</h5>
                                
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
                                <h5></h5>
                               
                            </div>
                            <div class="s-r">
                                <h6>
                                    <asp:Label ID="Label4" runat="server"></asp:Label>
                                    <%--<i class="fas fa-users"></i>--%>
                                </h6>
                            </div>
                        </div>
                    </div>
</asp:Content>
