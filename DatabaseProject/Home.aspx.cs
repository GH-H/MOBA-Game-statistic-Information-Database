using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace DatabaseProject
{
    public partial class Champion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MOBAGAME"].ConnectionString);
                conn.Open();
                string checkuser = "select count(*) from UserAccount where UserName='" + TextBox1.Text + "'and password = '"+TextBox2.Text+"'";
                SqlCommand cmd = new SqlCommand(checkuser, conn);
                int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                if (temp == 0)
                {
                    Response.Write("username or password error");
                } else if(temp == 1){

                    Response.Redirect("UserProfile.aspx?Parameter=" + TextBox1.Text);
                }
                conn.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("NewAccount.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Champion.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("LeaderBoard.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Rank.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("AllGameRecord.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("purchaseHistory.aspx");
        }
    }
}