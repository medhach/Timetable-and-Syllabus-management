using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Syllabus : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["kmitdbTtCon"].ToString());
    double i = 0.0;
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void sin_Click(object sender, EventArgs e)
    {
        i++;
        con.Open();
        try
        {
            SqlCommand cmd = new SqlCommand("update tt.SyllabusTable1 set Unit_name = '" + UnitTextBox.Text + "',Topic_Name = '" + TopicNameTextBox + "' where (Subcode = '" + DropDownSub11.SelectedValue + "' and Unitno = '" + DropDownUnitno.SelectedValue + "' and Topic_ID = '" + TopicidTextBox.Text + "')", con);
        }
        catch (SqlException se)
        {
            SqlCommand cmd = new SqlCommand("insert into tt.SyllabusTable1 values('" + DropDownSub11.SelectedValue + "','" + DropDownUnitno.SelectedValue + "','" + UnitTextBox.Text + "','" + TopicidTextBox.Text + "','" + TopicNameTextBox.Text + "')", con);
            cmd.ExecuteNonQuery();
        }
        con.Close();
        UnitTextBox.Text = "";
        TopicidTextBox.Text = "";
        TopicNameTextBox.Text = "";
    }
    protected void sdel_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("delete from tt.SyllabusTable1 where (Subcode = '" + DropDownSub11.SelectedValue + "')",con);
        con.Close();
    }
    protected void DropDownSem11_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
        DataTable dt = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter("SELECT SubCode FROM tt.Subject WHERE ((Branch ='" + DropDownBranch11.SelectedValue + "') AND (Year = '" + DropDownyear11.SelectedValue + "') AND (Semester =" + DropDownSem11.SelectedValue + "))", con);

        DataSet ds = new DataSet();
        adp.Fill(ds, "tt.Subject");
        DropDownSub11.DataSource = ds.Tables["tt.Subject"];
        DropDownSub11.DataTextField = "SubCode";
        DropDownSub11.DataValueField = "SubCode";
        DropDownSub11.DataBind();
        con.Close();
    }
    protected void Logout_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
    protected void TopicidTextBox_TextChanged(object sender, EventArgs e)
    {
       
    }
    protected void DropDownUnitno_SelectedIndexChanged(object sender, EventArgs e)
    {
       
        TopicidTextBox.Text = DropDownUnitno.Text + i.ToString();
    }
}