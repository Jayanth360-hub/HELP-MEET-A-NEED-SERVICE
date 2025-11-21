using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace NGOService
{
    public partial class UserNotification : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MyConnection obj = new MyConnection();
            DataTable tab = new DataTable();
            tab = obj.GetUserNotification();
            if (tab.Rows.Count > 0)
            {
                DataList1.DataSource = tab;
                DataList1.DataBind();
            }
        }

        protected void lnkViewLocation_Click(object sender, EventArgs e)
        {
            LinkButton lnk = (LinkButton)sender;
            string val = lnk.CommandArgument;
            string url = string.Format("http://maps.google.com/maps?q=loc:{0}&z=17", val);
            ClientScript.RegisterStartupScript(this.Page.GetType(), "", "window.open('"+url+"');", true);
        }

        protected void lnkAccept_Click(object sender, EventArgs e)
        {
            MyConnection obj = new MyConnection();
            LinkButton lnk = (LinkButton)sender;
            string result = obj.UpdateNotifyStatus(int.Parse(lnk.CommandArgument));
            obj = new MyConnection();
            DataTable tab = new DataTable();
            tab = obj.GetUserNotification();
            if (tab.Rows.Count > 0)
            {
                DataList1.DataSource = tab;
                DataList1.DataBind();

            }

        }

        protected void lnkViewImage_Click(object sender, EventArgs e)
        {
            LinkButton lnk = (LinkButton)sender;
            string url = lnk.CommandArgument;
            ClientScript.RegisterStartupScript(this.Page.GetType(), "", "window.open('" + url + "');", true);
        }
    }
}