<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" Codefile="WebForm3.aspx.cs" Inherits="WebApplication1.WebForm3" %>
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
                                        
                                        <b>
                                            Employee Name

                                            <span class="text-danger">*</span>

                                        </b>
                                        
                                        
                                    </label>
                                   
                                    <asp:TextBox CssClass="form-control" ID="fullname" runat="server" placeholder="Name" TextMode="SingleLine" ></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvFullname" runat="server" ControlToValidate="fullname"
    InitialValue="" ErrorMessage="Name is required." ForeColor="Red" Display="Dynamic">
</asp:RequiredFieldValidator>
                                    

                                    </div>
                                </div>
                        </div>
                              <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label>
                                        <b>
                                            Employee ID

                                            <span class="text-danger">*</span>

                                        </b>
                                        
                                    </label>
                                    <asp:TextBox  CssClass="form-control" ID="ID" runat="server" placeholder="ID" TextMode="SingleLine"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ID"
    InitialValue="" ErrorMessage="ID is required." ForeColor="Red" Display="Dynamic">
</asp:RequiredFieldValidator>

                                    </div>
                                </div>
                        </div>
                        
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label>
                                        <b>
                                            Mobile Number:

                                            <span class="text-danger">*</span>

                                        </b>
                                        
                                    </label>
                                    <asp:TextBox CssClass="form-control" ID="mobileno" runat="server" placeholder="Mobile No" TextMode="Phone"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvMobileNo" runat="server" ControlToValidate="mobileno"
    InitialValue="" ErrorMessage="Mobile No is required." ForeColor="Red" Display="Dynamic">
</asp:RequiredFieldValidator>
                                    </div>
                                </div>
                        </div>
                              
                             <div class="row">
                                 <div class="col-md-4">
                                     <lable><b>1. Monthy House Rent Paid (In Rupees)</b></lable>
                                     
                                     <asp:TextBox ID="ValueTextBox" runat="server" CssClass="form-control mb-3"></asp:TextBox>
                                     <asp:Button ID="Button1" runat="server" Text="Enter" OnClick="Button1_Click" />
                                     

                                 </div>
                                 <div class="col-md-4" id="additionalColumns" runat="server" visible="false">
                                     <label><b>House Owner Name</b></label>
                                     <asp:Textbox ID="OwnerLabel" runat="server" CssClass="mb-3" ></asp:Textbox>
                                     <lable><b>PAN NO.</b></lable>
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
                                             <b>
                                                 2. Premium paid from LIC other than Salary Savings Schemes maturing in 2022-23

                                             </b>
                                             

                                         </label>

                                     </div>

                                 </div>

                             </div>
                             <div class="row">
                                 <div class="col-md-4">
                                     <label><b>1.1 Policy No.</b></label>                             
                                     <div class="form-group">
                                         <asp:TextBox CssClass="form-control" ID="TextBox211" runat="server" placeholder="Policy No." TextMode="Number"></asp:TextBox>
                                        
                                     </div>

                                 </div>
                                 <div class="col-md-4">
                                     <label><b>1.2 Submission Date</b></label>                             
                                     <div class="form-group">
                                         <asp:TextBox CssClass="form-control" ID="TextBox212" runat="server" placeholder="dd/mm/yyyy" TextMode="Date"></asp:TextBox>

                                     </div>

                                 </div>
                                  <div class="col-md-4">
        <label><b>1.3 Premium Amount</b></label>                             
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox213" runat="server" placeholder="Amount" TextMode="Number"></asp:TextBox>
            
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-4">
        <label><b>2.1 Policy No.</b></label>                             
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox221" runat="server" placeholder="Policy No." TextMode="Number"></asp:TextBox>
            
        </div>
    </div>
     <div class="col-md-4">
        <label><b>2.2 Submission Date</b></label>                             
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox222" runat="server" placeholder="dd/mm/yyyy" TextMode="Date"></asp:TextBox>
            
        </div>
    </div>
    
    <div class="col-md-4">
        <label><b>2.3 Premium Amount</b></label>                             
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox223" runat="server" placeholder="Amount" TextMode="Number"></asp:TextBox>
            
        </div>
    </div>
