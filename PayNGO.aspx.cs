using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace NGOService
{
    public partial class PayNGO : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MyConnection obj = new MyConnection();
                DataTable tab = new DataTable();
                tab = obj.GetNGO_DonorPay();
                ddlNGO.DataSource = tab;
                ddlNGO.DataTextField = "NGOName";
                ddlNGO.DataValueField = "NGOId";
                ddlNGO.DataBind();
                ddlNGO.Items.Insert(0, "--Select--");
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            MyConnection obj = new MyConnection();
            string result = obj.DonorPayNGO(int.Parse(ddlNGO.SelectedItem.Value),int.Parse(Session["UserId"].ToString()), int.Parse(txtAmt.Text));
            if (result == "1")
            {
                txtAmt.Text = "";
                ddlNGO.SelectedIndex = 0;
                lblMsg.Text = "Amount Pay to NGO Successfully";
                lblMsg.ForeColor = System.Drawing.Color.Green;
            }

            else if (result == "0")
            {

                txtAmt.Text = "";
                ddlNGO.SelectedIndex = 0;
                lblMsg.Text = "Amount  Pay to NGO Error";
                lblMsg.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}