using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace EndRecipeSite
{
    public partial class AdminMessagesDetail : System.Web.UI.Page
    {
        SqlSinifi bgl = new SqlSinifi();
        String id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["MESAJID"];
            SqlCommand command = new SqlCommand("select * from TBL_MESAJLAR where MESAJID=@P1",bgl.baglanti());
            command.Parameters.AddWithValue("@P1", id);
            SqlDataReader DR = command.ExecuteReader();
            while (DR.Read())
            { 
                TextBox1.Text = DR[1].ToString();
                TextBox2.Text = DR[2].ToString();
                TextBox3.Text = DR[3].ToString();
                TextBox4.Text = DR[4].ToString();

            }
            bgl.baglanti().Close();
        }
    }
}