</div>
                             <div class="row">
    <div class="col-md-4">
        <label><b>3.1 Policy No.</b></label>                             
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox231" runat="server" placeholder="Policy No." TextMode="Number"></asp:TextBox>
            
        </div>
    </div>
    
    <div class="col-md-4">
        <label><b>3.2 Submission Date</b></label>                             
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox232" runat="server" placeholder="dd/mm/yyyy" TextMode="Date"></asp:TextBox>
            
        </div>
    </div>
                                  <div class="col-md-4">
        <label><b>3.3 Premium Amount</b></label>                             
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox233" runat="server" placeholder="Amount" TextMode="Number"></asp:TextBox>
            
        </div>
    </div>
</div>

                             <div class="row">
    <div class="col">
        <div class="form-group">
            <label>
                <b>
                    3. Medical Policy (Exemption under 80D)

                </b>
            
            </label>
     
            </div>
    </div>
</div>


<div class="row">
    <div class="col-md-4">
        <label><b>1.1 Policy No.</b></label>                             
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox311" runat="server" placeholder="Policy No." TextMode="Number"></asp:TextBox>
            
        </div>
    </div>
    <div class="col-md-4">
        <label><b>1.2 Submission Date</b></label>                             
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox312" runat="server" placeholder="dd/mm/yyyy" TextMode="Date"></asp:TextBox>
            
        </div>
    </div>
    
    <div class="col-md-4">
        <label><b>1.3 Premium Amount</b></label>                             
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox313" runat="server" placeholder="Amount" TextMode="Number"></asp:TextBox>
            
        </div>
    </div>
</div>
                             <div class="row">
    <div class="col-md-4">
        <label><b>2.1 Policy No.</b></label>                             
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox321" runat="server" placeholder="Policy No." TextMode="Number"></asp:TextBox>
            
        </div>
    </div>
    
    <div class="col-md-4">
        <label><b>2.2 Submission Date</b></label>                             
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox322" runat="server" placeholder="dd/mm/yyyy" TextMode="Date"></asp:TextBox>
            
        </div>
    </div>
                                   <div class="col-md-4">
        <label><b>2.3 Premium Amount</b></label>                             
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox323" runat="server" placeholder="Amount" TextMode="Number"></asp:TextBox>
            
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-4">
        <label><b>3.1 Policy No.</b></label>                             
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox331" runat="server" placeholder="Policy No." TextMode="Number"></asp:TextBox>
            
        </div>
    </div>
     <div class="col-md-4">
        <label><b>3.2 Submission Date</b></label>                             
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox332" runat="server" placeholder="dd/mm/yyyy" TextMode="Date"></asp:TextBox>
            
        </div>
    </div>
    
    <div class="col-md-4">
        <label><b>3.3 Premium Amount</b></label>                             
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox333" runat="server" placeholder="Amount" TextMode="Number"></asp:TextBox>
            
        </div>
    </div>
</div>
                            
                        
                       

                            <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label>
                                        <b>
                                             4. Total discount on the certificate to get exemption under handicapped 80 DD

                                        </b>
                                       
                                    </label>
                                    
                                    
                                    
                                    
                                   
                                    <h6>% Discount</h6>
                                     <asp:TextBox CssClass="form-control" ID="Discount" runat="server" placeholder="Discount" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                            
                           
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label>
                                        <b>
                                            5. Reservation test or interest (80E) for higher education via bank letter.

                                        </b>
                                         
                                    </label>
                                      
                                    
                                    <asp:TextBox CssClass="form-control" ID="Reservation" runat="server" placeholder="Amount" TextMode="Number"></asp:TextBox>
                                </div>
                                
                               
                                </div>
                          </div>

                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label>
                                        <b>
                                            6.NPS Plan (80CCD)

                                        </b>
                                        
                                    </label>
                                        <asp:TextBox CssClass="form-control" ID="NPS" runat="server" placeholder="Amount" TextMode="Number"></asp:TextBox>
                                        </div>
                                </div>
                        </div>
                        
                        
                         <div class="row">
    <div class="col">
        <div class="form-group">
            <label>
                <b>
                    7. Details of ULIP Subscribers

                </b>
            
            </label>     
            </div>
    </div>
