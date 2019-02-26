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
    public static class StudentBusiness
    {
        public static int LoginCheck(Entity.UserInfo ui)
        {
            string[] names = new string[] { "UserID", "UserPassWord" };
            string[] values = new string[] { ui.UserID, ui.UserPassWord };
            return DataAccess.Operations.ExecuteSQLByScalar("UserLoginCheck", CommandType.StoredProcedure, names, values);
        }
        public static DataTable Register_NewUserID()
        {
            return DataAccess.Operations.GetDataTable("Register_NewUserID", CommandType.StoredProcedure);
        }
        public static DataTable Register_NewAnswerID()
        {
            return DataAccess.Operations.GetDataTable("Register_NewAnswerID", CommandType.StoredProcedure);
        }
        public static int RegisterForStudent(Entity.UserInfo ui)
        {
            string[] names = new string[] { "UserID", "UserName", "UserPassWord", "Birthday", "Email", "Gender", "Age" };
            string[] values = new string[] { ui.UserID, ui.UserName, ui.UserPassWord, ui.Birthday, ui.Email, ui.Gender, ui.Age };
            return DataAccess.Operations.ExecuteSQLByQuery("RegisterForStudent", CommandType.StoredProcedure, names, values);
        }
        public static DataTable GetUserName(Entity.UserInfo ui)
        {
            string[] names = new string[] { "UserID" };
            string[] values = new string[] { ui.UserID };
            return DataAccess.Operations.GetDataTable("GetUserNameByID", CommandType.StoredProcedure, names, values);
        }
        public static DataTable GetCollectionName(Entity.StudentCollections sc)
        {
            string[] names = new string[] { "Cname" };
            string[] values = new string[] { sc.Cname };
            return DataAccess.Operations.GetDataTable("User_SearchCollectionsNameByCname", CommandType.StoredProcedure, names, values);
        }

        public static DataTable SearchUserName(string username)
        {
            string[] names = new string[] { "UserName" };
            string[] values = new string[] { username };
            return DataAccess.Operations.GetDataTable("User_SearchUserByUserName", CommandType.StoredProcedure, names, values);
        }
        public static DataTable GetUserInfoByUserID(Entity.UserInfo ui)
        {
            string[] names = new string[] { "UserID" };
            string[] values = new string[] { ui.UserID };
            return DataAccess.Operations.GetDataTable("GetUserInfoByUserID", CommandType.StoredProcedure, names, values);
        }
        public static int OldPassWordCheck(string oldpwd)
        {
            string[] names = new string[] { "UserPassword" };
            string[] values = new string[] { oldpwd };
            return DataAccess.Operations.ExecuteSQLByScalar("User_OldPassWordCheck", CommandType.StoredProcedure, names, values);
        }
        public static int ChangePassword(string newpwd, Entity.UserInfo ui)
        {
            string[] names = new string[] { "UserPassword", "UserID" };
            string[] values = new string[] { newpwd, ui.UserID };
            return DataAccess.Operations.ExecuteSQLByQuery("User_ChangePassword", CommandType.StoredProcedure, names, values);
        }


        public static DataTable GetUserIDByUserName(string username)
        {
            string[] names = new string[] { "UserName" };
            string[] values = new string[] { username };
            return DataAccess.Operations.GetDataTable("User_GetUserIDByUserName", CommandType.StoredProcedure, names, values);
        }
        public static DataTable StudentCollectionByCnameUserID(string cname, string userid)
        {
            string[] names = new string[] { "Cname", "UserID" };
            string[] values = new string[] { cname, userid };
            return DataAccess.Operations.GetDataTable("User_Detail_StudentCollectionByCnameUserID", CommandType.StoredProcedure, names, values);
        }
        public static DataTable GetMyCollectionsByUserID(Entity.UserInfo ui)
        {
            string[] names = new string[] { "UserID" };
            string[] values = new string[] { ui.UserID };
            return DataAccess.Operations.GetDataTable("User_GetMyCollectionsByUserID", CommandType.StoredProcedure, names, values);
        }
        public static DataTable GetCollectionDetailByCnameUserID(string cname, string userid)
        {
            string[] names = new string[] { "Cname", "UserID" };
            string[] values = new string[] { cname, userid };
            return DataAccess.Operations.GetDataTable("User_AllDetail_StudentCollectionByCnameUserID", CommandType.StoredProcedure, names, values);
        }
        public static int ModifyWord(Entity.StudentCollections sc)
        {
            string[] names = new string[] { "UserID", "Chinese", "WordID", "English" };
            string[] values = new string[] { sc.UserID, sc.Chinese, sc.WordID, sc.English };
            return DataAccess.Operations.ExecuteSQLByQuery("User_ModifyWord", CommandType.StoredProcedure, names, values);
        }
        public static int DeleteWord(string wordid)
        {
            string[] names = new string[] { "WordID" };
            string[] values = new string[] { wordid };
            return DataAccess.Operations.ExecuteSQLByQuery("User_DeleteWord", CommandType.StoredProcedure, names, values);
        }
        public static DataTable SelectAllCollections()
        {
            return DataAccess.Operations.GetDataTable("SelectAllCollections", CommandType.StoredProcedure);
        }

        public static int InsertNewWord(string userid, string cname, string english, string chinese, string wordid)
        {
            string[] names = new string[] { "UserID", "Cname", "English", "Chinese", "WordID" };
            string[] values = new string[] { userid, cname, english, chinese, wordid };
            return DataAccess.Operations.ExecuteSQLByQuery("User_InsertNewWord", CommandType.StoredProcedure, names, values);
        }
        public static int Register_NewPwdAnswer(Entity.PwdAnswer pa)
        {
            string[] names = new string[] { "AnswerID", "QuestionName", "Answer", "UserID" };
            string[] values = new string[] { pa.AnswerID, pa.QuestionName, pa.Answer, pa.UserID };
            return DataAccess.Operations.ExecuteSQLByQuery("Register_NewPwdAnswer", CommandType.StoredProcedure, names, values);

        }

        public static int User_CreateCollection(string userid, string cname, string japanese, string chinese, string wordid)
        {
            string[] names = new string[] { "UserID", "Cname", "Japanese", "Chinese", "WordID" };
            string[] values = new string[] { userid, cname, japanese, chinese, wordid };
            return DataAccess.Operations.ExecuteSQLByQuery("User_CreateCollection", CommandType.StoredProcedure, names, values);
        }
        public static int CheckCollection(string userid, string cname)
        {
            string[] names = new string[] { "UserID", "Cname" };
            string[] values = new string[] { userid, cname };
            return DataAccess.Operations.ExecuteSQLByScalar("CheckCollection", CommandType.StoredProcedure, names, values);
        }
        public static int User_CheckAnswer(string questionname, string answer, string userid)
        {
            string[] names = new string[] { "QuestionName", "Answer", "UserID" };
            string[] values = new string[] { questionname, answer, userid };
            return DataAccess.Operations.ExecuteSQLByScalar("User_CheckAnswer", CommandType.StoredProcedure, names, values);
        }
        public static DataTable User_FindPassword(string userid)
        {
            string[] names = new string[] { "UserID" };
            string[] values = new string[] { userid };
            return DataAccess.Operations.GetDataTable("User_FindPassword", CommandType.StoredProcedure, names, values);
        }
        public static int User_ModifyPersonalInfo(string userid, string username, string birthday, string email, int age)
        {
            string[] names = new string[] { "UserID", "UserName", "Birthday", "Email", "Age" };
            object[] values = new object[] { userid, username, birthday, email, age };
            return DataAccess.Operations.ExecuteSQLByQuery("User_ModifyPersonalInfoByUserID", CommandType.StoredProcedure, names, values);
        }
        public static int User_InsertNewFavoriteWord(string userid, string english, string chinese)
        {
            string[] names = new string[] { "UserID", "English", "Chinese" };
            object[] values = new object[] { userid, english, chinese };
            return DataAccess.Operations.ExecuteSQLByQuery("User_InsertNewFavoriteWord", CommandType.StoredProcedure, names, values);
        }
        public static int User_CheckNewFavoriteWord(string userid, string english, string chinese)
        {
            string[] names = new string[] { "UserID", "English", "Chinese" };
            object[] values = new object[] { userid, english, chinese };
            return DataAccess.Operations.ExecuteSQLByScalar("User_CheckNewFavoriteWord", CommandType.StoredProcedure, names, values);
        }
        public static DataTable User_GetMyFavoriteByUserID(string userid)
        {
            string[] names = new string[] { "UserID" };
            object[] values = new object[] { userid };
            return DataAccess.Operations.GetDataTable("User_GetMyFavoriteByUserID", CommandType.StoredProcedure, names, values);
        }
        public static int User_DeleteFavoriteWord(string userid, string english, string chinese)
        {
            string[] names = new string[] { "UserID", "English", "Chinese" };
            object[] values = new object[] { userid, english, chinese };
            return DataAccess.Operations.ExecuteSQLByQuery("User_DeleteFavoriteWord", CommandType.StoredProcedure, names, values);
        }
        public static int Register_CheckNewPwdAnswer(string userid)
        {
            string[] names = new string[] { "UserID" };
            object[] values = new object[] { userid };
            return DataAccess.Operations.ExecuteSQLByScalar("Register_CheckNewPwdAnswer", CommandType.StoredProcedure, names, values);
        }
        public static int CheckFavoriteWord(string userid)
        {
            string[] names = new string[] { "UserID" };
            object[] values = new object[] { userid };
            return DataAccess.Operations.ExecuteSQLByScalar("CheckFavoriteWord", CommandType.StoredProcedure, names, values);
        }
        public static int User_DeleteCollection(string userid, string cname)
        {
            string[] names = new string[] { "UserID", "Cname" };
            object[] values = new object[] { userid, cname };
            return DataAccess.Operations.ExecuteSQLByQuery("User_DeleteCollection", CommandType.StoredProcedure, names, values);
        }
        public static DataTable User_GetCollectionsByUserID(string userid)
        {
            string[] names = new string[] { "UserID" };
            object[] values = new object[] { userid };
            return DataAccess.Operations.GetDataTable("User_GetCollectionsByUserID", CommandType.StoredProcedure, names, values);
        }
        public static int CheckWordsinCollection(string userid, string cname)
        {
            string[] names = new string[] { "UserID", "Cname" };
            object[] values = new object[] { userid, cname };
            return DataAccess.Operations.ExecuteSQLByScalar("CheckWordsinCollection", CommandType.StoredProcedure, names, values);
        }
        public static int CheckMyCollection(string userid)
        {
            string[] names = new string[] { "UserID" };
            object[] values = new object[] { userid };
            return DataAccess.Operations.ExecuteSQLByScalar("CheckMyCollection", CommandType.StoredProcedure, names, values);
        }
        



    }
}
