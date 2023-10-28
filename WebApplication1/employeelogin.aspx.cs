using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Text.RegularExpressions;
using System.Xml.Linq;

namespace WebApplication1
{

    public partial class employeelogin : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;


        protected void Page_Load(object sender, EventArgs e)
        {





        }

        protected void Button_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                string empDob = txtDate.Text.Trim();
                string empId = TextBox2.Text.Trim();

                SqlCommand cmd = new SqlCommand("SELECT * FROM emplogin_table WHERE emp_dob=@empDob AND emp_id=@empId", con);
                cmd.Parameters.AddWithValue("@empDob", empDob);
                cmd.Parameters.AddWithValue("@empId", empId);

                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Session["emp_id"] = dr.GetValue(1).ToString();
                        Session["emp_name"] = dr.GetValue(0).ToString();
                        Session["role"] = "employee";

                        if (empDob == "1958-10-05" && empId == "admin@123")
                        {
                            Response.Redirect("admin.aspx");
                        }
                        else
                        {
                            Response.Redirect("homepage.aspx");
                        }
                    }
                }
                else
                {
                    Response.Write("<script>alert('Invalid credentials');</script>");
                }
            }
            catch (Exception ex)
            {
                // Handle any exceptions here
            }
        }

        

        
    }
}




















          