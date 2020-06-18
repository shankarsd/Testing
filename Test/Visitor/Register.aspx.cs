using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Test.Visitor
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        AppsCode.BLL b = new AppsCode.BLL();
        protected void Button1_Click(object sender, EventArgs e)
        {
            string nm = Request.Form["Name"];
            string ad = Request.Form["Adress"];
            string ct = Request.Form["City"];
            string mb = Request.Form["Mobile"];
            string em = Request.Form["Email"];
            string ps = Request.Form["Password"];
            string epID = Request.Form["empId"];

            if (b.Check_EmpID(epID) > 0)
            {
                if (b.RegEpID(epID) == 0)
                {
                    if (b.Register(nm, ad, ct, mb, em, ps, epID) > 0)
                    {
                        Response.Write("<script>alert('Registred Sucessfully.')</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('Error in Registred.')</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('ID already exist.')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Your ID not exist.')</script>");
            }
        }
    }
}