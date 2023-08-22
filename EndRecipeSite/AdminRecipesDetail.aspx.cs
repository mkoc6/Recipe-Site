using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace EndRecipeSite
{
    public partial class AdminRecipesDetail : System.Web.UI.Page
    {
        SqlSinifi bgl = new SqlSinifi();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["TARIFID"];
            if (Page.IsPostBack == false)
            {


               
                SqlCommand command = new SqlCommand("select* from TBL_TARIFLER where TARIFID =@P1", bgl.baglanti());
                command.Parameters.AddWithValue("@P1", id);
                SqlDataReader DR = command.ExecuteReader();
                while (DR.Read())
                {
                    TXT.Text = DR[1].ToString();
                    TextBox2.Text = DR[2].ToString();
                    TextBox3.Text = DR[3].ToString();
                    TextBox4.Text = DR[5].ToString();
                    TextBox5.Text = DR[6].ToString();

                }
                bgl.baglanti().Close();

                //KATEGORİ LİSTESİ
                SqlCommand COMMAND4 = new SqlCommand("select * from TBL_KATEGORILER", bgl.baglanti());
                SqlDataReader DR2 = COMMAND4.ExecuteReader();
                DropDownList1.DataTextField = "KATEGORIAD";
                DropDownList1.DataValueField = "KATEGORIID";
                DropDownList1.DataSource = DR2;
                DropDownList1.DataBind();

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //DURUM GÜNCELLEME
            SqlCommand command6 = new SqlCommand("update TBL_TARIFLER set TARIFDURUM=1 where TARIFID=@P1", bgl.baglanti());
            command6.Parameters.AddWithValue("@P1", id);
            command6.ExecuteNonQuery();
            bgl.baglanti().Close();

            // YEMEGİ ANA SAYFAYA EKLEME
            SqlCommand COMMAND9 = new SqlCommand("insert into TBL_YEMEKLER (YEMEKAD,YEMEKMALZEME,YEMEKTARIF,KATEGORIID) values (@p1,@p2,@p3,@p4) ", bgl.baglanti());
            COMMAND9.Parameters.AddWithValue("@p1", TXT.Text);
            COMMAND9.Parameters.AddWithValue("@p2", TextBox2.Text);
            COMMAND9.Parameters.AddWithValue("@p3", TextBox3.Text);
            COMMAND9.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            COMMAND9.ExecuteNonQuery();
            bgl.baglanti().Close();

        }
    }
}