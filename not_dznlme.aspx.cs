using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class not_dznlme : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox1.Text = GridView1.Rows[GridView1.SelectedIndex].Cells[1].Text;
        TextBox2.Text = GridView1.Rows[GridView1.SelectedIndex].Cells[2].Text;
        TextBox3.Text = GridView1.Rows[GridView1.SelectedIndex].Cells[3].Text;
        TextBox4.Text = GridView1.Rows[GridView1.SelectedIndex].Cells[4].Text;
        TextBox9.Text = GridView1.Rows[GridView1.SelectedIndex].Cells[5].Text;
        TextBox5.Text = GridView1.Rows[GridView1.SelectedIndex].Cells[6].Text;
        TextBox6.Text = GridView1.Rows[GridView1.SelectedIndex].Cells[7].Text;
        TextBox7.Text = GridView1.Rows[GridView1.SelectedIndex].Cells[8].Text;
        TextBox8.Text = GridView1.Rows[GridView1.SelectedIndex].Cells[9].Text;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        DataSet1TableAdapters.notlarTableAdapter NotGuncelle = new DataSet1TableAdapters.notlarTableAdapter();
        NotGuncelle.UpdateQueryGuncelleNot(TextBox1.Text, TextBox2.Text, TextBox3.Text, Convert.ToInt32(TextBox4.Text), TextBox9.Text, Convert.ToInt32(TextBox5.Text), Convert.ToInt32(TextBox6.Text), Convert.ToInt32(TextBox7.Text), Convert.ToInt32(TextBox8.Text), Convert.ToInt32(TextBox4.Text));
        Label3.Text = "Güncellendi";
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox9.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        GridView1.DataBind();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("not_grs_syfasi.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("not_dznlme.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("ogr_duzenle.aspx");
    }
}