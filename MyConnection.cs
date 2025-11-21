using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Devart.Data;
using Devart.Data.MySql;
using System.Data;

namespace NGOService
{
    public class MyConnection
    {
        MySqlConnection con = null;
        MySqlCommand cmd = null;
        MySqlDataAdapter adp = null;

        public MyConnection()
        {
            con = new MySqlConnection("server=srv505046.hstgr.cloud;database=srv5_ngoservice;user id=srv5_ngouser;password=c5h693F7t;port=3306;");
            con.Open();
        }

        public int LoginVerify(int UserId, string Password, string UserType)
        {
            cmd = new MySqlCommand();
            cmd.Connection = con;
            string sql = "";
            if (UserType == "System Manager")
            {
                sql = string.Format("Select count(*) from systemmanager where AdminId={0} and Password='{1}'", UserId, Password);
            }
            else if (UserType == "NGO")
            {
                sql = string.Format("Select count(*) from ngomaster where NGOId={0} and Password='{1}' and Status='Approved'", UserId, Password);
            }
            else if (UserType == "NGO Member")
            {
                sql = string.Format("Select count(*) from ngomember where NMId={0} and Password='{1}'", UserId, Password);
            }
            else if (UserType == "Donor")
            {
                sql = string.Format("Select count(*) from donormaster where DonorId={0} and Password='{1}' and Status='Active'", UserId, Password);
            }
            cmd.CommandText = sql;
            int result = int.Parse(cmd.ExecuteScalar().ToString());
            con.Close();
            return result;
        }

