<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" Codefile="taxform.aspx.cs" Inherits="WebApplication1.taxform" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-fluid">
      <div class="row">
         <div class="col-md-12">
            
               <div class="card-body">
                    <div class="row">
                            <div class="col">
                                <center>
                                    <img width="300" src="images/download%20(1).png" />
                                   <h4> Tax Registration Form </h4>
                                </center>
                            </div>
                             
                        
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label>
                                        Employee Name
                                    </label>
                                    <asp:TextBox CssClass="form-control" ID="fullname" runat="server" placeholder="Name" TextMode="SingleLine" ></asp:TextBox>
                                    </div>
                                </div>
                        </div>
                              <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label>
                                        Employee ID
                                    </label>
                                    <asp:TextBox  CssClass="form-control" ID="ID" runat="server" placeholder="ID" TextMode="SingleLine"></asp:TextBox>
                                    </div>
                                </div>
                        </div>
                        
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label>
                                        Mobile Number:
                                    </label>
                                    <asp:TextBox CssClass="form-control" ID="mobileno" runat="server" placeholder="Mobile No" TextMode="Phone"></asp:TextBox>
                                    </div>
                                </div>
                        </div>
                              
                             <div class="row">
                                 <div class="col-md-4">
                                     <lable>1. Monthy House Rent Paid (In Rupees)</lable>
                                     
                                     <asp:TextBox ID="ValueTextBox" runat="server" CssClass="form-control mb-3"></asp:TextBox>
                                     <asp:Button ID="Button1" runat="server" Text="Enter" OnClick="Button1_Click" />
                                     

                                 </div>
                                 <div class="col-md-4" id="additionalColumns" runat="server" visible="false">
                                     <label>House Owner Name</label>
                                     <asp:Textbox ID="OwnerLabel" runat="server" CssClass="mb-3" ></asp:Textbox>
                                     <lable>PAN NO.</lable>
                                     <asp:Textbox ID="PanLabel" runat="server" CssClass="mb-3" ></asp:Textbox>

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
                                         <label>
                                             2. Premium paid from LIC other than Salary Savings Schemes maturing in 2022-23

                                         </label>

                                     </div>

                                 </div>

                             </div>
                             <div class="row">
                                 <div class="col-md-4">
                                     <label>1.1 Policy No.</label>                             
                                     <div class="form-group">
                                         <asp:TextBox CssClass="form-control" ID="TextBox211" runat="server" placeholder="Policy No." TextMode="Number"></asp:TextBox>
                                        
                                     </div>

                                 </div>
                                 <div class="col-md-4">
                                     <label>1.2 Submission Date</label>                             
                                     <div class="form-group">
                                         <asp:TextBox CssClass="form-control" ID="TextBox212" runat="server" placeholder="dd/mm/yyyy" TextMode="Date"></asp:TextBox>

                                     </div>

                                 </div>
                                  <div class="col-md-4">
        <label>1.3 Premium Amount</label>                             
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox213" runat="server" placeholder="Amount" TextMode="Number"></asp:TextBox>
            
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-4">
        <label>2.1 Policy No.</label>                             
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox221" runat="server" placeholder="Policy No." TextMode="Number"></asp:TextBox>
            
        </div>
    </div>
     <div class="col-md-4">
        <label>2.2 Submission Date</label>                             
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox222" runat="server" placeholder="dd/mm/yyyy" TextMode="Date"></asp:TextBox>
            
        </div>
    </div>
    
    <div class="col-md-4">
        <label>2.3 Premium Amount</label>                             
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox223" runat="server" placeholder="Amount" TextMode="Number"></asp:TextBox>
            
        </div>
    </div>
</div>
                             <div class="row">
    <div class="col-md-4">
        <label>2.1 Policy No.</label>                             
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox231" runat="server" placeholder="Policy No." TextMode="Number"></asp:TextBox>
            
        </div>
    </div>
    
    <div class="col-md-4">
        <label>2.2 Submission Date</label>                             
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox232" runat="server" placeholder="dd/mm/yyyy" TextMode="Date"></asp:TextBox>
            
        </div>
    </div>
                                  <div class="col-md-4">
        <label>2.3 Premium Amount</label>                             
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox233" runat="server" placeholder="Amount" TextMode="Number"></asp:TextBox>
            
        </div>
    </div>
</div>

                             <div class="row">
    <div class="col">
        <div class="form-group">
            <label>
            3. Medical Policy (Exemption under 80D)
            </label>
     
            </div>
    </div>
</div>


<div class="row">
    <div class="col-md-4">
        <label>1.1 Policy No.</label>                             
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox311" runat="server" placeholder="Policy No." TextMode="Number"></asp:TextBox>
            
        </div>
    </div>
    <div class="col-md-4">
        <label>1.2 Submission Date</label>                             
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox312" runat="server" placeholder="dd/mm/yyyy" TextMode="Date"></asp:TextBox>
            
        </div>
    </div>
    
    <div class="col-md-4">
        <label>1.3 Premium Amount</label>                             
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox313" runat="server" placeholder="Amount" TextMode="Number"></asp:TextBox>
            
        </div>
    </div>
