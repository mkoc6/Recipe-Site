using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace EndRecipeSite
{
    public partial class AdminComments : System.Web.UI.Page
    {
        SqlSinifi bgl = new SqlSinifi();

        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel4.Visible = false;

            //ONAYLI YORUMLAR LİSTESİ
            SqlCommand command = new SqlCommand("select * from TBL_YORUMLAR WHERE YORUMONAY=1",bgl.baglanti());
            SqlDataReader DR = command.ExecuteReader();
            DataList1.DataSource = DR;
            DataList1.DataBind();
            bgl.baglanti().Close();



            //ONAYSIZ YORUMLAR LİSTESİ
            SqlCommand commad5 = new SqlCommand("select * from TBL_YORUMLAR where YORUMONAY=0", bgl.baglanti());
            SqlDataReader DR2 = commad5.ExecuteReader();
            DataList2.DataSource = DR2;
            DataList2.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }
    }
}