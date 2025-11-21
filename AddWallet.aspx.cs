using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NGOService
{
    public partial class AddWallet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            MyConnection obj = new MyConnection();
            string result = obj.AddDonorWallet(int.Parse(Session["UserId"].ToString()), int.Parse(txtAmt.Text));
            if (result == "1")
            {
                txtAmt.Text = "";
                lblMsg.Text = "Amount Added To Wallet Successfully";
                lblMsg.ForeColor = System.Drawing.Color.Green;
            }

            else if (result == "0")
            {

                txtAmt.Text = "";
                lblMsg.Text = "Amount Added To Wallet Error";
                lblMsg.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}