</div>

<div class="row">
    <div class="col-md-4">
        <label><b>1.1 Policy No.</b></label>                             
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox811" runat="server" placeholder="Policy No." TextMode="Number"></asp:TextBox>
            
        </div>
    </div>
    <div class="col-md-4">
        <label><b>1.2 Submission Date</b></label>                             
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox812" runat="server" placeholder="dd/mm/yyyy" TextMode="Date"></asp:TextBox>
            
        </div>
    </div>
    
    <div class="col-md-4">
        <label><b>1.3 Premium Amount</b></label>                             
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox813" runat="server" placeholder="Amount" TextMode="Number"></asp:TextBox>
            
        </div>
    </div>
</div>
                             <div class="row">
    <div class="col-md-4">
        <label><b>2.1 Policy No.</b></label>                             
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox821" runat="server" placeholder="Policy No." TextMode="Number"></asp:TextBox>
            
        </div>
    </div>
    
    <div class="col-md-4">
        <label><b>2.2 Submission Date</b></label>                             
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox822" runat="server" placeholder="dd/mm/yyyy" TextMode="Date"></asp:TextBox>
            
        </div>
    </div>
                                   <div class="col-md-4">
        <label><b>2.3 Premium Amount</b></label>                             
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox823" runat="server" placeholder="Amount" TextMode="Number"></asp:TextBox>
            
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-4">
        <label><b>3.1 Policy No.</b></label>                             
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox831" runat="server" placeholder="Policy No." TextMode="Number"></asp:TextBox>
            
        </div>
    </div>
      <div class="col-md-4">
        <label><b>3.2 Submission Date</b></label>                             
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox832" runat="server" placeholder="dd/mm/yyyy" TextMode="Date"></asp:TextBox>
            
        </div>
    </div>
    
    <div class="col-md-4">
        <label><b>3.3 Premium Amount</b></label>                             
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox833" runat="server" placeholder="Amount" TextMode="Number"></asp:TextBox>
            
        </div>
    </div>
