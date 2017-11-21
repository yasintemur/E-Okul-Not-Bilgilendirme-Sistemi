using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ogr_duzenle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("~/fotolar/" + FileUpload1.FileName));
            DataSet1TableAdapters.giris_bilgiler_ogrenciTableAdapter OgrenciEkle = new DataSet1TableAdapters.giris_bilgiler_ogrenciTableAdapter();
            OgrenciEkle.InsertQueryOgrenciEkle(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text, Convert.ToInt32(TextBox5.Text), "fotolar/" + FileUpload1.FileName);
            Image2.ImageUrl = "~/fotolar/" + FileUpload1.FileName;
            Label3.Text = "Eklendi";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("not_grs_syfasi.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("not_dznlme.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("ogr_duzenle.aspx");
    }
}