        public string ChangePassword(int UserId, string Password, string UserType)
        {

            cmd = new MySqlCommand();
            cmd.Connection = con;
            string result = "";
            string sql = "";
            if (UserType == "System Manager")
            {
                sql = string.Format("Update systemmanager set Password={0} where AdminId={1}", Password, UserId);
            }
            else if (UserType == "NGO")
            {
                sql = string.Format("Update ngomaster set Password={0} where NGOId={1}", Password, UserId);
            }
            else if (UserType == "NGO Member")
            {
                sql = string.Format("Update ngomember set Password={0} where NMId={1}", Password, UserId);
            }
            else if (UserType == "Donor")
            {
                sql = string.Format("Update donormaster set Password={0} where DonorId={1}", Password, UserId);
            }
            cmd.CommandText = sql;
            result = cmd.ExecuteNonQuery().ToString();
            con.Close();
            return result;
        }
        public string AddServiceType(string ServiceType)
        {
            cmd = new MySqlCommand();
            cmd.Connection = con;
            string sqlchk = string.Format("Select count(*) from servicetype where ServiceType='{0}'", ServiceType);
            cmd.CommandText = sqlchk;
            int cnt = int.Parse(cmd.ExecuteScalar().ToString());
            string result = "";
            if (cnt == 0)
            {
                string sql = string.Format("insert into servicetype(ServiceType)values('{0}')", ServiceType);
                cmd.CommandText = sql;
                result = cmd.ExecuteNonQuery().ToString();
            }
            else
            {
                result = "2";
            }
            con.Close();
            return result;
        }
        public string NGORegister(int NGOId, string Name, string Password, string Description, string MobileNo, string EmailId, string Address)
        {
            cmd = new MySqlCommand();
            cmd.Connection = con;
            string sqlchk = string.Format("Select count(*) from ngomaster where EmailId='{0}'", EmailId);
            cmd.CommandText = sqlchk;
            int cnt = int.Parse(cmd.ExecuteScalar().ToString());
            string result = "";
            if (cnt == 0)
            {
                string sql = string.Format("insert into ngomaster(NGOId,NGOName,Password,Description,MobileNo,EmailId,Address,Status)values({0},'{1}','{2}','{3}','{4}','{5}','{6}','Pending')", NGOId, Name, Password, Description, MobileNo, EmailId, Address);
                cmd.CommandText = sql;
                result = cmd.ExecuteNonQuery().ToString();
            }
            else
            {
                result = "2";
            }
            con.Close();
            return result;
        }
        public DataTable GetNGO_Pending()
        {
            cmd = new MySqlCommand();
            cmd.Connection = con;
            string sql = string.Format("Select * from ngomaster where Status='Pending'");
            cmd.CommandText = sql;
            adp = new MySqlDataAdapter(cmd);
            DataTable tab = new DataTable();
            adp.Fill(tab);
            con.Close();
            return tab;
        }
        public string ApproveNGO(int NGOId)
        {
            cmd = new MySqlCommand();
            cmd.Connection = con;
            string result = "";
            string sql = string.Format("Update ngomaster set Status='Approved' where NGOId={0}", NGOId);
            cmd.CommandText = sql;
            result = cmd.ExecuteNonQuery().ToString();
            con.Close();
            return result;
        }
        public string AddNGOMember(int NMId,int NGOId, string Name, string Password, string MobileNo, string EmailId, string Address, string Longitude, string Latitude)
        {
            cmd = new MySqlCommand();
            cmd.Connection = con;
            string sqlchk = string.Format("Select count(*) from ngomember where EmailId='{0}'", EmailId);
            cmd.CommandText = sqlchk;
            int cnt = int.Parse(cmd.ExecuteScalar().ToString());
            string result = "";
            if (cnt == 0)
            {
                string sql = string.Format("insert into ngomember(NMId,NGOId,Name,Password,MobileNo,EmailId,Address,Longitude,Latitude)values({0},{1},'{2}','{3}','{4}','{5}','{6}','{7}','{8}')",NMId, NGOId, Name, Password,MobileNo, EmailId, Address,Longitude,Latitude);
                cmd.CommandText = sql;
                result = cmd.ExecuteNonQuery().ToString();
            }
            else
            {
                result = "2";
            }
            con.Close();
            return result;
        }
        public string DonorRegister(int DonorId, string Name, string Password, string MobileNo, string EmailId, string Address)
        {
            cmd = new MySqlCommand();
            cmd.Connection = con;
            string sqlchk = string.Format("Select count(*) from donormaster where EmailId='{0}'", EmailId);
            cmd.CommandText = sqlchk;
            int cnt = int.Parse(cmd.ExecuteScalar().ToString());
            string result = "";
            if (cnt == 0)
            {
                string sql = string.Format("insert into donormaster(DonorId,Name,Password,MobileNo,EmailId,Address,Balance,Status)values({0},'{1}','{2}','{3}','{4}','{5}',0,'Active')", DonorId, Name, Password, MobileNo, EmailId, Address);
                cmd.CommandText = sql;
                result = cmd.ExecuteNonQuery().ToString();
            }
            else
            {
                result = "2";
            }
            con.Close();
            return result;
        }

