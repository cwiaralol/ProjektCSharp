using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Lab13
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string login = TextBox2.Text;
            string haslo = TextBox1.Text;
                if (login=="admin" && haslo=="haslo")
                {

                    Session["Zalogowano"] = 1;
                    Label2.Text = "Status: Zalogowano";
                    Response.Redirect("konfiguracja.aspx");
            }
                else
                {
                    Session["Zalogowano"] = 0;
                    Label2.Text = "Status: Złe dane!";
            }
            }
        

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["Zalogowano"] = 0;
            Label2.Text = "Status: Wylogowano";

        }


    }





}
