using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity
{
    public class SuperAdminInfo
    {
        private string _superadminid;

        public string SuperAdminID
        {
            get { return _superadminid; }
            set { _superadminid = value; }
        }
      

        private string _superadminpassword;

        public string SuperAdminPassWord
        {
            get { return _superadminpassword; }
            set { _superadminpassword = value; }
        }
    }
}
