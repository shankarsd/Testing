<%@ Page Title="" Language="C#" MasterPageFile="~/Manager/Manager.Master" AutoEventWireup="true" CodeBehind="Returned_Pro.aspx.cs" Inherits="Test.Manager.Returned_Pro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="col-md-12 col-sm-12 col-xs-12">
        <div class="panel panel-info">
            <div class="panel-heading">
                <h2>
                   RETURNED PROJECTS</h2>
            </div>
            <br />
            <div class="panel-body">
                <form id="Form1" role="form" runat="server">

                 <div class="form-group">
                    <label>
                        Select Tester</label>
                    <div class="form-control7">
                        <asp:DropDownList ID="ddlDes" runat="server" class="form-control">
                        </asp:DropDownList>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                            ErrorMessage="Select Tester." ControlToValidate="ddlDes" 
                            ForeColor="Red" Operator="NotEqual" ValidationGroup="a" 
                            ValueToCompare="--Select Tester--"></asp:CompareValidator>
                    </div>
                </div>

                <div>
                    <asp:GridView ID="gv" runat="server" AutoGenerateColumns="False" class="table table-striped">
                        <Columns>
                             <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:RadioButton ID="RowSelector" runat="server" onclick="checkRadioBtn(this);" 
                                        ToolTip='<%# Eval("Pr_Id") %>' AccessKey='<%# Eval("Alt_Id") %>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="Name" HeaderText="Project Name" />
                            <asp:BoundField DataField="Description" HeaderText="Description" />
                            <asp:BoundField DataField="Pst_Date" HeaderText="Posted Date" />
                            <asp:BoundField DataField="Status" HeaderText="Status" />
                        </Columns>
                    </asp:GridView>
                </div>
              
                 <div class="pull-right">
                    <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-info" 
                        ValidationGroup="a" onclick="Button1_Click" />
                </div> 
                </form>
            </div>
        </div>
    </div>

<script type="text/javascript">
     function checkRadioBtn(id) {
         var gv = document.getElementById('<%=gv.ClientID %>');

         for (var i = 1; i < gv.rows.length; i++) {
             var radioBtn = gv.rows[i].cells[0].getElementsByTagName("input");

             // Check if the id not same
             if (radioBtn[0].id != id.id) {
                 radioBtn[0].checked = false;
             }
         }
     }
</script>
</asp:Content>
