using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class not_grs_syfasi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        DataSet1TableAdapters.notlarTableAdapter NotEkle = new DataSet1TableAdapters.notlarTableAdapter();
        NotEkle.InsertQueryNotEkle(DropDownList1.SelectedItem.Text, DropDownList2.SelectedItem.Text, DropDownList3.SelectedItem.Text, Convert.ToInt32(DropDownList4.SelectedItem.Text), DropDownList5.SelectedItem.Text, Convert.ToInt32(TextBox1.Text), Convert.ToInt32(TextBox2.Text), Convert.ToInt32(TextBox3.Text), Convert.ToInt32(TextBox4.Text));
        Label3.Text = "Eklendi";
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("not_grs_syfasi.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("not_dznlme.aspx");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("ogr_duzenle.aspx");
    }
}