</div>
                             <div class="row">
    <div class="col-md-4">
        <label>2.1 Policy No.</label>                             
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox321" runat="server" placeholder="Policy No." TextMode="Number"></asp:TextBox>
            
        </div>
    </div>
    
    <div class="col-md-4">
        <label>2.2 Submission Date</label>                             
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox322" runat="server" placeholder="dd/mm/yyyy" TextMode="Date"></asp:TextBox>
            
        </div>
    </div>
                                   <div class="col-md-4">
        <label>2.3 Premium Amount</label>                             
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox323" runat="server" placeholder="Amount" TextMode="Number"></asp:TextBox>
            
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-4">
        <label>2.1 Policy No.</label>                             
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox331" runat="server" placeholder="Policy No." TextMode="Number"></asp:TextBox>
            
        </div>
    </div>
     <div class="col-md-4">
        <label>2.2 Submission Date</label>                             
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox332" runat="server" placeholder="dd/mm/yyyy" TextMode="Date"></asp:TextBox>
            
        </div>
    </div>
    
    <div class="col-md-4">
        <label>2.3 Premium Amount</label>                             
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox333" runat="server" placeholder="Amount" TextMode="Number"></asp:TextBox>
            
        </div>
    </div>
</div>
                            
                        
                       

                            <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label>
                                        4. Submit certificate to get exemption under handicapped 80 DD
                                    </label>
                                    
                                    
                                     <asp:FileUpload onchange="readURL(this);" class="form-control" ID="FileUpload1" runat="server" />
                                    
                                   
                                    <h6>% Discount</h6>
                                     <asp:TextBox CssClass="form-control" ID="Discount" runat="server" placeholder="Discount" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                            
                           
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label>
                                        5. Reservation test or interest (80E) for higher education by attaching bank letter. 
                                    </label>
                                      <asp:FileUpload onchange="readURL(this);" class="form-control" ID="FileUpload2" runat="server" />
                                    
                                    <asp:TextBox CssClass="form-control" ID="Reservation" runat="server" placeholder="Amount" TextMode="Number"></asp:TextBox>
                                </div>
                                
                               
                                </div>
                          </div>

                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label>
                                        6.NPS Plan (80CCD)
                                    </label>
                                        <asp:TextBox CssClass="form-control" ID="NPS" runat="server" placeholder="Amount" TextMode="Number"></asp:TextBox>
                                        </div>
                                </div>
                        </div>
                        
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label>
                                        7. 8th Issue National Savings Certificates purchased during 2021-22 (NSC VIII Service) (80C)
                                    </label>
                                          <asp:FileUpload onchange="readURL(this);" class="form-control" ID="FileUpload3" runat="server" />
                                    
                                        </div>
                                </div>
                        </div>
                         <div class="row">
    <div class="col">
        <div class="form-group">
            <label>
            8. Details of ULIP Subscribers
            </label>     
            </div>
    </div>
</div>

<div class="row">
    <div class="col-md-4">
        <label>1.1 Policy No.</label>                             
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox811" runat="server" placeholder="Policy No." TextMode="Number"></asp:TextBox>
            
        </div>
    </div>
    <div class="col-md-4">
        <label>1.2 Submission Date</label>                             
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox812" runat="server" placeholder="dd/mm/yyyy" TextMode="Date"></asp:TextBox>
            
        </div>
    </div>
    
    <div class="col-md-4">
        <label>1.3 Premium Amount</label>                             
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox813" runat="server" placeholder="Amount" TextMode="Number"></asp:TextBox>
            
        </div>
    </div>
</div>
                             <div class="row">
    <div class="col-md-4">
        <label>2.1 Policy No.</label>                             
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox821" runat="server" placeholder="Policy No." TextMode="Number"></asp:TextBox>
            
        </div>
    </div>
    
    <div class="col-md-4">
        <label>2.2 Submission Date</label>                             
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox822" runat="server" placeholder="dd/mm/yyyy" TextMode="Date"></asp:TextBox>
            
        </div>
    </div>
                                   <div class="col-md-4">
        <label>2.3 Premium Amount</label>                             
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox823" runat="server" placeholder="Amount" TextMode="Number"></asp:TextBox>
            
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-4">
        <label>3.1 Policy No.</label>                             
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox831" runat="server" placeholder="Policy No." TextMode="Number"></asp:TextBox>
            
        </div>
    </div>
      <div class="col-md-4">
        <label>3.2 Submission Date</label>                             
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox832" runat="server" placeholder="dd/mm/yyyy" TextMode="Date"></asp:TextBox>
            
        </div>
    </div>
    
    <div class="col-md-4">
        <label>3.3 Premium Amount</label>                             
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox833" runat="server" placeholder="Amount" TextMode="Number"></asp:TextBox>
            
        </div>
    </div>
