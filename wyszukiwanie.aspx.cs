using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Text.RegularExpressions;

namespace Lab13
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.Visible = true;
            
        }



 



        protected void Button1_Click(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            sqlconn.Open();
            SqlCommand sqlcomm = new SqlCommand();
            //string sqlquery = "select * from [dbo].Produkty where nazwa like '%'+@nazwa+'%' and cena between +@cena1 and @cena2";
            //string sqlquery = "select nazwa,cena,opis,adres_www,stan_magazynu from [dbo].Produkty where nazwa like '%'+@nazwa+'%' and cena between +@cena1 and @cena2";
            string sqlquery = "SELECT Produkty.nazwa as Nazwa, Grupy.Grupa as Grupa, Produkty.cena as Cena, Produkty.opis as Opis, Produkty.adres_www as Adres_WWW, Produkty.stan_magazynu as Ilość FROM Produkty INNER JOIN Grupy ON Produkty.grupa = Grupy.idGrupy WHERE (Produkty.nazwa LIKE '%' + @nazwa + '%') AND (Produkty.cena BETWEEN @cena1 AND @cena2)";
            //string sqlquery = "SELECT[nazwa], [cena] FROM[Produkty] WHERE(([nazwa] = '%'+@nazwa+'%') AND([cena] >= '%'+@cena1+'%') AND([cena] <='%'+@cena2+'%'))";
            sqlcomm.CommandText = sqlquery;
            sqlcomm.Connection = sqlconn;
            sqlcomm.Parameters.AddWithValue("nazwa", TextBox1.Text);
            //sqlcomm.Parameters.AddWithValue("cena1", 1.00);
            //sqlcomm.Parameters.AddWithValue("cena2", 6000.56);
            double cena1d = 0;
            double cena2d = 0;


            if (String.IsNullOrEmpty(TextBox1.Text))
            {
                Label2.Text = "Podaj nazwę produktu";

            }



            else
            {
                Label2.Text = "";


                if (!String.IsNullOrEmpty(TextBox2.Text) && !String.IsNullOrEmpty(TextBox3.Text))
                {
                    cena1d = Double.Parse(TextBox2.Text.ToString());
                    cena2d = Double.Parse(TextBox3.Text.ToString());

                }

                if (String.IsNullOrEmpty(TextBox2.Text) && !String.IsNullOrEmpty(TextBox3.Text))
                {
                    cena1d = 0;
                    cena2d = Double.Parse(TextBox3.Text.ToString());

                }

                if (!String.IsNullOrEmpty(TextBox2.Text) && String.IsNullOrEmpty(TextBox3.Text))
                {

                    cena1d = Double.Parse(TextBox2.Text.ToString());
                    cena2d = 10000;

                }

                if (String.IsNullOrEmpty(TextBox2.Text) && String.IsNullOrEmpty(TextBox3.Text))
                {
                    cena1d = 0;
                    cena2d = 1000000;

                }
            

                if (String.IsNullOrEmpty(TextBox2.Text) && String.IsNullOrEmpty(TextBox3.Text))
                {
                    cena1d = 0;
                    cena2d = 1000000;

                }

              






                sqlcomm.Parameters.AddWithValue("cena1", cena1d);
                sqlcomm.Parameters.AddWithValue("cena2", cena2d);
                DataTable dt = new DataTable();
                SqlDataAdapter sda = new SqlDataAdapter(sqlcomm);
                sda.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                if (GridView1.Rows.Count > 0)
                {
                    Button2.Visible = true;
                }

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            GridView1.Visible = false;
            Button2.Visible = false;
            TextBox1.Text = "";
            GridView1.DataBind();
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

            string tString = TextBox2.Text;
            if (tString.Trim() == "") return;
            for (int i = 0; i < tString.Length; i++)
            {
                if (!char.IsNumber(tString[i]))
                {
                    
                    TextBox2.Text = "";
                    return;
                }

            }

            }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {


            string tString = TextBox3.Text;
            if (tString.Trim() == "") return;
            for (int i = 0; i < tString.Length; i++)
            {
                if (!char.IsNumber(tString[i]))
                {
                    
                    TextBox3.Text = "";
                    return;
                }

            }
            



        }
    }
}