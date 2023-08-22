using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace EndRecipeSite
{
    public partial class AdminCommentDetail : System.Web.UI.Page
    {
        SqlSinifi bgl = new SqlSinifi();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["YORUMID"];
            if (Page.IsPostBack == false)
            {

           
            SqlCommand command = new SqlCommand("select YORUMAD, YORUMMAIL, YORUMICERIK, YEMEKAD from TBL_YORUMLAR" +
                " inner join TBL_YEMEKLER on TBL_YORUMLAR.YEMEKID=TBL_YEMEKLER.YEMEKID where YORUMID=@P1", bgl.baglanti());
            command.Parameters.AddWithValue("@P1", id);
            SqlDataReader DR = command.ExecuteReader();
            while (DR.Read())
            {
                txtAd.Text = DR[0].ToString();
                txtMail.Text = DR[1].ToString();
                txtIcerik.Text = DR[2].ToString();
                txtYemek.Text = DR[3].ToString();

            }
            bgl.baglanti().Close();
            }
        }

        protected void btnOnayla_Click(object sender, EventArgs e)
        {
            SqlCommand commadd = new SqlCommand("update TBL_YORUMLAR set YORUMICERIK=@P1, YORUMONAY=@P2 where YORUMID=@P3"
                , bgl.baglanti());
            commadd.Parameters.AddWithValue("@P1", txtIcerik.Text);
            commadd.Parameters.AddWithValue("@P2", "True");
            commadd.Parameters.AddWithValue("@p3", id);
            commadd.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}