using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace WebApplication1
{
    public partial class taxform : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {


        }
        










        // user defined method



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

        
    }
}
    




