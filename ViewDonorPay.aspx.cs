using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace NGOService
{
    public partial class ViewDonorPay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadData();
        }
        public void LoadData()
        {
            try
            {
                MyConnection obj = new MyConnection();
                DataTable tab = new DataTable();
                tab = obj.GetDonorPay(int.Parse(Session["UserId"].ToString()));
                if (tab.Rows.Count > 0)
                {
                    Table1.Controls.Clear();
                    TableRow hr = new TableRow();

                    TableHeaderCell hc1 = new TableHeaderCell();
                    hc1.Text = "Donor Name";
                    TableHeaderCell hc2 = new TableHeaderCell();
                    hc2.Text = "Pay Date";
                    TableHeaderCell hc3 = new TableHeaderCell();
                    hc3.Text = "Amount";
                    hr.Cells.Add(hc1);
                    hr.Cells.Add(hc2);
                    hr.Cells.Add(hc3);

                    Table1.Rows.Add(hr);
                    for (int i = 0; i < tab.Rows.Count; i++)
                    {
                        TableRow row = new TableRow();

                        Label lblDonorName = new Label();
                        lblDonorName.Text = tab.Rows[i]["Name"].ToString();

                        TableCell DonorName = new TableCell();
                        DonorName.Controls.Add(lblDonorName);

                        Label lblPayDate = new Label();
                        lblPayDate.Text = tab.Rows[i]["PayDate"].ToString();

                        TableCell PayDate = new TableCell();
                        PayDate.Controls.Add(lblPayDate);

                        Label lblAmount = new Label();
                        lblAmount.Text = tab.Rows[i]["Amount"].ToString();

                        TableCell Amount = new TableCell();
                        Amount.Controls.Add(lblAmount);

                        row.Controls.Add(DonorName);
                        row.Controls.Add(PayDate);
                        row.Controls.Add(Amount);

                        Table1.Controls.Add(row);
                    }
                }
            }
            catch
            {
            }
        }
    }
}