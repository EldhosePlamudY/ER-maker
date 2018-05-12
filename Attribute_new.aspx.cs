using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Attribute_new : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
     if (!IsPostBack)

            filldrop();
    }
    public void filldrop()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select distinct *from Tbl_Entity", con);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        DropDownList1.DataSource = dt;
        DropDownList1.DataTextField = "EntityName";
        DropDownList1.DataValueField = "Entity_id";
        DropDownList1.DataBind();

        DropDownList1.Items.Insert(0, "Select Entity");
    }
        protected void Button1_Click(object sender, EventArgs e)
    {
        int Eid;
        Eid = Convert.ToInt16(Session["Entity_id"].ToString());
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into Tbl_Attribute values("+Eid+",'" + TextBox1.Text + "')", con);
        cmd.ExecuteNonQuery();
        Session["A1"] = Session["A1"].ToString() + "," + TextBox1.Text;
        con.Close();
        TextBox1.Text = "";
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("DerivedAttribute_new.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("FinalER.aspx");
        //Response.Redirect("FinalER1.aspx");
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}