</div>
                        
                        
                        
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label>
                                        9. PPF deposited during the year
                                    </label>
                                        <asp:TextBox CssClass="form-control" ID="ppf" runat="server" placeholder="Amount" TextMode="Number"></asp:TextBox>
                                        </div>
                                </div>
                        </div>
                        
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label>
                                        10. Investment in Mutual Funds during the year
                                    </label>
                                        <asp:TextBox CssClass="form-control" ID="mutualfunds" runat="server" placeholder="Amount" TextMode="Number"></asp:TextBox>
                                        </div>
                                </div>
                        </div>
                        
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label>
                                        11. Investment in Corporate Bonds like ICICI, IDBI, etc.
                                    </label>
                                        <asp:TextBox CssClass="form-control" ID="corporatebonds" runat="server" placeholder="Amount" TextMode="Number"></asp:TextBox>
                                        </div>
                                </div>
                        </div>
                        
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label>
                                        12. Full repayment of loan/investment during the previous year in respect of house construction/purchase
                                    </label>
                                        <asp:TextBox CssClass="form-control" ID="houseloan" runat="server" placeholder="Yes/No" TextMode="SingleLine"></asp:TextBox>
                                        </div>
                                </div>
                        </div>
                        
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <h6>No exemption applicable on purchase of land,improvement of house, repairs.</h6>
                                    <label>
                                        i) Property Address
                                    </label>
                                        <asp:TextBox CssClass="form-control" ID="houseloan1" runat="server" placeholder="Address" TextMode="MultiLine"></asp:TextBox>
                                    
                                    <label>
                                        ii) Amount of loan/investment repaid in full during the year.
                                    </label>
                                        <asp:TextBox CssClass="form-control" ID="houseloan2" runat="server" placeholder="Amount" TextMode="Number"></asp:TextBox>
                                    <h6>(Only Principal to be indicated on the basis of letter issued by the lending agency.)</h6>
                                    
                                    <label>
                                        iii) Lending Agency Name
                                    </label>
                                        <asp:TextBox CssClass="form-control" ID="houseloan3" runat="server" placeholder="Name" TextMode="SingleLine"></asp:TextBox>
                                    
                                    <label>
                                        iv) DDA/DGA/U.P. Housing Develeopment.
                                        </label>
                                        <asp:TextBox CssClass="form-control" ID="houseloan4" runat="server" placeholder="Name" TextMode="SingleLine"></asp:TextBox>
                                    <h6>(Purchased from(Write Name)</h6>
                                     
                                    <label>
                                        v) Construction Completion Certificate/Possession Date
                                        </label>
                                         <asp:FileUpload onchange="readURL(this);" class="form-control" ID="FileUpload4" runat="server" />
                                    
                                    
                                    <label>
                                        vi) Purpose of loan as indicated by HDFC/LIC/Bank
                                        </label>
                                        <asp:TextBox CssClass="form-control" ID="houseloan6" runat="server" placeholder="Purpose" TextMode="MultiLine"></asp:TextBox>
                                    
                                    
                                        </div>
                                </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label>
                                        13. Interest payment on building construction loan in case of self use (Submit Form 12C)
                                    </label>
                                        <asp:TextBox CssClass="form-control" ID="interest" runat="server" placeholder="Interest Rate" TextMode="Number"></asp:TextBox>
                                        </div>
                                </div>
                        </div>
                        
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label>
                                        14. Tuition fees paid on children's education
                                    </label>
                                        </div>
                                </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-md-6">
                                <label>Class</label>
                                <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="childclass1" runat="server" placeholder="Class" TextMode="Number"></asp:TextBox>
                                        </div>
                                </div>
                            
                            <div class="col-md-6">
                                <label>Amount of Money</label>
                                <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="childedu" runat="server" placeholder="Amount" TextMode="Number"></asp:TextBox>
                                        </div>
                                </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-md-6">
                                <label>Class</label>
                                <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="childclass2" runat="server" placeholder="Class" TextMode="Number"></asp:TextBox>
                                        </div>
                                </div>
                            
                            <div class="col-md-6">
                                <label>Amount of Money</label>
                                <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="childedu2" runat="server" placeholder="Amount" TextMode="Number"></asp:TextBox>
                                        </div>
                                </div>
                        </div>

                        
                        
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label>
                                        15. Full address of employer other than spouse,if any
                                    </label>
                                    <asp:TextBox CssClass="form-control" ID="employer" runat="server" placeholder="Address" TextMode="MultiLine"></asp:TextBox>
                                    </div>
                                </div>
                        </div>
                        
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label>
                                        16. Any other savings details.
                                    </label>
                                    <asp:TextBox CssClass="form-control" ID="anyother" runat="server" placeholder="Address" TextMode="MultiLine"></asp:TextBox>
                                    </div>
                                <center>
                                    <asp:Button ID="Button2" runat="server" Text="Save As Draft" />
                                    <asp:Button ID="Button3" runat="server" Text="Submit" OnClick="Button3_Click" />

                                    

                                </center>
                                 
                                </div>
                        </div>

                        
                       
                        
                                               
                           
                        
                        
                        
                        
                       
                             
                </div>
               
            </div>
                 
                      
             
        
            
             
                  
            </div>
          </div>
         </div>
     

</asp:Content>
                           
