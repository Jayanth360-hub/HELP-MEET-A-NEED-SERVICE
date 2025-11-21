using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NGOService
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            MyConnection obj = new MyConnection();
            int result = obj.LoginVerify(int.Parse(txtUserId.Text), txtPassword.Text, ddlUserType.SelectedItem.Text);
            if (result == 1)
            {
                Session["UserId"] = txtUserId.Text;
                Session["Password"] = txtPassword.Text;
                Session["UserType"] = ddlUserType.SelectedItem.Text;
                switch (ddlUserType.SelectedItem.Text)
                {
                    case "System Manager":
                        Response.Redirect("AdminHome.aspx");
                        break;
                    case "NGO":
                        Response.Redirect("NGOHome.aspx");
                        break;
                    case "NGO Member":
                        Response.Redirect("NGOMemberHome.aspx");
                        break;
                    case "Donor":
                        Response.Redirect("DonorHome.aspx");
                        break;
                    
                }
            }
            else
            {
                lblMsg.Text = "Invalid UserId/Password";
                lblMsg.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }
    }
}