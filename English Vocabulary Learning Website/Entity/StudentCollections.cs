using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity
{
    public class StudentCollections
    {
        private string _userid;

        public string UserID
        {
            get { return _userid; }
            set { _userid = value; }
        }
        private string _cname;

        public string Cname
        {
            get { return _cname; }
            set { _cname = value; }
        }
        private string _english;

        public string English
        {
            get { return _english; }
            set { _english = value; }
        }
        private string _chinese;

        public string Chinese
        {
            get { return _chinese; }
            set { _chinese = value; }
        }
        private string _wordid;

        public string WordID
        {
            get { return _wordid; }
            set { _wordid = value; }
        }
        private string _classid;

        public string ClassID
        {
            get { return _classid; }
            set { _classid = value; }
        }
        private string _authorizedid;

        public string AuthorizedID
        {
            get { return _authorizedid; }
            set { _authorizedid = value; }
        }
    }
}
