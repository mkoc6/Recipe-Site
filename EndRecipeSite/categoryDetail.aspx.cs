using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace EndRecipeSite
{
    public partial class category_Detail : System.Web.UI.Page
    {
        SqlSinifi bgl = new SqlSinifi();
        string KAEGORIID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            KAEGORIID = Request.QueryString["KATEGORIID"];
            SqlCommand commmand = new SqlCommand("select * from TBL_YEMEKLER  where KATEGORIID=@P1", bgl.baglanti());
            commmand.Parameters.AddWithValue("@P1", KAEGORIID);
            SqlDataReader DR = commmand.ExecuteReader();
            DataList2.DataSource = DR;
            DataList2.DataBind();

        }
    }
}