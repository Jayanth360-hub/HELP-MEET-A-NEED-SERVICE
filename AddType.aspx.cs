using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NGOService
{
    public partial class AddType : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            MyConnection obj = new MyConnection();
            string result = obj.AddServiceType(txtType.Text);
            if (result == "1")
            {
                txtType.Text = "";
                lblMsg.Text = "Add Service Type Successfully";
                lblMsg.ForeColor = System.Drawing.Color.Green;
            }
            else if (result == "2")
            {
                txtType.Text = "";
                lblMsg.Text = "Add Service Type Already";
                lblMsg.ForeColor = System.Drawing.Color.Red;
            }
            else if (result == "0")
            {

                txtType.Text = "";
                lblMsg.Text = "Amount Added To Wallet Error";
                lblMsg.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}