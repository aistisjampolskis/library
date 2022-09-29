using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication1
{

    public partial class adminauthormanagment : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkIfAuthorExist())
            {
                Response.Write("<script>alert('Author with this ID Already exist. You can;t add');</script>");

            }
            else
            {
                addNewAuthor();
            }

        }
        //add button
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (checkIfAuthorExist())
            {
                updateAuthor();

            }
            else
            {
                Response.Write("<script>alert('Author does not exist');</script>");
            }
        }
        //update button
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (checkIfAuthorExist())
            {
                deleteAuthor();

            }
            else
            {
                Response.Write("<script>alert('Author does not exist');</script>");
            }
        }
        //delete button
        protected void Button1_Click(object sender, EventArgs e)
        {
            getAuthorByID();
        }
        //go button

        void getAuthorByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from author_master_tbl where author_id='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0][1].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Invalid Author ID');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }

        void deleteAuthor()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }


                //   Response.Write("<script>alert('Testing');</script>");


                SqlCommand cmd = new SqlCommand("DELETE from author_master_tbl WHERE author_id='" + TextBox1.Text.Trim() + "'", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Author Deleted');</script>");
                clearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");


            }
        }

        void updateAuthor()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }


                //   Response.Write("<script>alert('Testing');</script>");


                SqlCommand cmd = new SqlCommand("UPDATE author_master_tbl SET author_name=@author_name WHERE author_id='" + TextBox1.Text.Trim() + "'", con);

                cmd.Parameters.AddWithValue("@author_name", TextBox2.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Author updated');</script>");
                clearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");


            }
        }

        void addNewAuthor()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                //   Response.Write("<script>alert('Testing');</script>");
                    SqlCommand cmd = new SqlCommand("INSERT INTO author_master_tbl(author_id,author_name) " +
                        "values(@author_id,@author_name)", con);
                    cmd.Parameters.AddWithValue("@author_id", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@author_name", TextBox2.Text.Trim());

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Author added');</script>");
                    clearForm();
                    GridView1.DataBind();
                
            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }




        bool checkIfAuthorExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from author_master_tbl where author_id='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }


        }
        void clearForm()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";

        }
    }

}