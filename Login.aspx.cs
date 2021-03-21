using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginTest
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Application.Lock();
            this.LabelUsername.Text = Application["Username"].ToString(); 
            this.LabelName.Text = Application["name"].ToString(); 
            this.LabelSex.Text = Application["sex"].ToString(); 
            this.LabelAddress.Text = Application["address"].ToString(); 
            this.LabelEmail.Text = Application["email"].ToString(); 
            this.LabelTel.Text = Application["tel"].ToString(); 
        }
    }
}