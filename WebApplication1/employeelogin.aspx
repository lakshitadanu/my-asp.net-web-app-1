<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" Codefile="employeelogin.aspx.cs" Inherits="WebApplication1.employeelogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="120" src="images/295128.png" />
                                </center>
                            </div>
                        </div>
                         <div class="row">
                            <div class="col">
                                <center>
                                   <h3> EMPLOYEE LOGIN </h3>
                                </center>
                            </div>
                        </div>
                         <div class="row">
                            <div class="col">
                                <hr />
                                
                            </div>
                        </div>
                         <div class="row">
                            <div class="col">
                                <label> EMPLOYEE NAME</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Name"></asp:TextBox>
                                </div>
                                 <label> EMPLOYEE ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="ID"  ></asp:TextBox>
                                </div>
                                
                                 <label>PASSWORD</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtDate" runat="server" TextMode="Password" placeholder="Password" ></asp:TextBox>
                                   
                                </div>

                                 <div class="form-group">

                                  
                                    <asp:Button ID="Button" class="btn btn-primary w-100 " runat="server" Text="LOGIN" onclick="Button_Click" />
                                     
                                     <asp:Label ID="ErrorLabel" runat="server" Text="" ForeColor="Blue"></asp:Label>

                                </div> 
                                

                               
                                 
                                </div>
                                   

                               
                                 
                               
                                
                                
                            </div>
                       

                        
                         
                                  
                               
                                     

                                 
                                     
                        

                       

                        

                    </div>
                </div>

                <a href="homepage.aspx"> << Back To Home</a>

            </div>
        </div>
    </div>

</asp:Content>