</div>
                        
                        
                        
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label>
                                        <b>
                                            8. PPF deposited during the year

                                        </b>
                                        
                                    </label>
                                        <asp:TextBox CssClass="form-control" ID="ppf" runat="server" placeholder="Amount" TextMode="Number"></asp:TextBox>
                                        </div>
                                </div>
                        </div>
                        
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label>
                                        <b>
                                            9. Investment in Mutual Funds during the year

                                        </b>
                                        
                                    </label>
                                        <asp:TextBox CssClass="form-control" ID="mutualfunds" runat="server" placeholder="Amount" TextMode="Number"></asp:TextBox>
                                        </div>
                                </div>
                        </div>
                        
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label>
                                        <b>
                                            10. Investment in Corporate Bonds like ICICI, IDBI, etc.

                                        </b>
                                        
                                    </label>
                                        <asp:TextBox CssClass="form-control" ID="corporatebonds" runat="server" placeholder="Amount" TextMode="Number"></asp:TextBox>
                                        </div>
                                </div>
                        </div>
                        
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label>
                                        <b>
                                              11. Full repayment of loan/investment during the previous year in respect of house construction/purchase

                                        </b>
                                      
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
                                        <b>
                                            i) Property Address

                                        </b>
                                        
                                    </label>
                                        <asp:TextBox CssClass="form-control" ID="houseloan1" runat="server" placeholder="Address" TextMode="MultiLine"></asp:TextBox>
                                    
                                    <label>
                                        <b>
                                            ii) Amount of loan/investment repaid in full during the year.

                                        </b>
                                        
                                    </label>
                                        <asp:TextBox CssClass="form-control" ID="houseloan2" runat="server" placeholder="Amount" TextMode="Number"></asp:TextBox>
                                    <h6>(Only Principal to be indicated on the basis of letter issued by the lending agency.)</h6>
                                    
                                    <label>
                                        <b>
                                            iii) Lending Agency Name

                                        </b>
                                        
                                    </label>
                                        <asp:TextBox CssClass="form-control" ID="houseloan3" runat="server" placeholder="Name" TextMode="SingleLine"></asp:TextBox>
                                    
                                    <label>
                                        <b>
                                            iv) DDA/DGA/U.P. Housing Develeopment.

                                        </b>
                                        
                                        </label>
                                        <asp:TextBox CssClass="form-control" ID="houseloan4" runat="server" placeholder="Name" TextMode="SingleLine"></asp:TextBox>
                                    <h6>(Purchased from(Write Name)</h6>
                                     
                                    <label>
                                        <b>
                                            v) Possession Date

                                        </b>
                                        
                                        </label>
                                    <asp:TextBox CssClass="form-control" ID="possession" runat="server" placeholder="Date" TextMode="SingleLine" ></asp:TextBox>
                                    
                                    
                                    <label>
                                        <b>
                                            vi) Purpose of loan as indicated by HDFC/LIC/Bank

                                        </b>
                                        
                                        </label>
                                        <asp:TextBox CssClass="form-control" ID="houseloan6" runat="server" placeholder="Purpose" TextMode="MultiLine"></asp:TextBox>
                                    
                                    
                                        </div>
                                </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label>
                                        <b>
                                            12. Interest payment on building construction loan in case of self use (Submit Form 12C)

                                        </b>
                                        
                                    </label>
                                        <asp:TextBox CssClass="form-control" ID="interest" runat="server" placeholder="Interest Rate" TextMode="Number"></asp:TextBox>
                                        </div>
                                </div>
                        </div>
                        
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label>
                                        <b>
                                            13. Tuition fees paid on children's education

                                        </b>
                                        
                                    </label>
                                        </div>
                                </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-md-6">
                                <label><b>Class</b></label>
                                <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="childclass1" runat="server" placeholder="Class" TextMode="Number"></asp:TextBox>
                                        </div>
                                </div>
                            
                            <div class="col-md-6">
                                <label><b>Amount of Money</b></label>
                                <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="childedu" runat="server" placeholder="Amount" TextMode="Number"></asp:TextBox>
                                        </div>
                                </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-md-6">
                                <label><b>Class</b></label>
                                <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="childclass2" runat="server" placeholder="Class" TextMode="Number"></asp:TextBox>
                                        </div>
                                </div>
                            
                            <div class="col-md-6">
                                <label><b>Amount of Money</b></label>
                                <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="childedu2" runat="server" placeholder="Amount" TextMode="Number"></asp:TextBox>
                                        </div>
                                </div>
                        </div>

                        
                        
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label>
                                        <b>
                                            14. Full address of employer other than spouse,if any

                                        </b>
                                        
                                    </label>
                                    <asp:TextBox CssClass="form-control" ID="employer" runat="server" placeholder="Address" TextMode="MultiLine"></asp:TextBox>
                                    </div>
                                </div>
                        </div>
                        
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label>
                                        <b>
                                            15. Any other savings details.

                                        </b>
                                        
                                    </label>
                                    <asp:TextBox CssClass="form-control" ID="anyother" runat="server" placeholder="Address" TextMode="MultiLine"></asp:TextBox>
                                    </div>
                                <center>
                                    
                                    <asp:Button  class="btn btn-primary w-100 " ID="Button3" runat="server" Text="Submit Form" OnClick="Button3_Click"  />
                                    <asp:Label ID="SuccessLabel" runat="server" ForeColor="Green" Visible="false"></asp:Label>
                                    <asp:Label ID="ErrorLabel" runat="server" ForeColor="Red" Visible="false"></asp:Label>

                                    

                                </center>
                                 
                                </div>
                        </div>

                        
                       
                        
                                               
                           
                        
                        
                        
                        
                       
                             
                </div>
               
            </div>
                 
                      
             
        
            
             
                  
            </div>
          </div>
         </div>
     
</asp:Content>
