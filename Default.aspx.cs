using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSet1TableAdapters.giris_bilgiler_ogrenciTableAdapter ogr_sorgu = new DataSet1TableAdapters.giris_bilgiler_ogrenciTableAdapter();
        if (ogr_sorgu.GetDataByKimlikSorgu(TextBox1.Text).Count > 0)
        {
            if (TextBox1.Text == ogr_sorgu.GetDataByKimlikSorgu(TextBox1.Text).Rows[0][3].ToString() && TextBox2.Text == ogr_sorgu.GetDataByKimlikSorgu(TextBox1.Text).Rows[0][5].ToString())
            {
                Session["kimlik"] = ogr_sorgu.GetDataByKimlikSorgu(TextBox1.Text).Rows[0][3].ToString();
                Session["no"] = ogr_sorgu.GetDataByKimlikSorgu(TextBox1.Text).Rows[0][5].ToString();
                Response.Redirect("ogrenci_giris.aspx");
            }
            else
            {
                Label2.Text = "Girdiğiniz Okul No Yanlış";
            }
        }
        else
        {
            Label2.Text = "Girdiğiniz TC No Yanlış";
        }
    }
}