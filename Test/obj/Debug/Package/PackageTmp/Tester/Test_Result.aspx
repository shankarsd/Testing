<%@ Page Title="" Language="C#" MasterPageFile="~/Tester/Tester.Master" AutoEventWireup="true" CodeBehind="Test_Result.aspx.cs" Inherits="Test.Tester.Test_Result" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="panel panel-info">
            <div class="panel-heading">
                <h2>
                   TEST RESULT</h2>
            </div>
            <hr />
            <br />
            <div class="panel-body">
                <form id="Form1" role="form" runat="server">

                <div>
                    <asp:GridView ID="gv" runat="server" AutoGenerateColumns="False" class="table table-striped">
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:RadioButton ID="RowSelector" runat="server" onclick="checkRadioBtn(this);" 
                                        ToolTip='<%# Eval("Alt_Id") %>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="Name" HeaderText="Project Name" />
                            <asp:BoundField DataField="Date" HeaderText="Date" />
                        </Columns>
                    </asp:GridView>
                </div>
              
                 <div class="form-group">
                    <label>
                        Enter Project Description</label>
                    <asp:TextBox ID="txtPr" runat="server" class="form-control" Height="300px" 
                         TextMode="MultiLine" Width="500px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="Enter Project." ControlToValidate="txtPr" ForeColor="Red" 
                        ValidationGroup="a"></asp:RequiredFieldValidator>
                </div>

                  <div class="pull-right">
                    <asp:Button ID="Button1" runat="server" Text="Finish" class="btn btn-info" 
                        ValidationGroup="a" onclick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" Text="Reject" class="btn btn-info" 
                        ValidationGroup="a" onclick="Button2_Click" />
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
