using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace EndRecipeSite
{
    public partial class User : System.Web.UI.MasterPage
    {
        SqlSinifi bgl = new SqlSinifi();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("select * from TBL_KATEGORILER", bgl.baglanti());
            SqlDataReader OKU = command.ExecuteReader();
            DataList1.DataSource = OKU;
            DataList1.DataBind();
        }
    }
}