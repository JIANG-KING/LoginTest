using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginTest
{
    public partial class loginmain : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        DataSet ds = new DataSet();
        DatabaseTest databaseTest = new DatabaseTest();
        protected void Button1_Click(object sender, EventArgs e)
        {
            if(databaseTest.SqlLogin(this.TextBox1.Text, this.TextBox2.Text).Fill(ds, "logininfo") != 0)
            {
                Response.Write("<script>alert('登陆成功');</script>");
                Response.Redirect("LoginTest.aspx");
            }
        }
    }
}