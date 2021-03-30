using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab13
{

    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["Zalogowano"] == null)
            {
                Session["Zalogowano"] = 0;
            }

            if ((int)Session["Zalogowano"] == 0)
            {
                Response.Redirect("Logowanie.aspx");
            }

            

        }


        protected void update(object sender, FormViewInsertedEventArgs e)
        {
            GridView2.DataBind();
        }


        protected void update(object sender, FormViewUpdatedEventArgs e)
        {
            GridView2.DataBind();
        }

        protected void reset(object sender, EventArgs e)
        {
            Response.Redirect("konfiguracja.aspx");
        }

     
    }
}