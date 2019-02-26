using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity
{
    public class PwdAnswer
    {
        private string _answerid;

        public string AnswerID
        {
            get { return _answerid; }
            set { _answerid = value; }
        }
        private string _questionname;

        public string QuestionName
        {
            get { return _questionname; }
            set { _questionname = value; }
        }
        private string _answer;

        public string Answer
        {
            get { return _answer; }
            set { _answer = value; }
        }
        private string _userid;

        public string UserID
        {
            get { return _userid; }
            set { _userid = value; }
        }
        private string _adminid;

        public string AdminID
        {
            get { return _adminid; }
            set { _adminid = value; }
        }
    }
}
