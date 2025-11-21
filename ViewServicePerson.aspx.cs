using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace NGOService
{
    public partial class ViewServicePerson : System.Web.UI.Page
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
                tab = obj.GetServicePerson(int.Parse(Session["UserId"].ToString()));
                if (tab.Rows.Count > 0)
                {
                    Table1.Controls.Clear();
                    TableRow hr = new TableRow();

                    TableHeaderCell hc1 = new TableHeaderCell();
                    hc1.Text = "Person Name";
                    TableHeaderCell hc2 = new TableHeaderCell();
                    hc2.Text = "Service Type";
                    TableHeaderCell hc3 = new TableHeaderCell();
                    hc3.Text = "Age";
                    TableHeaderCell hc4 = new TableHeaderCell();
                    hc4.Text = "Gender";
                    TableHeaderCell hc5 = new TableHeaderCell();
                    hc5.Text = "Reason";
                    TableHeaderCell hc6 = new TableHeaderCell();
                    hc6.Text = "Reg Date";
                    TableHeaderCell hc7 = new TableHeaderCell();
                    hc7.Text = "Address";


                    hr.Cells.Add(hc1);
                    hr.Cells.Add(hc2);
                    hr.Cells.Add(hc3);
                    hr.Cells.Add(hc4);
                    hr.Cells.Add(hc5);
                    hr.Cells.Add(hc6);
                    hr.Cells.Add(hc7);

                    Table1.Rows.Add(hr);
                    for (int i = 0; i < tab.Rows.Count; i++)
                    {
                        TableRow row = new TableRow();

                        Label lblName = new Label();
                        lblName.Text = tab.Rows[i]["Name"].ToString();

                        TableCell Name = new TableCell();
                        Name.Controls.Add(lblName);

                        Label lblServiceType = new Label();
                        lblServiceType.Text = tab.Rows[i]["ServiceType"].ToString();

                        TableCell ServiceType = new TableCell();
                        ServiceType.Controls.Add(lblServiceType);

                        Label lblAge = new Label();
                        lblAge.Text = tab.Rows[i]["Age"].ToString();

                        TableCell Age = new TableCell();
                        Age.Controls.Add(lblAge);

                        Label lblGender = new Label();
                        lblGender.Text = tab.Rows[i]["Gender"].ToString();

                        TableCell Gender = new TableCell();
                        Gender.Controls.Add(lblGender);

                        Label lblReason = new Label();
                        lblReason.Text = tab.Rows[i]["Reason"].ToString();

                        TableCell Reason = new TableCell();
                        Reason.Controls.Add(lblReason);

                        Label lblRegDate = new Label();
                        lblRegDate.Text = tab.Rows[i]["RegDate"].ToString();

                        TableCell RegDate = new TableCell();
                        RegDate.Controls.Add(lblRegDate);

                        Label lblAddress = new Label();
                        lblAddress.Text = tab.Rows[i]["Address"].ToString();

                        TableCell Address = new TableCell();
                        Address.Controls.Add(lblAddress);

                        row.Controls.Add(Name);
                        row.Controls.Add(ServiceType);
                        row.Controls.Add(Age);
                        row.Controls.Add(Gender);
                        row.Controls.Add(Reason);
                        row.Controls.Add(RegDate);
                        row.Controls.Add(Address);

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