using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NGOService
{
    public partial class AddNGOMember : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            MyConnection obj = new MyConnection();
            Random rnd = new Random();
            int NMId = (rnd.Next(100000, 999999) + DateTime.Now.Second);
            string Password = (rnd.Next(1000, 9999) + DateTime.Now.Second).ToString();

            string result = obj.AddNGOMember(NMId, int.Parse(Session["UserId"].ToString()), txtName.Text, Password,txtMobileNo.Text, txtEmailId.Text, txtAddress.Text,txtLongitude.Text,txtLatitude.Text);
            if (result == "1")
            {
                string Message = "Login Credentials NGO Member Id:" + NMId + " & Password:" + Password;
                SendEmail.Send(txtEmailId.Text, Message);
                txtName.Text = txtEmailId.Text = txtMobileNo.Text = txtAddress.Text = txtLongitude.Text=txtLatitude.Text="";
                lblMsg.Text = "NGO Member Account Created Successfully & Credentials Mailed";
                lblMsg.ForeColor = System.Drawing.Color.Green;
            }
            else if (result == "2")
            {
                txtName.Text = txtEmailId.Text = txtMobileNo.Text = txtAddress.Text = txtLongitude.Text = txtLatitude.Text = "";
                lblMsg.Text = "NGO Member Account Email Id Already Register";
                lblMsg.ForeColor = System.Drawing.Color.Red;
            }
            else if (result == "0")
            {

                txtName.Text = txtEmailId.Text = txtMobileNo.Text = txtAddress.Text = txtLongitude.Text=txtLatitude.Text = "";
                lblMsg.Text = "NGO Member Account Creation Error";
                lblMsg.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}