using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace NGOService
{
    public partial class NGOApproval : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadData();
        }

        private void LoadData()
        {
            try
            {
                MyConnection obj = new MyConnection();
                DataTable tab = new DataTable();
                tab = obj.GetNGO_Pending();
                Table1.Controls.Clear();
                if (tab.Rows.Count > 0)
                {
                    TableRow hr = new TableRow();
                    TableHeaderCell hc1 = new TableHeaderCell();
                    TableHeaderCell hc2 = new TableHeaderCell();
                    TableHeaderCell hc3 = new TableHeaderCell();
                    TableHeaderCell hc4 = new TableHeaderCell();
                    TableHeaderCell hc5 = new TableHeaderCell();
                    TableHeaderCell hc6 = new TableHeaderCell();

                    hc1.Text = "NGO Name";
                    hr.Cells.Add(hc1);
                    hc2.Text = "Description";
                    hr.Cells.Add(hc2);
                    hc3.Text = "Mobile No";
                    hr.Cells.Add(hc3);
                    hc4.Text = "Email Id";
                    hr.Cells.Add(hc4);
                    hc5.Text = "Address";
                    hr.Cells.Add(hc5);
                    hc6.Text = "";
                    hr.Cells.Add(hc6);

                    Table1.Rows.Add(hr);
                    for (int i = 0; i < tab.Rows.Count; i++)
                    {
                        TableRow row = new TableRow();

                        Label lblNGOName = new Label();
                        lblNGOName.Text = tab.Rows[i]["NGOName"].ToString(); ;
                        TableCell NGOName = new TableCell();
                        NGOName.Controls.Add(lblNGOName);


                        Label lblDescription = new Label();
                        lblDescription.Text = tab.Rows[i]["Description"].ToString();
                        TableCell Description = new TableCell();
                        Description.Controls.Add(lblDescription);

                        Label lblMobileNo = new Label();
                        lblMobileNo.Text = tab.Rows[i]["MobileNo"].ToString();
                        TableCell MobileNo = new TableCell();
                        MobileNo.Controls.Add(lblMobileNo);

                        Label lblEmailId = new Label();
                        lblEmailId.Text = tab.Rows[i]["EmailId"].ToString();
                        TableCell EmailId = new TableCell();
                        EmailId.Controls.Add(lblEmailId);

                        Label lblAddress = new Label();
                        lblAddress.Text = tab.Rows[i]["Address"].ToString();
                        TableCell Address = new TableCell();
                        Address.Controls.Add(lblAddress);

                        LinkButton Approve = new LinkButton();
                        Approve.Text = "Approve";
                        Approve.ID = "lnkApprove" + i.ToString();
                        Approve.CommandArgument = tab.Rows[i]["NGOId"].ToString();
                        Approve.Click += new EventHandler(Approve_Click);

                        TableCell ApproveCell = new TableCell();
                        ApproveCell.Controls.Add(Approve);

                        row.Controls.Add(NGOName);
                        row.Controls.Add(Description);
                        row.Controls.Add(MobileNo);
                        row.Controls.Add(EmailId);
                        row.Controls.Add(Address);
                        row.Controls.Add(ApproveCell);
                        Table1.Controls.Add(row);

                    }
                }
                else
                {
                    lblMsg.Text = "No Record Found";
                }
            }
            catch
            {

            }
        }

        void Approve_Click(object sender, EventArgs e)
        {
            MyConnection obj = new MyConnection();
            LinkButton lnk = (LinkButton)sender;
            string result = obj.ApproveNGO(int.Parse(lnk.CommandArgument));
            if (result == "1")
            {
                LoadData();
            }
        }
    }
}