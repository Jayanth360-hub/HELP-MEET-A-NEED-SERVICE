using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace NGOService
{
    public partial class AddPerson : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MyConnection obj = new MyConnection();
                DataTable tab = new DataTable();
                tab = obj.GetServiceType();
                ddlType.DataSource = tab;
                ddlType.DataTextField = "ServiceType";
                ddlType.DataValueField = "TypeId";
                ddlType.DataBind();
                ddlType.Items.Insert(0, "--Select--");
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            MyConnection obj = new MyConnection();
            string result = obj.AddPerson(int.Parse(Session["UserId"].ToString()),int.Parse(ddlType.SelectedItem.Value), txtName.Text,int.Parse(txtAge.Text),ddlGender.SelectedItem.Text,txtReason.Text,txtAddress.Text);
            if (result == "1")
            {
                ddlType.SelectedIndex = 0;
                ddlGender.SelectedIndex = 0;
                txtName.Text = txtAge.Text = txtReason.Text = txtAddress.Text = "";
                lblMsg.Text = "Service Person Details Added Successfully";
                lblMsg.ForeColor = System.Drawing.Color.Green;
            }
            
            else if (result == "0")
            {
                ddlType.SelectedIndex = 0;
                ddlGender.SelectedIndex = 0;
                txtName.Text = txtAge.Text = txtReason.Text = txtAddress.Text = "";
                lblMsg.Text = "Service Person Details Added Error";
                lblMsg.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}