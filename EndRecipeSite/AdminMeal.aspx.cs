using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace EndRecipeSite
{
    public partial class AdminMeal : System.Web.UI.Page
    {
        SqlSinifi bgl = new SqlSinifi();
        protected void Page_Load(object sender, EventArgs e)
        {
            string islem = "";
            string id = "";


            Panel2.Visible = false;
            Panel4.Visible = false;

            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["YEMEKID"];
                islem = Request.QueryString["islem"];

                //KATEGORİ LİSTESİ
                SqlCommand CKOMUT = new SqlCommand("select * from TBL_KATEGORILER", bgl.baglanti());
                SqlDataReader DR2 = CKOMUT.ExecuteReader();

                DropDownList1.DataTextField = "KATEGORIAD";
                DropDownList1.DataValueField = "KATEGORIID";

                DropDownList1.DataSource = DR2;
                DropDownList1.DataBind();
            }


            //YEMEK LİSTESİ
            SqlCommand command = new SqlCommand("select * from TBL_YEMEKLER", bgl.baglanti());
            SqlDataReader DR = command.ExecuteReader();
            DataList1.DataSource = DR;
            DataList1.DataBind();


            //SİLME İSLEME
            if (islem == "sil")
            {
                SqlCommand commad9 = new SqlCommand("DELETE FROM TBL_YEMEKLER where YEMEKID=@P1", bgl.baglanti());
                commad9.Parameters.AddWithValue("@P1",id);
                commad9.ExecuteNonQuery();
                bgl.baglanti().Close();
            }





        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Panel3.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            Panel3.Visible = false;
        }

        protected void BtnEkle_Click(object sender, EventArgs e)
        {
            // yemek ekleme
            SqlCommand command3 = new SqlCommand("insert into TBL_YEMEKLER (YEMEKAD, YEMEKMALZEME, YEMEKTARIF, KATEGORIID) values (@P1,@P2,@P3,@P4) ", bgl.baglanti());
            command3.Parameters.AddWithValue("@P1", TextBox1.Text);
            command3.Parameters.AddWithValue("@P2", TextBox2.Text);
            command3.Parameters.AddWithValue("@P3", TextBox3.Text);
            command3.Parameters.AddWithValue("@P4", DropDownList1.SelectedValue);
            command3.ExecuteNonQuery();
            bgl.baglanti().Close();


            //kategori sayısını artırma
            SqlCommand command7 = new SqlCommand("update TBL_KATEGORILER set KATEGORIADET=KATEGORIADET+1 where KATEGORIID=@P1 ", bgl.baglanti());
            command7.Parameters.AddWithValue("@P1",DropDownList1.SelectedValue);
            command7.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}