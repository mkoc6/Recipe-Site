using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace EndRecipeSite
{
    public partial class categoryAdmin : System.Web.UI.Page
    {
        SqlSinifi bgl = new SqlSinifi();
        string id = "";
        string islem = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["KATEGORIID"];
                islem = Request.QueryString["islem"];
            }

            SqlCommand command = new SqlCommand("select * from TBL_KATEGORILER", bgl.baglanti());
            SqlDataReader DR = command.ExecuteReader();
            DataList1.DataSource = DR;
            DataList1.DataBind();
            Panel2.Visible = false;
            Panel3.Visible = false;

            if (Page.IsPostBack == false)
            {
                // silme islemi
                if (islem == "sil")
                {
                    SqlCommand commandd = new SqlCommand("Delete from TBL_KATEGORILER where KATEGORIID=@P1", bgl.baglanti());
                    commandd.Parameters.AddWithValue("@P1", id);
                    commandd.ExecuteNonQuery();
                    bgl.baglanti().Close();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Panel3.Visible = true;
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            Panel3.Visible = false;
        }

        protected void BtnEkle_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("insert into TBL_KATEGORILER (KATEGORIAD) values (@p1)", bgl.baglanti());
            command.Parameters.AddWithValue("@p1", TextBox1.Text);
            command.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}