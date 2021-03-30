using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab13
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView2.Visible = true;
            if (GridView2.Rows.Count>0)
            {
                Button1.Visible = true;
            }

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            GridView2.Visible = false;
            Button1.Visible = false;
            Response.Redirect("cennik.aspx");


        }


        protected void CustomersGridView_SelectedIndexChanged(Object sender, EventArgs e)
        {
           Button1.Visible = true;
        }



    }
}