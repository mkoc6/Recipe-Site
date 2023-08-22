using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace EndRecipeSite
{
    public partial class Communication : System.Web.UI.Page
    {
        SqlSinifi bgl = new SqlSinifi();
        protected void Page_Load(object sender, EventArgs e)
        {
     

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("insert into TBL_MESAJLAR (MESAJGONDEREN, MESAJBASLIK, MESAJMAIL,MESAJICERIK) VALUES (@P1,@P2,@P3,@P4)", bgl.baglanti());
            command.Parameters.AddWithValue("@P1",txtAd.Text);
            command.Parameters.AddWithValue("@P2", txtKonu.Text);
            command.Parameters.AddWithValue("@p3", txtMail.Text);
            command.Parameters.AddWithValue("@p4", TxtMesa.Text);
            command.ExecuteNonQuery();
            bgl.baglanti().Close();

        }
    }
}