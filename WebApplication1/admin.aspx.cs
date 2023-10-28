using System;
using System.Collections.Generic;
using System.Linq;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace WebApplication1
{
    public partial class admin : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            getMemberByID();

        }


        void updateBookByID()
        {

            if (checkIfMemberExists())
            {
                try
                {

                   
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("UPDATE Form_Credentials set Name=@Name, mob_no=@mob_no, rent=@rent, owner=@owner, pan_no=@pan_no, pol11=@pol11, sub11=@sub11, pre11=@pre11, pol12=@pol12, sub12=@sub12, pre12=@pre12,pol13=@pol13, sub13=@sub13, pre13=@pre13, pol21=@pol21, sub21=@sub21, pre21=@pre21, pol22=@pol22, sub22=@sub22, pre22=@pre22, pol23=@pol23, sub23=@sub23, pre23=@pre23, Discount=@Discount, amount=@amount, nps_c=@nps_c, pol31=@pol31, sub31=@sub31, pre31=@pre31, pol32=@pol32, sub32=@sub32, pre32=@pre32,pol33=@pol33, sub33=@sub33, pre33=@pre33, ppf_a=@ppf_a, mfunds=@mfunds, bonds=@bonds, hloan=@hloan, haddress=@haddress, year_a=@year_a, agency=@agency, housing=@housing, purpose=@purpose, interest=@interest, class11=@class11, money11=@money11, class21=@class21, money21=@money21, faddress=@faddress, details=@details, possession=@possession where ID='" + ID.Text.Trim() + "'", con);
                    cmd.Parameters.AddWithValue("@Name", fullname.Text.Trim());
                    cmd.Parameters.AddWithValue("@Id", ID.Text.Trim());
                    cmd.Parameters.AddWithValue("@mob_no", mobileno.Text.Trim());
                    cmd.Parameters.AddWithValue("@rent", ValueTextBox.Text.Trim());
                    cmd.Parameters.AddWithValue("@owner", OwnerLabel.Text.Trim());
                    cmd.Parameters.AddWithValue("@pan_no", PanLabel.Text.Trim());
                    cmd.Parameters.AddWithValue("@pol11", TextBox211.Text.Trim());
                    cmd.Parameters.AddWithValue("@sub11", TextBox212.Text.Trim());
                    cmd.Parameters.AddWithValue("@pre11", TextBox213.Text.Trim());
                    cmd.Parameters.AddWithValue("@pol12", TextBox221.Text.Trim());
                    cmd.Parameters.AddWithValue("@sub12", TextBox222.Text.Trim());
                    cmd.Parameters.AddWithValue("@pre12", TextBox223.Text.Trim());
                    cmd.Parameters.AddWithValue("@pol13", TextBox231.Text.Trim());
                    cmd.Parameters.AddWithValue("@sub13", TextBox232.Text.Trim());
                    cmd.Parameters.AddWithValue("@pre13", TextBox233.Text.Trim());
                    cmd.Parameters.AddWithValue("@pol21", TextBox311.Text.Trim());
                    cmd.Parameters.AddWithValue("@sub21", TextBox312.Text.Trim());
                    cmd.Parameters.AddWithValue("@pre21", TextBox313.Text.Trim());
                    cmd.Parameters.AddWithValue("@pol22", TextBox321.Text.Trim());
                    cmd.Parameters.AddWithValue("@sub22", TextBox322.Text.Trim());
                    cmd.Parameters.AddWithValue("@pre22", TextBox323.Text.Trim());
                    cmd.Parameters.AddWithValue("@pol23", TextBox331.Text.Trim());
                    cmd.Parameters.AddWithValue("@sub23", TextBox332.Text.Trim());
                    cmd.Parameters.AddWithValue("@pre23", TextBox333.Text.Trim());
                    cmd.Parameters.AddWithValue("@Discount", Discount.Text.Trim());
                    cmd.Parameters.AddWithValue("@amount", Reservation.Text.Trim());
                    cmd.Parameters.AddWithValue("@nps_c", NPS.Text.Trim());
                    cmd.Parameters.AddWithValue("@pol31", TextBox811.Text.Trim());
                    cmd.Parameters.AddWithValue("@sub31", TextBox812.Text.Trim());
                    cmd.Parameters.AddWithValue("@pre31", TextBox813.Text.Trim());
                    cmd.Parameters.AddWithValue("@pol32", TextBox821.Text.Trim());
                    cmd.Parameters.AddWithValue("@sub32", TextBox822.Text.Trim());
                    cmd.Parameters.AddWithValue("@pre32", TextBox823.Text.Trim());
                    cmd.Parameters.AddWithValue("@pol33", TextBox831.Text.Trim());
                    cmd.Parameters.AddWithValue("@sub33", TextBox832.Text.Trim());
                    cmd.Parameters.AddWithValue("@pre33", TextBox833.Text.Trim());
                    cmd.Parameters.AddWithValue("@ppf_a", ppf.Text.Trim());
                    cmd.Parameters.AddWithValue("@mfunds", mutualfunds.Text.Trim());
                    cmd.Parameters.AddWithValue("@bonds", corporatebonds.Text.Trim());
                    cmd.Parameters.AddWithValue("@hloan", houseloan.Text.Trim());
                    cmd.Parameters.AddWithValue("@haddress", houseloan1.Text.Trim());
                    cmd.Parameters.AddWithValue("@year_a", houseloan2.Text.Trim());
                    cmd.Parameters.AddWithValue("@agency", houseloan3.Text.Trim());
                    cmd.Parameters.AddWithValue("@housing", houseloan4.Text.Trim());
                    cmd.Parameters.AddWithValue("@purpose", houseloan6.Text.Trim());
                    cmd.Parameters.AddWithValue("@interest", interest.Text.Trim());
                    cmd.Parameters.AddWithValue("@class11", childclass1.Text.Trim());
                    cmd.Parameters.AddWithValue("@money11", childedu.Text.Trim());
                    cmd.Parameters.AddWithValue("@class21", childclass2.Text.Trim());
                    cmd.Parameters.AddWithValue("@money21", childedu2.Text.Trim());
                    cmd.Parameters.AddWithValue("@faddress", employer.Text.Trim());
                    cmd.Parameters.AddWithValue("@details", anyother.Text.Trim());
                    cmd.Parameters.AddWithValue("@possession", possession.Text.Trim());





                    cmd.ExecuteNonQuery();
                    con.Close();
                    
                    Response.Write("<script>alert('Tax Form Updated Successfully');</script>");


                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid Employee ID');</script>");
            }
        }





        void getMemberByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }
                SqlCommand cmd = new SqlCommand("select * from Form_Credentials where ID='" + ID.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        TextBox211.Text = dr.GetValue(6).ToString();
                        TextBox212.Text = dr.GetValue(7).ToString();
                        TextBox213.Text = dr.GetValue(8).ToString();
                        TextBox221.Text = dr.GetValue(9).ToString();
                        TextBox222.Text = dr.GetValue(10).ToString();
                        TextBox223.Text = dr.GetValue(11).ToString();
                        TextBox231.Text = dr.GetValue(12).ToString();
                        TextBox232.Text = dr.GetValue(13).ToString();
                        TextBox233.Text = dr.GetValue(14).ToString();
                        TextBox311.Text = dr.GetValue(15).ToString();
                        TextBox312.Text = dr.GetValue(16).ToString();
                        TextBox313.Text = dr.GetValue(17).ToString();
                        TextBox321.Text = dr.GetValue(18).ToString();
                        TextBox322.Text = dr.GetValue(19).ToString();
                        TextBox323.Text = dr.GetValue(20).ToString();
                        TextBox331.Text = dr.GetValue(21).ToString();
                        TextBox332.Text = dr.GetValue(22).ToString();
                        TextBox333.Text = dr.GetValue(23).ToString();
                        TextBox811.Text = dr.GetValue(27).ToString();
                        TextBox812.Text = dr.GetValue(28).ToString();
                        TextBox813.Text = dr.GetValue(29).ToString();
                        TextBox821.Text = dr.GetValue(30).ToString();
                        TextBox822.Text = dr.GetValue(31).ToString();
                        TextBox823.Text = dr.GetValue(32).ToString();
                        TextBox831.Text = dr.GetValue(33).ToString();
                        TextBox832.Text = dr.GetValue(34).ToString();
                        TextBox833.Text = dr.GetValue(35).ToString();
                        fullname.Text = dr.GetValue(0).ToString();
                        mobileno.Text = dr.GetValue(2).ToString();
                        ValueTextBox.Text = dr.GetValue(3).ToString();
                        OwnerLabel.Text = dr.GetValue(4).ToString();
                        PanLabel.Text = dr.GetValue(5).ToString();
                        Discount.Text = dr.GetValue(24).ToString();
                        Reservation.Text = dr.GetValue(25).ToString();
                        NPS.Text = dr.GetValue(26).ToString();
                        ppf.Text = dr.GetValue(36).ToString();
                        mutualfunds.Text = dr.GetValue(37).ToString();
                        corporatebonds.Text = dr.GetValue(38).ToString();
                        houseloan.Text = dr.GetValue(39).ToString();
                        houseloan1.Text = dr.GetValue(40).ToString();
                        houseloan2.Text = dr.GetValue(41).ToString();
                        houseloan3.Text = dr.GetValue(42).ToString();
                        houseloan4.Text = dr.GetValue(43).ToString();
                        houseloan6.Text = dr.GetValue(44).ToString();
                        interest.Text = dr.GetValue(45).ToString();
                        childclass1.Text = dr.GetValue(46).ToString();
                        childedu.Text = dr.GetValue(47).ToString();
                        childclass2.Text = dr.GetValue(48).ToString();
                        childedu2.Text = dr.GetValue(49).ToString();
                        employer.Text = dr.GetValue(50).ToString();
                        anyother.Text = dr.GetValue(51).ToString();
                        possession.Text = dr.GetValue(52).ToString();
                        

                    }

                }
                else
                {
                    Response.Write("<script>alert('Invalid credentials');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        bool checkIfMemberExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from Form_Credentials where ID ='" + ID.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }


        void deleteMemberByID()
        {
            if (checkIfMemberExists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("DELETE from Form_Credentials WHERE ID ='" + ID.Text.Trim() + "'", con);

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Member Deleted Successfully');</script>");
                    clearForm();
                    

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }

            }
            else
            {
                Response.Write("<script>alert('Invalid Member ID');</script>");
            }
        }

        void clearForm()
        {
            ID.Text = "";
            TextBox211.Text = "";
            TextBox212.Text = "";
            TextBox213.Text = "";
            TextBox221.Text = "";
            TextBox222.Text = "";
            TextBox223.Text = "";
            TextBox231.Text = "";
            TextBox232.Text = "";
            TextBox233.Text = "";
            TextBox311.Text = "";
            TextBox312.Text = "";
            TextBox313.Text = "";
            TextBox321.Text = "";
            TextBox322.Text = "";
            TextBox323.Text = "";
            TextBox331.Text = "";
            TextBox332.Text = "";
            TextBox333.Text = "";
            TextBox811.Text = "";
            TextBox812.Text = "";
            TextBox813.Text = "";
            TextBox821.Text = "";
            TextBox822.Text = "";
            TextBox823.Text = "";
            TextBox831.Text = "";
            TextBox832.Text = "";
            TextBox833.Text = "";
            fullname.Text = "";
            mobileno.Text = "";
            ValueTextBox.Text ="";
            OwnerLabel.Text = "";
            PanLabel.Text = "";
            Discount.Text = "";
            Reservation.Text ="";
            NPS.Text ="";
            ppf.Text = "";
            mutualfunds.Text ="";
            corporatebonds.Text = "";
            houseloan.Text = "";
            houseloan1.Text = "";
            houseloan2.Text = "";
            houseloan3.Text = "";
            houseloan4.Text = "";
            houseloan6.Text = "";
            interest.Text ="";
            childclass1.Text ="";
            childedu.Text = "";
            childclass2.Text = "";
            childedu2.Text = "";
            employer.Text = "";
            anyother.Text = "";
            possession.Text = "";

        }
        protected void Update_Click(object sender, EventArgs e)
        {
            updateBookByID();

        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            deleteMemberByID();

        }
    }
}