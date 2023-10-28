<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" Codefile="user.aspx.cs" Inherits="WebApplication1.user" %>
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
                                    <img width="100" src="images/1687688324headerimg.png" />
                                </center>
                            </div>
                        </div>
                         <div class="row">
                            <div class="col">
                                <center>
                                   <h3> INCOME TAX </h3>
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
                                
                                
                                <div class="form-group">
                                    <label for="Select">Kindly select an income tax option:</label>
                                    <select class="form-control" id="pageSelect" onchange="redirect()">
                                        <option value="" disabled selected>Select an option</option>
                                        <option value="homepage.aspx">New scheme</option>
                                        <option value="WebForm3.aspx">Old scheme</option>
                                        

                                    </select>

                                </div>
                                <script>
                                    function redirect() {
                                        var selectedPage = document.getElementById("pageSelect").value;
                                        if (selectedPage) {
                                            window.location.href = selectedPage;
                                        }
                                    }
                                </script>
    
                                
                                    
                                   

                                
                               
 
                                
                               
                                
                                

                                 
                                

                               
                                 
                                </div>
                                   

                               
                                 
                               
                                
                                
                            </div>
                       

                        
                         
                                  
                               
                                     

                                 
                                     
                        

                       

                        

                    </div>
                </div>

           

            </div>
        </div>
    </div>
</asp:Content>
