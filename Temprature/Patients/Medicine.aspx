<%@ Page Title="" Language="C#" MasterPageFile="~/Patients/PatientMasterPage.master" AutoEventWireup="true" CodeFile="Medicine.aspx.cs" Inherits="Patients_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <asp:Repeater ID="Repeater1" runat="server">  
            <ItemTemplate>  
                <div>  
                    <table class="table-bordered table-condensed ">  
                        <tr>  
                            <td>Madicine name :- </td>  
                            <td><%#Eval("Medicine_name")%></td>  
                        </tr>  
                        <tr>  
                            <td>Time :- </td>  
                            <td><%#Eval("Time")%></td>  
                        </tr>  
                    </table>  
                </div>  
            </ItemTemplate>  
        </asp:Repeater> 
</asp:Content>

