<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor/DoctorMasterPage.master" AutoEventWireup="true" CodeFile="Patients.aspx.cs" Inherits="Doctor_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:Repeater ID="Repeater1" runat="server">  
            <ItemTemplate>  
                <div>  
                    <table class="table-bordered">  
                        <tr>  
                            <th><%#Eval("FirstName")%></th>  
                        </tr>  
                        <tr>  
                            <td>Address :- </td>  
                            <td><%#Eval("Address")%></td>  
                        </tr>  
                        <tr>  
                            <td>Phone No. :- </td>  
                            <td><%#Eval("Phone")%></td>  
                        </tr>  
                        <tr>  
                            <td>Gender :- </td>
                            <td><%#Eval("Gender")%></td>  
                        </tr>  
                        <tr>  
                            <td>Blood Group :- </td> 
                            
                            <td><%#Eval("BloodGroup")%></td>  
                        </tr>  
                        <tr>  
                            <td>Hospital :- </td>  
                            <td><%#Eval("Hospital")%></td>  
                        </tr>
                        <tr>  
                            <td>Dises :- </td>  
                            <td><%#Eval("Dieses")%></td>  
                        </tr>  
                    </table>  
                </div>  
            </ItemTemplate>  
        </asp:Repeater> 
</asp:Content>

