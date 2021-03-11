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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
        {

        }

        protected void UserName_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Password_TextChanged(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void UserNameTextBox_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {
                
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MOBAGAME"].ConnectionString);
                conn.Open();
                string insertQuery = "insert into UserAccount(UserName,[Password],Gender,Age,EmailAddress)values (@Accountname,@password,@gender,@age,@email)";
                SqlCommand cmd = new SqlCommand(insertQuery, conn);
                cmd.Parameters.AddWithValue("@Accountname", UserNameTextBox.Text);
                cmd.Parameters.AddWithValue("@password", PasswordTextBox.Text);
                cmd.Parameters.AddWithValue("@email", EmailTextBox.Text);
                cmd.Parameters.AddWithValue("@age", AgeTextBox.Text);
                cmd.Parameters.AddWithValue("@gender", GenderTextBox.Text);
                cmd.ExecuteNonQuery();

                Response.Write("Account registeration Success!");

                conn.Close();

            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}