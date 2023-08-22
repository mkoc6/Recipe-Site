using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace EndRecipeSite
{
    public class SqlSinifi
    {
        public SqlConnection baglanti()
        {
            SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-1DQCP20\SQLEXPRESS;Initial Catalog=YemekTarifSitesi;Integrated Security=True");
            baglan.Open();
            return baglan;
        }
    }
}