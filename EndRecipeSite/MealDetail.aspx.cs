using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace EndRecipeSite
{
    public partial class MealDetail : System.Web.UI.Page
    {
        SqlSinifi bgl = new SqlSinifi();
        String yemekid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            yemekid = Request.QueryString["YEMEKID"];
            SqlCommand command = new SqlCommand("select YEMEKAD from TBL_YEMEKLER where YEMEKID=@p1", bgl.baglanti());
            command.Parameters.AddWithValue("@p1", yemekid);
            SqlDataReader dr = command.ExecuteReader();
            while (dr.Read())
            {
                Label3.Text = dr[0].ToString();
            }
            bgl.baglanti().Close();
            //yORUMLARI lİSTELEME
            SqlCommand command2 = new SqlCommand("select * from TBL_YORUMLAR where YEMEKID=@p2",bgl.baglanti());
            command2.Parameters.AddWithValue("@p2",yemekid);
           
            SqlDataReader DR = command2.ExecuteReader();
            DataList2.DataSource = DR;
            DataList2.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)

        {
           
            SqlCommand command = new SqlCommand("insert into TBL_YORUMLAR (YORUMAD,  YORUMMAIL, YORUMICERIK,YEMEKID) VALUES (@P1,@P2,@P3,@P4)", bgl.baglanti());
            command.Parameters.AddWithValue("@P1", TXT.Text);
            command.Parameters.AddWithValue("@P2", TextBox2.Text);
            command.Parameters.AddWithValue("@P3", TextBox3.Text);
            command.Parameters.AddWithValue("@P4", yemekid);
            command.ExecuteNonQuery();
            bgl.baglanti().Close();
            
            
           
        }
    }
}