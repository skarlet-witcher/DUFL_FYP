using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity
{
    public class UserInfo
    {
        private string _userid;

        public string UserID
        {
            get { return _userid; }
            set { _userid = value; }
        }
        private string _username;

        public string UserName
        {
            get { return _username; }
            set { _username = value; }
        }
        private string _userpassword;

        public string UserPassWord
        {
            get { return _userpassword; }
            set { _userpassword = value; }
        }

       
        private string _birthday;

        public string Birthday
        {
            get { return _birthday; }
            set { _birthday = value; }
        }
        private string _email;

        public string Email
        {
            get { return _email; }
            set { _email = value; }
        }
       
       
        private string _gender;

        public string Gender
        {
            get { return _gender; }
            set { _gender = value; }
        }
        private string _age;

        public string Age
        {
            get { return _age; }
            set { _age = value; }
        }
        
        
    }
}
