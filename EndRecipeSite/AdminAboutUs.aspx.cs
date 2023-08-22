using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace EndRecipeSite
{
    public partial class AdminAboutUs : System.Web.UI.Page
    {
        SqlSinifi bgl = new SqlSinifi();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel4.Visible = false;
            if (Page.IsPostBack==false)
            {

            
            SqlCommand command = new SqlCommand("select * from TBL_HAKKIMIZDA", bgl.baglanti());
            SqlDataReader DR = command.ExecuteReader();
            while (DR.Read())
            {
                TextBox1.Text = DR[0].ToString();
            }
            bgl.baglanti().Close();
        }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            SqlCommand command1 = new SqlCommand("update TBL_HAKKIMIZDA set METIN=@p1", bgl.baglanti());
            command1.Parameters.AddWithValue("@p1", TextBox1.Text);
            command1.ExecuteNonQuery();
            bgl.baglanti().Close();

        }
    }
}