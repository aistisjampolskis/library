<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookissuing.aspx.cs" Inherits="WebApplication1.adminbookissuing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <script type="text/javascript">
            $(document).ready(function () {
                $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
            });
        </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Book Issuing</h4>

                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="img/istockphoto-157482029-612x612.jpg" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">


                            <div class="col-md-6">
                                <label>Member ID</label>

                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Member id"></asp:TextBox>
                                </div>

                            </div>
                            <div class="col-md-6">
                                <label>Book ID </label>

                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Book ID"></asp:TextBox>
                                        <asp:Button class="btn btn-dark" ID="Button1" runat="server" Text="Go" OnClick="Button1_Click1" />
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">


                            <div class="col-md-6">
                                <label>Member Name</label>

                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Member name" ReadOnly="True"></asp:TextBox>
                                </div>

                            </div>

                            <div class="col-md-6">
                                <label>Book Name</label>

                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Book name" ReadOnly="True"></asp:TextBox>
                                </div>

                            </div>

                        </div>

                        <div class="row">


                            <div class="col-md-6">
                                <label>Issue Date</label>

                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Start date" TextMode="Date"></asp:TextBox>
                                </div>

                            </div>

                            <div class="col-md-6">
                                <label>Due Date</label>

                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="End date" TextMode="Date"></asp:TextBox>
                                </div>

                            </div>

                        </div>

                        <div class="row">
                            <div class="col-6">
                                <asp:Button class="btn btn-primary" ID="Button2" runat="server" Text="Issue" OnClick="Button2_Click1" />
                            </div>

                            <div class="col-6">
                                <asp:Button class="btn btn-outline-secondary" ID="Button3" runat="server" Text="Return" OnClick="Button3_Click" />
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Issued book list</h4>

                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr>
                                <center>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=localhost;Initial Catalog=elibraryDB;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [book_issue_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowDataBound="GridView1_RowDataBound">
                                    <Columns>
                                        <asp:BoundField DataField="member_id" HeaderText="Mmeber ID" SortExpression="member_id" />
                                        <asp:BoundField DataField="member_name" HeaderText="Member Name" SortExpression="member_name" />
                                        <asp:BoundField DataField="book_id" HeaderText="Book ID" SortExpression="book_id" />
                                        <asp:BoundField DataField="book_name" HeaderText="Book Name" SortExpression="book_name" />
                                        <asp:BoundField DataField="issue_date" HeaderText="Issue Date" SortExpression="issue_date" />
                                        <asp:BoundField DataField="due_date" HeaderText="Due Date" SortExpression="due_date" />
                                    </Columns>
                                </asp:GridView>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <a href="homepage.aspx">Bact to home</a>
        <br />
        <br />
    </div>



</asp:Content>
