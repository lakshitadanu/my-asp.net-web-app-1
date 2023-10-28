using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace WebApplication1
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int value;
            if (int.TryParse(ValueTextBox.Text, out value))
            {
                if (value > 8300)
                {
                    additionalColumns.Visible = true;

                }
                else
                {
                    additionalColumns.Visible = false;
                }


            }

        }



        protected void Button3_Click(object sender, EventArgs e)
        {
            if (checkid())
            {
                Response.Write("<script>alert('Form already submitted with this id');</script>");
            }
            else
            {
                Form_details();
            }

        }

        //user-defined functions
        bool checkid()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("select * from Form_Credentials where Id='" + ID.Text.Trim() + "'; ", con);
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

        void Form_details()
        {
            //Response.Write("<script>alert('Testing');</script>");
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand(" insert into Form_Credentials (Name, ID, mob_no, rent, owner, pan_no, pol11, sub11, pre11, pol12, sub12, pre12,pol13, sub13, pre13, pol21, sub21, pre21, pol22, sub22, pre22, pol23, sub23, pre23, Discount, amount, nps_c, pol31, sub31, pre31, pol32, sub32, pre32,pol33, sub33, pre33, ppf_a, mfunds, bonds, hloan, haddress, year_a, agency, housing, purpose, interest, class11, money11, class21, money21, faddress, details, possession) values (@Name, @ID, @mob_no, @rent, @owner, @pan_no, @pol11, @sub11, @pre11, @pol12, @sub12, @pre12,@pol13, @sub13, @pre13, @pol21, @sub21, @pre21, @pol22, @sub22, @pre22, @pol23, @sub23, @pre23, @Discount, @amount, @nps_c, @pol31, @sub31, @pre31, @pol32, @sub32, @pre32,@pol33, @sub33, @pre33, @ppf_a, @mfunds, @bonds, @hloan, @haddress, @year_a, @agency, @housing, @purpose, @interest, @class11, @money11, @class21, @money21, @faddress, @details, @possession)", con);

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
                Response.Write("<script>alert('Form Submitted Successfully');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }





    }
}




    
