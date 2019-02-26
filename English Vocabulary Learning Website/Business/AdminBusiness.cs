using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entity;
using System.Data;

namespace Business
{
    public static class AdminBusiness
    {
        public static DataTable SelectAllUserInfo()
        {
            return DataAccess.Operations.GetDataTable("Admin_SelectAllUserInfo", CommandType.StoredProcedure);
        }
        public static DataTable SelectAllUserInfoByUserID(string userid)
        {
            string[] names = new string[] { "UserID" };
            string[] values = new string[] { userid };
            return DataAccess.Operations.GetDataTable("Admin_SelectAllUserInfoByUserID", CommandType.StoredProcedure, names, values);
        }
        public static DataTable SelectAllUserInfoByUserName(string username)
        {
            string[] names = new string[] { "UserName" };
            string[] values = new string[] { username };
            return DataAccess.Operations.GetDataTable("Admin_SelectAllUserInfoByUserName", CommandType.StoredProcedure, names, values);
        }
        public static DataTable SelectAllUserInfoByYear(string year)
        {
            string[] names = new string[] { "Year" };
            string[] values = new string[] { year };
            return DataAccess.Operations.GetDataTable("Admin_SelectAllUserInfoByYear", CommandType.StoredProcedure, names, values);
        }
        public static DataTable SelectAllUserInfoByGender(string gender)
        {
            string[] names = new string[] { "Gender" };
            string[] values = new string[] { gender };
            return DataAccess.Operations.GetDataTable("Admin_SelectAllUserInfoByGender", CommandType.StoredProcedure, names, values);
        }
        public static DataTable SelectAllUserInfoByRangeOfAge(string minage, string maxage)
        {
            string[] names = new string[] { "minage", "maxage" };
            object[] values = new string[] { minage, maxage };
            return DataAccess.Operations.GetDataTable("Admin_SelectAllUserInfoByRangeOfAge", CommandType.StoredProcedure, names, values);
        }
        public static int AdminLoginCheck(Entity.AdminInfo ai)
        {
            string[] names = new string[] { "AdminID", "AdminPassword" };
            string[] values = new string[] { ai.AdminID, ai.AdminPassword };
            return DataAccess.Operations.ExecuteSQLByScalar("AdminLoginCheck", CommandType.StoredProcedure, names, values);
        }
        public static DataTable SelectAdminInfoByAdminID(Entity.AdminInfo ai)
        {
            string[] names = new string[] { "AdminID" };
            string[] values = new string[] { ai.AdminID };
            return DataAccess.Operations.GetDataTable("SelectAdminInfoByAdminID", CommandType.StoredProcedure, names, values);
        }
        public static int Admin_ModifyUserInfo(Entity.UserInfo ui)
        {
            string[] names = new string[] { "UserID", "UserName", "UserPassword", "Birthday", "Email", "Gender", "Age" };
            object[] values = new string[] { ui.UserID, ui.UserName, ui.UserPassWord, ui.Birthday, ui.Email, ui.Gender, ui.Age };
            return DataAccess.Operations.ExecuteSQLByQuery("Admin_ModifyUserInfo", CommandType.StoredProcedure, names, values);
        }
        public static int Admin_DeleteUserByUserID(string userid)
        {
            string[] names = new string[] { "UserID" };
            string[] values = new string[] { userid };
            return DataAccess.Operations.ExecuteSQLByQuery("Admin_DeleteUserByUserID", CommandType.StoredProcedure, names, values);
        }
        public static DataTable Admin_SelectAllCollections()
        {
            return DataAccess.Operations.GetDataTable("Admin_SelectAllCollections", CommandType.StoredProcedure);
        }
        public static int Admin_DeleteCollections(string userid, string cname)
        {
            string[] names = new string[] { "UserID", "Cname" };
            string[] values = new string[] { userid, cname };
            return DataAccess.Operations.ExecuteSQLByQuery("Admin_DeleteCollections", CommandType.StoredProcedure, names, values);
        }
        public static int OldPassWordCheck(string oldpwd,string adminid)
        {
            string[] names = new string[] { "AdminPassword","AdminID" };
            string[] values = new string[] { oldpwd,adminid };
            return DataAccess.Operations.ExecuteSQLByScalar("Admin_OldPassWordCheck", CommandType.StoredProcedure, names, values);
        }
        public static int ChangePassword(string newpwd, Entity.AdminInfo ai)
        {
            string[] names = new string[] { "AdminPassword", "AdminID" };
            string[] values = new string[] { newpwd, ai.AdminID };
            return DataAccess.Operations.ExecuteSQLByQuery("Admin_ChangePassword", CommandType.StoredProcedure, names, values);
        }

