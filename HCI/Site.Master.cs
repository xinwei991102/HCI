using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HCI
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.Session["IsLogIn"] != null && (bool)(HttpContext.Current.Session["IsLogIn"]))
            {
                LogInLink.Attributes["style"] = "display:none;";
                LogOutLink.Attributes.Remove("style");
            } else
            {
                LogOutLink.Attributes["style"] = "display:none;";
                LogInLink.Attributes.Remove("style");
            }
        }

        protected void LogInBtn_Click(object sender, EventArgs e)
        {
            if (txtUserName.Text == "1234" && txtPassword.Text == "abcd")
            {
                HttpContext.Current.Session["IsLogIn"] = true;
                LogInLink.Attributes["style"] = "display:none;";
                LogOutLink.Attributes.Remove("style");
            }
            txtUserName.Text = "";
        }

        protected void linkBtnLogOut_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Session["IsLogIn"] = false;
            LogOutLink.Attributes["style"] = "display:none;";
            LogInLink.Attributes.Remove("style");
        }
    }
}