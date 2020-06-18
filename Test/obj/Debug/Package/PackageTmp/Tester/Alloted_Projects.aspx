<%@ Page Title="" Language="C#" MasterPageFile="~/Tester/Tester.Master" AutoEventWireup="true" CodeBehind="Alloted_Projects.aspx.cs" Inherits="Test.Tester.Alloted_Projects" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="col-md-12 col-sm-12 col-xs-12">
        <div class="panel panel-info">
            <div class="panel-heading">
                <h2>
                   ALLOTED PROJECTS</h2>
            </div>
            <br />
            <div class="panel-body">
                <form id="Form1" role="form" runat="server">

                <div>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" class="table table-striped">
                        <Columns>
                            <asp:BoundField DataField="Name" HeaderText="Name" />
                            <asp:BoundField DataField="Date" HeaderText="Posted Date" />
                            <asp:BoundField DataField="Status" HeaderText="Status" />
                        </Columns>
                    </asp:GridView>
                </div>
              
                </form>
            </div>
        </div>
    </div>
</asp:Content>
