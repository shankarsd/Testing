<%@ Page Title="" Language="C#" MasterPageFile="~/Manager/Manager.Master" AutoEventWireup="true" CodeBehind="View_Test_Results.aspx.cs" Inherits="Test.Manager.View_Test_Results" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <script src="../assets/js/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js" type="text/javascript"></script>
    <link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" rel="Stylesheet" /> 


     <script type="text/javascript">
//         $(function () {
//             //$("#gv").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
//             //$("#<%=gv.ClientID %>").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
//             $("#gv").dataTable();
//         });
         
         $(document).ready(function () {
             $('#<%= gv.ClientID %>').DataTable();
         });
     </script>

<div class="col-md-12 col-sm-12 col-xs-12">
        <div class="panel panel-info">
            <div class="panel-heading">
                <h2>
                   PROJECT RESULT</h2>
            </div>
            <br />
            <div class="panel-body">
                <form id="Form1" role="form" runat="server">

                <div>
                    <asp:GridView ID="gv" runat="server" AutoGenerateColumns="False" class="table table-striped">
                        <Columns>
                            <asp:BoundField DataField="Name" HeaderText="Project Name" />
                            <asp:BoundField DataField="Date" HeaderText="Posted Date" />
                            <asp:BoundField DataField="Tst_Name" HeaderText="Tester Name" />
                            <asp:BoundField DataField="Description" HeaderText="Description" />
                            <asp:BoundField DataField="Pst_Date" HeaderText="Posted Date" />
                            <asp:BoundField DataField="Status" HeaderText="Status" />
                        </Columns>
                    </asp:GridView>
                </div>

                </form>
            </div>
        </div>
    </div>
</asp:Content>
