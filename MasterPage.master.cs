using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSet1TableAdapters.ogr_girisTableAdapter sorgu = new DataSet1TableAdapters.ogr_girisTableAdapter();
        if (sorgu.GetDataBySorgu(TextBox1.Text).Count > 0)
        {
            if (TextBox1.Text == sorgu.GetDataBySorgu(TextBox1.Text).Rows[0][1].ToString() &&
                TextBox2.Text == sorgu.GetDataBySorgu(TextBox1.Text).Rows[0][2].ToString())
            {
                Session["user"] = sorgu.GetDataBySorgu(TextBox1.Text).Rows[0][1].ToString();
                Response.Redirect("not_grs_syfasi.aspx");
            }
            else
                Label1.Text = "Hatalı Şifre";
        }
        else
            Label1.Text = "Böyle bir kullanıcı adı bulunmamaktadır.";
    }
}
