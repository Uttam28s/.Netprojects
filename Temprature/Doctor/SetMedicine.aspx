<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor/DoctorMasterPage.master" AutoEventWireup="true" CodeFile="SetMedicine.aspx.cs" Inherits="Doctor_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:DropDownList ID="DropDownList1" CssClass="form-control input-lg" runat="server">
    </asp:DropDownList>
    <br />
    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <div>
                <table class="table-hover">
                    <tr>
                        <th class="form-control"><%#Eval("FirstName")%></th>
                    </tr>
                </table>
            </div>
        </ItemTemplate>
    </asp:Repeater>
    <br />
    <div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" EmptyDataText="No records has been added." Width="950">
        <Columns>
            <asp:BoundField DataField="Medicine_name" HeaderText="Madicine Name:" />
            <asp:BoundField DataField="Time" HeaderText="Time" />
            <asp:BoundField DataField="Uid" HeaderText="ID" />
        </Columns>
    </asp:GridView>
    <table border="1" cellpadding="0" cellspacing="0" class="table " style="border-collapse: collapse; ">
        <tr>
            <td >Madicine Name:<br />
                <asp:TextBox CssClass="form-control" ID="txtName" runat="server" />
            </td>
            <td>Time:<br />
                <asp:TextBox CssClass="form-control" ID="txtTime" runat="server"/>
            </td>
            <td>
                <asp:Button CssClass="form-control" ID="btnAdd" runat="server" Text="Add" OnClick="Insert" />
            </td>
        </tr>
    </table>
        </div>
</asp:Content>

