using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace EndRecipeSite
{
    public partial class AdminRecipes : System.Web.UI.Page
    {
        SqlSinifi bgl = new SqlSinifi();
        protected void Page_Load(object sender, EventArgs e)
        {
           

            /// ONAYSIZ TARIFLER:

            SqlCommand command = new SqlCommand("select * from TBL_TARIFLER where TARIFDURUM=0", bgl.baglanti());
            SqlDataReader DR = command.ExecuteReader();
            DataList1.DataSource = DR;
            DataList1.DataBind();


            /// ONAYLI TARIFLER

            SqlCommand command2 = new SqlCommand("select * from TBL_TARIFLER where TARIFDURUM=1", bgl.baglanti());
            SqlDataReader DR2 = command2.ExecuteReader();
            DataList2.DataSource = DR2;
            DataList2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
           
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
           
        }
    }
}