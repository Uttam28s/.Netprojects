<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor/DoctorMasterPage.master" AutoEventWireup="true" CodeFile="Doctor.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="col-lg-12">
        <section class="panel">
            <header class="panel-heading">
                Patient Registration
            </header>
            <div class="panel-body">
                <div class="position-center">
                    <div id="Main">
                        <div id="fname" class="form-group">
                            <label for="FirstName" class="col-lg-offset-6 control-label">Hospital</label><br /><br />
                            <asp:DropDownList ID="DropDownList1" CssClass="form-control input-lg" runat="server">
        </asp:DropDownList>
                            
                            <br />
                            <label for="FirstName" class="col-lg-2 col-sm-2 control-label">Doctor Id</label>
                            <asp:DropDownList ID="DropDownList2" CssClass="dropdown" style="margin-left:18px" runat="server">
        </asp:DropDownList>
                            <br />
                            <br />
                            <label for="FirstName" class="col-lg-2 col-sm-2 control-label">FirstName</label>
                            <div id="Password" style="display: none" class="wrap-input100 validate-input" data-validate="Firstname is required">
                            <div class="col-lg-10">
                                <asp:TextBox ID="FirstName" runat="server" CssClass="form-control"></asp:TextBox>
                                <br />
                            </div>
                                </div>
                        </div>
                        <br />
                        <div class="form-group wrap-input100 validate-input" data-validate="Lastname is required">
                            <label for="LastName" class="col-lg-2 col-sm-2 control-label">LastName</label>
                            <div class="col-lg-10">
                                <asp:TextBox ID="Lastname" runat="server" CssClass="form-control"></asp:TextBox>
                                <br />
                            </div>
                        </div>
                        <br />
                        <div class="form-group wrap-input100 validate-input" data-validate="Address is required">
                            <label for="Address" class="col-lg-2 col-sm-2 control-label">Address</label>
                            <div class="col-lg-10">
                                <asp:TextBox ID="Address" runat="server" CssClass="form-control"></asp:TextBox>
                                <br />
                            </div>
                        </div>
                        <div class="form-group wrap-input100 validate-input" data-validate="Phone is required">
                            <label for="Phone" class="col-lg-2 col-sm-2 control-label">Phone Number</label>
                            <div class="col-lg-10">
                                <asp:TextBox ID="Phone" runat="server" CssClass="form-control"></asp:TextBox>
                                <br />
                            </div>
                        </div>

                        <div class="form-group wrap-input100 validate-input" data-validate="Gender is required">
                            <label id="gender" class="col-lg-2 col-sm-2 control-label">Gender</label>
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="rbl" RepeatDirection="Horizontal" CellPadding="-1" CellSpacing="-1">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                        <div class="form-group wrap-input100 validate-input" data-validate="Blood Group is required">
                            <label id="BloodGroup" class="col-lg-2 col-sm-2 control-label">Blood Group</label>
                            <asp:RadioButtonList ID="RadioButtonList2" runat="server" CssClass="rbl" RepeatDirection="Horizontal">
                                <asp:ListItem>A</asp:ListItem>
                                <asp:ListItem>AB</asp:ListItem>
                                <asp:ListItem>B+</asp:ListItem>
                                <asp:ListItem>O-</asp:ListItem>
                                <asp:ListItem>O+</asp:ListItem>
                                <asp:ListItem>AB-</asp:ListItem>
                                <asp:ListItem>B-</asp:ListItem>
                                <asp:ListItem>A-</asp:ListItem>
                            </asp:RadioButtonList>
                            <br />
                        </div>
                        <div class="form-group wrap-input100 validate-input" data-validate="please enter dises">
                            <label for="Dieses" class="col-lg-2 col-sm-2 control-label">Dieses</label>
                            <div class="col-lg-10">
                                <asp:TextBox ID="Dieses" runat="server" CssClass="form-control"></asp:TextBox>
                                <br />
                            </div>
                        </div>
                      
                        <div class="form-group">
                            <div class="col-lg-offset-2 col-lg-10">
                                <label id="confirm" class="col-lg-2 col-sm-2 control-label" title=""></label>
                                <asp:Button ID="Button1" runat="server" CssClass="btn btn-danger" Text="Accept Patient" OnClientClick="MyFunction();" OnClick="Button1_Click" />
                            </div>
                        </div>
                        <br />
                        <asp:Label ID="lbmsg" runat="server"  Font-Size="25px"></asp:Label>
                    </div>
                </div>
            </div>
        </section>

    </div>


</asp:Content>

