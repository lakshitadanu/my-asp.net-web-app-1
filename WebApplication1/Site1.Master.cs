using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"] == null)
                {
                    LinkButton1.Visible = false; 
                    LinkButton2.Visible = false;

                    LinkButton3.Visible = false;
                    LinkButton4.Visible = true;


                }
                else if (Session["role"].Equals("employee"))
                {
                    LinkButton1.Visible = true; 
                    LinkButton2.Visible = true; 

                    LinkButton3.Visible = true;
                    LinkButton4.Visible = false;


                    LinkButton1.Text = "Hello " + Session["emp_name"].ToString();


                    
                }
               
            }
            catch (Exception ex)
            {

            }
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("employeelogin.aspx");

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("user.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["emp_id"] = "";
            Session["emp_name"] = "";
            Session["role"] = "";
            LinkButton1.Visible = false;
            LinkButton2.Visible = false;

            LinkButton3.Visible = false;
            LinkButton4.Visible = true;
        }
    }
}



