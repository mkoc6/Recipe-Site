using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace EndRecipeSite
{
    public partial class MealOfTheDay : System.Web.UI.Page
    {
        SqlSinifi bgl = new SqlSinifi();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("select * from TBL_YEMEKLER where DURUM=1", bgl.baglanti());
            SqlDataReader DR = command.ExecuteReader();
            DataList2.DataSource = DR;
            DataList2.DataBind();

        }
    }
}