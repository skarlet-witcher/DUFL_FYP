using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataAccess;
using Entity;
using System.Data;

namespace Business
{
    public static class SuperAdminBusiness
    {
        public static DataTable SuperAdmin_SelectAdminInfo()
        {
            return DataAccess.Operations.GetDataTable("SuperAdmin_SelectAdminInfo", CommandType.StoredProcedure);
        }
        public static DataTable SuperAdmin_SelectAdminInfoByAdminID(string adminid)
        {
            string[] names = new string[] { "AdminID" };
            string[] values = new string[] { adminid };
            return DataAccess.Operations.GetDataTable("SuperAdmin_SelectAdminInfoByAdminID", CommandType.StoredProcedure, names, values);
        }
        public static int SuperAdmin_UpdateAdminInfo(AdminInfo ai)
        {
            string[] names = new string[] { "AdminID", "AdminName", "AdminPassword" };
            string[] values = new string[] { ai.AdminID, ai.AdminName, ai.AdminPassword };
            return DataAccess.Operations.ExecuteSQLByQuery("SuperAdmin_UpdateAdminInfo", CommandType.StoredProcedure, names, values);
        }
        public static int SuperAdmin_InsertNewAdmin(string adminid, string adminname, string adminpassword)
        {
            string[] names = new string[] { "AdminID", "AdminName", "AdminPassword" };
            string[] values = new string[] { adminid, adminname, adminpassword };
            return DataAccess.Operations.ExecuteSQLByQuery("SuperAdmin_InsertNewAdmin", CommandType.StoredProcedure, names, values);
        }
        public static int SuperAdminLoginCheck(Entity.SuperAdminInfo sa)
        {
            string[] names = new string[] { "SuperAdminID", "SuperAdminPassWord" };
            string[] values = new string[] { sa.SuperAdminID, sa.SuperAdminPassWord };
            return DataAccess.Operations.ExecuteSQLByScalar("SuperAdminLoginCheck", CommandType.StoredProcedure, names, values);
        }
        public static int OldPassWordCheck(string oldpwd,string superadminid)
        {
            string[] names = new string[] { "SuperAdminPassWord","SuperAdminID" };
            string[] values = new string[] { oldpwd,superadminid };
            return DataAccess.Operations.ExecuteSQLByScalar("SuperAdmin_OldPassWordCheck", CommandType.StoredProcedure, names, values);
        }
        public static int ChangePassword(string newpwd, Entity.SuperAdminInfo sa)
        {
            string[] names = new string[] { "SuperAdminPassword", "SuperAdminID" };
            string[] values = new string[] { newpwd, sa.SuperAdminID };
            return DataAccess.Operations.ExecuteSQLByQuery("SuperAdmin_ChangePassword", CommandType.StoredProcedure, names, values);
        }
        public static int SuperAdmin_DeleteAdmin(string adminid)
        {
            string[] names = new string[] { "AdminID" };
            string[] values = new string[] { adminid };
            return DataAccess.Operations.ExecuteSQLByQuery("SuperAdmin_DeleteAdmin", CommandType.StoredProcedure, names, values);
        }
        public static DataTable SuperAdmin_SelectAdminInfoByAdminName(string adminname)
        {
            string[] names = new string[] { "AdminName" };
            string[] values = new string[] { adminname };
            return DataAccess.Operations.GetDataTable("SuperAdmin_SelectAdminInfoByAdminName", CommandType.StoredProcedure, names, values);
        }
    }
}
