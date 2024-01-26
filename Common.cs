using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace Online_Banking_Services
{
    public class Common
    {
        public static string getconnection()
        {
            return ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        }
    }
}