        public static DataTable Admin_FindPassword(string adminid, string adminname)
        {
            string[] names = new string[] { "AdminID", "AdminName" };
            string[] values = new string[] { adminid, adminname };
            return DataAccess.Operations.GetDataTable("Admin_FindPassword", CommandType.StoredProcedure, names, values);
        }
        public static DataTable Admin_SelectAllUserInfoByAge(string age)
        {
            string[] names = new string[] { "Age" };
            string[] values = new string[] { age };
            return DataAccess.Operations.GetDataTable("Admin_SelectAllUserInfoByAge", CommandType.StoredProcedure, names, values);
        }
        public static DataTable Admin_SelectAllFavorite()
        {
            return DataAccess.Operations.GetDataTable("Admin_SelectAllFavorite", CommandType.StoredProcedure);
        }
        public static int Admin_DeleteFavoriteWord(string userid, string english, string chinese)
        {
            string[] names = new string[] { "UserID", "English", "Chinese" };
            object[] values = new object[] { userid, english, chinese };
            return DataAccess.Operations.ExecuteSQLByQuery("Admin_DeleteFavoriteWord", CommandType.StoredProcedure, names, values);
        }
        public static DataTable Admin_SelectAllPwdAnswer()
        {
            return DataAccess.Operations.GetDataTable("Admin_SelectAllPwdAnswer", CommandType.StoredProcedure);
        }
        public static int Admin_DeletePwdAnswer(string answerid)
        {
            string[] names = new string[] { "AnswerID" };
            string[] values = new string[] { answerid };
            return DataAccess.Operations.ExecuteSQLByQuery("Admin_DeletePwdAnswer", CommandType.StoredProcedure, names, values);
        }
        public static int Admin_PwdCheck(string userid)
        {
            string[] names = new string[] { "UserID" };
            string[] values = new string[] { userid };
            return DataAccess.Operations.ExecuteSQLByScalar("Admin_PwdCheck", CommandType.StoredProcedure, names, values);
        }
        public static DataTable Admin_SearchPwdAnswerByUserID(string userid)
        {
            string[] names = new string[] { "UserID" };
            object[] values = new object[] { userid };
            return DataAccess.Operations.GetDataTable("Admin_SearchPwdAnswerByUserID",CommandType.StoredProcedure,names,values);
        }
        public static int Admin_ChangePwdAnswerByAnswerID(string answerid,string answer)
        {
            string[] names = new string[] { "AnswerID","Answer" };
            object[] values = new object[] { answerid,answer};
            return DataAccess.Operations.ExecuteSQLByQuery("Admin_ChangePwdAnswerByAnswerID",CommandType.StoredProcedure,names,values);
        }
        public static DataTable Admin_SelectFavoriteByUserID(string userid)
        {
            string[] names = new string[] { "UserID" };
            object[] values = new object[] { userid };
            return DataAccess.Operations.GetDataTable("Admin_SelectFavoriteByUserID",CommandType.StoredProcedure,names,values);
        }
        public static int Admin_DeletePwdAnswerByUserID(string userid)
        {
            string[] names = new string[] { "UserID" };
            object[] values = new object[] { userid };
            return DataAccess.Operations.ExecuteSQLByQuery("Admin_DeletePwdAnswerByUserID", CommandType.StoredProcedure, names, values);
        }
        public static DataTable Admin_SelectCollectionsByUserID(string userid)
        {
            string[] names = new string[] { "UserID" };
            object[] values = new object[] { userid };
            return DataAccess.Operations.GetDataTable("Admin_SelectCollectionsByUserID",CommandType.StoredProcedure,names,values);
        }
    }
}