        public string AddDonorWallet(int DonorId, int Amount)
        {
            cmd = new MySqlCommand();
            cmd.Connection = con;
            string result = "";
            string sql = string.Format("Update donormaster set Balance=Balance+{0} where DonorId={1}", Amount, DonorId);
            cmd.CommandText = sql;
            result = cmd.ExecuteNonQuery().ToString();

            string sqldw = string.Format("insert into donorwallet(DonorId,DDate,Amount)values({0},'{1}',{2})", DonorId, DateTime.Now.ToString("dd/MM/yyyy"), Amount);
            cmd.CommandText = sqldw;
            result = cmd.ExecuteNonQuery().ToString();

            con.Close();
            return result;
        }
        public DataTable GetDonorWallet(int DonorId)
        {
            cmd = new MySqlCommand();
            cmd.Connection = con;
            string sql = string.Format(@"SELECT donorwallet.DDate as DepositeDate, donorwallet.Amount, donormaster.Balance, donormaster.DonorId
                                        FROM donormaster INNER JOIN donorwallet ON donormaster.DonorId = donorwallet.DonorId
                                        where donormaster.DonorId={0}", DonorId);
            cmd.CommandText = sql;
            adp = new MySqlDataAdapter(cmd);
            DataTable tab = new DataTable();
            adp.Fill(tab);
            con.Close();
            return tab;
        }

        public DataTable GetNGO_DonorPay()
        {
            cmd = new MySqlCommand();
            cmd.Connection = con;
            string sql = string.Format("SELECT concat(CAST(NGOId as CHAR(50)),'-',NGOName) as NGOName,NGOId FROM ngomaster where Status='Approved'");
            cmd.CommandText = sql;
            adp = new MySqlDataAdapter(cmd);
            DataTable tabv = new DataTable();
            adp.Fill(tabv);
            con.Close();
            return tabv;
        }
        public string DonorPayNGO(int NGOId,int DonorId, int Amount)
        {
            cmd = new MySqlCommand();
            cmd.Connection = con;
            string result = "";
            string sql = string.Format("Update donormaster set Balance=Balance-{0} where DonorId={1}", Amount, DonorId);
            cmd.CommandText = sql;
            result = cmd.ExecuteNonQuery().ToString();
            string sqldw = string.Format("insert into payngo(NGOId,DonorId,PayDate,Amount)values({0},{1},'{2}',{3})",NGOId, DonorId, DateTime.Now.ToString("dd/MM/yyyy"), Amount);
            cmd.CommandText = sqldw;
            result = cmd.ExecuteNonQuery().ToString();

            con.Close();
            return result;
        }
        public DataTable GetDonorPay(int NGOId)
        {
            cmd = new MySqlCommand();
            cmd.Connection = con;
            string sql = string.Format("select donormaster.Name,payngo.PayDate,payngo.Amount from payngo inner join donormaster on donormaster.DonorId=payngo.DonorId where payngo.NGOId={0} order by payngo.DPNId desc",NGOId);
            cmd.CommandText = sql;
            adp = new MySqlDataAdapter(cmd);
            DataTable tab = new DataTable();
            adp.Fill(tab);
            con.Close();
            return tab;
        }
        public DataTable GetServiceType()
        {
            cmd = new MySqlCommand();
            cmd.Connection = con;
            string sql = string.Format("Select * from servicetype");
            cmd.CommandText = sql;
            adp = new MySqlDataAdapter(cmd);
            DataTable tab = new DataTable();
            adp.Fill(tab);
            con.Close();
            return tab;
        }
        public string AddPerson(int NGOId,int TypeId,string Name,int Age,string Gender,string Reason,string Address)
        {
            cmd = new MySqlCommand();
            cmd.Connection = con;
            string result = "";

            string sqldw = string.Format("insert into personmaster(NGOId,TypeId,Name,Age,Gender,Reason,RegDate,Address)values({0},{1},'{2}',{3},'{4}','{5}','{6}','{7}')", NGOId, TypeId, Name, Age, Gender, Reason, DateTime.Now.ToString("dd/MM/yyyy"), Address);
            cmd.CommandText = sqldw;
            result = cmd.ExecuteNonQuery().ToString();

            con.Close();
            return result;
        }
        public DataTable GetServicePerson(int NGOId)
        {
            cmd = new MySqlCommand();
            cmd.Connection = con;
            string sql = string.Format("Select servicetype.ServiceType,personmaster.Name,personmaster.Age,personmaster.Gender,personmaster.Reason,personmaster.RegDate,personmaster.Address from personmaster inner join servicetype on personmaster.TypeId=servicetype.TypeId where personmaster.NGOId={0}", NGOId);
            cmd.CommandText = sql;
            adp = new MySqlDataAdapter(cmd);
            DataTable tab = new DataTable();
            adp.Fill(tab);
            con.Close();
            return tab;
        }
        public DataTable GetUserNotification()
        {
            cmd = new MySqlCommand();
            cmd.Connection = con;
            string sql = string.Format("Select * from tblhelp where status='N'");
            cmd.CommandText = sql;
            adp = new MySqlDataAdapter(cmd);
            DataTable tab = new DataTable();
            adp.Fill(tab);
            con.Close();
            return tab;
        }

        public string UpdateNotifyStatus(int Id)
        {
            cmd = new MySqlCommand();
            cmd.Connection = con;
            string result = "";
            string sqldw = string.Format("update tblhelp set status='Y' where id={0}",Id);
            cmd.CommandText = sqldw;
            result = cmd.ExecuteNonQuery().ToString();
            con.Close();
            return result;
        }
    }
    
}