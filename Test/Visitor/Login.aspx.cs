using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Test.Visitor
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        AppsCode.BLL b = new AppsCode.BLL();
        protected void Button1_Click(object sender, EventArgs e)
        {
            string em = Request.Form["email"];
            string ps = Request.Form["password"];

            if (em == "Admin101" && ps == "123")
            {
                Response.Redirect("~/Manager/Home_Page.aspx");
            }
            else 
            {
                if (b.Login(em, ps) > 0)
                {
                    Session["User"] = em;
                    Response.Redirect("~/Tester/Tester_Home.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid Id/Password..')</script>");
                }
            }
        }
    }
}