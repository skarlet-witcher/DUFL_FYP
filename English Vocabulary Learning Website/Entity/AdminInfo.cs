using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity
{
    public class AdminInfo
    {
        private string _adminid;

        public string AdminID
        {
            get { return _adminid; }
            set { _adminid = value; }
        }
        private string _adminname;

        public string AdminName
        {
            get { return _adminname; }
            set { _adminname = value; }
        }
        private string _adminpassword;

        public string AdminPassword
        {
            get { return _adminpassword; }
            set { _adminpassword = value; }
        }

    }
}
