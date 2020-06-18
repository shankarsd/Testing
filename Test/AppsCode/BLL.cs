using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace Test.AppsCode
{
    public class BLL
    {
        SqlConn Obj = new SqlConn();

        public int Login(string em, string pas)
        {
                string Sql = string.Format("select count(*) from tblTester where ep_Id='{0}' and Password='{1}'", em, pas);
                return Obj.Aggregate(Sql);
        }

        #region Tester
        public int Check_EmpID(string id)
        {
            string Qry = string.Format("select count(*) from tblEmployee where ep_Id='{0}'", id);
            return Obj.Aggregate(Qry);
        }

        public int RegEpID(string id)
        {
            string Qry = string.Format("select count(*) from tblTester where ep_Id='{0}'", id);
            return Obj.Aggregate(Qry);
        }

        public int Register(string nm, string ad, string ct, string mo, string em, string ps, string epID)
        {
            string Qry = string.Format("insert into tblTester (Name,Adress,City,Mobile,Email_Id,Password,ep_Id) values('{0}','{1}','{2}','{3}','{4}','{5}','{6}')", nm, ad, ct, mo, em, ps, epID);
            return Obj.DoTransaction(Qry);
        }

        public DataTable GetTest_F_Alot()
        {
            string Qry = string.Format("select distinct tblTester.* from tblTester inner join tblAllot on tblTester.Tst_Id = tblAllot.Tst_Id where tblAllot.Status = 'Finished' or tblAllot.Status = 'Return' and tblAllot.Status = 'Alloted' union select distinct tblTester.* from tblTester left outer join tblAllot on tblTester.Tst_Id = tblAllot.Tst_Id where tblAllot.Tst_Id is null");
            return Obj.DoNonTransaction(Qry);
        }

        public int GetEmpT_ID(string eid)
        {
            string Qry = string.Format("select Tst_Id from tblTester where ep_Id='{0}'", eid);
            return Obj.Aggregate(Qry);
        }

        public string GetEmpT_Name(string eid)
        {
            string Qry = string.Format("select Name from tblTester where ep_Id='{0}'", eid);
            return Obj.Aggregate_String(Qry);
        }
        #endregion

        #region AddProjects
        public int AddProjects(string nm, string dom, string sts)
        {
            string Qry = string.Format("insert into tblProject (Name,Domain,Status) values('{0}','{1}','{2}')", nm, dom, sts);
            return Obj.DoTransaction(Qry);
        }

        public DataTable GetProjects()
        {
            string Qry = string.Format("select * from tblProject");
            return Obj.DoNonTransaction(Qry);
        }

        public int EditProject(string nm, string dom, int id)
        {
            string Qry = string.Format("update tblProject set Name='{0}',Domain='{1}' where Pr_Id={2}", nm, dom, id);
            return Obj.DoTransaction(Qry);
        }

        public int DeleteProject(int id)
        {
            string Qry = string.Format("delete from tblProject where Pr_Id={0}", id);
            return Obj.DoTransaction(Qry);
        }

        public DataTable GetProj_Pend()
        {
            string Qry = string.Format("select * from tblProject where Status='Pending'");
            return Obj.DoNonTransaction(Qry);
        }

        public int ProPendingCount()
        {
            string Qry = string.Format("select count(*) from tblProject where Status='Pending'");
            return Obj.Aggregate(Qry);
        }

        public int UpdateProject(int id)
        {
            string Qry = string.Format("update tblProject set Status='Alloted' where Pr_Id='{0}'", id);
            return Obj.DoTransaction(Qry);
        }

        public int ProjectCount()
        {
            string Sql = string.Format("select count(*) from tblProject");
            return Obj.Aggregate(Sql);
        }
        #endregion

        #region Allot
        public int AllotProjects(int pid, int tid, string dt)
        {
            string Qry = string.Format("insert into tblAllot (Pr_Id,Tst_Id,Date,Status) values('{0}','{1}','{2}','Alloted')", pid, tid, dt);
            return Obj.DoTransaction(Qry);
        }

        public int Up_AllotProjects(int pid, int tid, string dt, int aId)
        {
            string Qry = string.Format("update tblAllot set Pr_Id='{0}',Tst_Id='{1}',Date='{2}',Status='Alloted' where Alt_Id='{3}'", pid, tid, dt, aId);
            return Obj.DoTransaction(Qry);
        }

        public DataTable GetAlloted_Pro_Tst(int tid)
        {
            string Qry = string.Format("SELECT tblAllot.*, tblProject.Name FROM tblAllot INNER JOIN tblProject ON tblAllot.Pr_Id = tblProject.Pr_Id where tblAllot.Tst_Id='{0}'", tid);
            return Obj.DoNonTransaction(Qry);
        }

        public int AllotedProCount(int tid)
        {
            string Qry = string.Format("SELECT count(*) FROM tblAllot INNER JOIN tblProject ON tblAllot.Pr_Id = tblProject.Pr_Id where tblAllot.Tst_Id='{0}'", tid);
            return Obj.Aggregate(Qry);
        }

        public DataTable GetAllot_Pr_Rst(int tid)
        {
            string Qry = string.Format("SELECT tblAllot.*, tblProject.Name FROM tblAllot INNER JOIN tblProject ON tblAllot.Pr_Id = tblProject.Pr_Id where tblAllot.Tst_Id='{0}' and tblAllot.Status='Alloted'", tid);
            return Obj.DoNonTransaction(Qry);
        }

        public int ProResCounts(int tid)
        {
            string Qry = string.Format("SELECT count(*) FROM tblAllot INNER JOIN tblProject ON tblAllot.Pr_Id = tblProject.Pr_Id where tblAllot.Tst_Id='{0}' and tblAllot.Status='Alloted'", tid);
            return Obj.Aggregate(Qry);
        }

        public int Update_Alt_Pro(string des, string dt, int aId)
        {
            string Qry = string.Format("update tblAllot set Description='{0}',Pst_Date='{1}',Status='Finished' where Alt_Id='{2}'", des, dt, aId);
            return Obj.DoTransaction(Qry);
        }

        public int Update_Alt_Pro_Rej(string des, string dt, int aId)
        {
            string Qry = string.Format("update tblAllot set Description='{0}',Pst_Date='{1}',Status='Return' where Alt_Id='{2}'", des, dt, aId);
            return Obj.DoTransaction(Qry);
        }

        public DataTable GetAllot_Pr_Rst_Return()
        {
            string Qry = string.Format("SELECT tblAllot.*, tblProject.Name FROM tblAllot INNER JOIN tblProject ON tblAllot.Pr_Id = tblProject.Pr_Id where tblAllot.Status='Return'");
            return Obj.DoNonTransaction(Qry);
        }

        public int ReturnedProjectCount()
        {
            string Sql = string.Format("SELECT count(*) FROM tblAllot INNER JOIN tblProject ON tblAllot.Pr_Id = tblProject.Pr_Id where tblAllot.Status='Return'");
            return Obj.Aggregate(Sql);
        }

        public DataTable ProjectsResult()
        {
            string Qry = string.Format("SELECT tblAllot.*, tblProject.Name, tblTester.Name AS Tst_Name FROM tblAllot INNER JOIN tblProject ON tblAllot.Pr_Id = tblProject.Pr_Id INNER JOIN tblTester ON tblAllot.Tst_Id = tblTester.Tst_Id");
            return Obj.DoNonTransaction(Qry);
        }

        public int ProResCount()
        {
            string Sql = string.Format("SELECT count(*) FROM tblAllot INNER JOIN tblProject ON tblAllot.Pr_Id = tblProject.Pr_Id INNER JOIN tblTester ON tblAllot.Tst_Id = tblTester.Tst_Id");
            return Obj.Aggregate(Sql);
        }
        #endregion
    }
}