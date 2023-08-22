using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace EndRecipeSite
{
    public partial class AdminEditMeal : System.Web.UI.Page
    {
        SqlSinifi bgl = new SqlSinifi();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["YEMEKID"];

            if (Page.IsPostBack == false )
            {

            
                SqlCommand command = new SqlCommand("select * from TBL_YEMEKLER where YEMEKID=@P1", bgl.baglanti());
                command.Parameters.AddWithValue("@P1", id);
                SqlDataReader DR = command.ExecuteReader();
                while (DR.Read())
                {
                    TextBox1.Text = DR[1].ToString();
                    TextBox2.Text = DR[2].ToString();
                    TextBox3.Text = DR[3].ToString();
                    

                }
                bgl.baglanti().Close();
           
                    //KATEGORİ LİSTESİ
                    SqlCommand CKOMUT = new SqlCommand("select * from TBL_KATEGORILER", bgl.baglanti());
                    SqlDataReader DR2 = CKOMUT.ExecuteReader();

                    DropDownList1.DataTextField = "KATEGORIAD";
                    DropDownList1.DataValueField = "KATEGORIID";

                    DropDownList1.DataSource = DR2;
                    DropDownList1.DataBind();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("/pictures/" + FileUpload1.FileName));

            SqlCommand command4 = new SqlCommand("update TBL_YEMEKLER set  YEMEKAD=@P1, YEMEKMALZEME=@P2, YEMEKTARIF=@P3, KATEGORIID=@P4,YEMEKRESIM=@P6 where YEMEKID=@P5", bgl.baglanti());
            command4.Parameters.AddWithValue("@P1", TextBox1.Text);
            command4.Parameters.AddWithValue("@P2", TextBox2.Text);
            command4.Parameters.AddWithValue("@P3", TextBox3.Text);
            command4.Parameters.AddWithValue("@P4", DropDownList1.SelectedValue);
            command4.Parameters.AddWithValue("@P5", id);
            command4.Parameters.AddWithValue("@P6","~/pictures/"+FileUpload1.FileName);
            command4.ExecuteNonQuery();
            bgl.baglanti().Close();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //TÜM YEMEKLERİ DURUMUNU FALSE YAPTIK
            SqlCommand command7 = new SqlCommand("update TBL_YEMEKLER set DURUM=0", bgl.baglanti());
            command7.ExecuteNonQuery();
            bgl.baglanti().Close();


            //GÜNÜN YEMEĞİ İÇİN İD YE GÖRE DURUMU TRUE YAPMA
            SqlCommand COMMAND3 = new SqlCommand("update TBL_YEMEKLER set DURUM=1 where YEMEKID=@P1", bgl.baglanti());
            COMMAND3.Parameters.AddWithValue("@P1", id);
            COMMAND3.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}