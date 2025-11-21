using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NGOService
{
    public partial class NGORegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            MyConnection obj = new MyConnection();
            Random rnd = new Random();
            int NGOId = (rnd.Next(100000, 999999) + DateTime.Now.Second);
            string Password = (rnd.Next(1000, 9999) + DateTime.Now.Second).ToString();

            string result = obj.NGORegister(NGOId, txtNGOName.Text, Password, txtDescription.Text, txtMobileNo.Text, txtEmailId.Text, txtAddress.Text);
            if (result == "1")
            {

                string Message = "Login Credentials NGO Id:" + NGOId + " & Password:" + Password;
                SendEmail.Send(txtEmailId.Text, Message);
                txtNGOName.Text = txtDescription.Text = txtEmailId.Text = txtMobileNo.Text = txtAddress.Text = "";
                lblMsg.Text = "NGO Account Created Successfully,System Manager Need To Approve Registration & Credentials Mailed";
                lblMsg.ForeColor = System.Drawing.Color.Green;
            }
            else if (result == "2")
            {
                txtNGOName.Text = txtDescription.Text = txtEmailId.Text = txtMobileNo.Text = txtAddress.Text = "";
                lblMsg.Text = "NGO Account Email Id Already Registered";
                lblMsg.ForeColor = System.Drawing.Color.Red;
            }
            else if (result == "0")
            {

                txtNGOName.Text = txtDescription.Text = txtEmailId.Text = txtMobileNo.Text = txtAddress.Text = "";
                lblMsg.Text = "NGO Account Creation Error";
                lblMsg.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }
    }
}