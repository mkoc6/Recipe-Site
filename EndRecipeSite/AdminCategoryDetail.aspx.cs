using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace EndRecipeSite
{
    public partial class AdminCategoryDetail : System.Web.UI.Page
    {
        SqlSinifi bgl = new SqlSinifi();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["KATEGORIID"];
            if (Page.IsPostBack == false)
            {

            
            SqlCommand command = new SqlCommand("select * from TBL_KATEGORILER where KATEGORIID=@P1", bgl.baglanti());
            command.Parameters.AddWithValue("@P1", id);
            SqlDataReader DR = command.ExecuteReader();
            while (DR.Read())
            {
                TextBox1.Text = DR[1].ToString();
                TextBox2.Text = DR[2].ToString();

            }
            bgl.baglanti().Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("UPDATE TBL_KATEGORILER set KATEGORIAD=@P1, KATEGORIADET=@P2 WHERE KATEGORIID=@P3", bgl.baglanti());
            command.Parameters.AddWithValue("@p1", TextBox1.Text);
            command.Parameters.AddWithValue("@p2", TextBox2.Text);
            command.Parameters.AddWithValue("@p3", id);
            command.ExecuteNonQuery();
            bgl.baglanti().Close();

        }
    }
}