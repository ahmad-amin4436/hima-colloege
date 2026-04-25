using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace HIMACollegeWebsite.DAL
{
    public class DataAccessLayer
    {
        private static string connStr =
            ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;

        // ================= LOGIN =================
        public static bool AdminLogin(string username, string password)
        {
            using (SqlConnection con = new SqlConnection(connStr))
            {
                SqlCommand cmd = new SqlCommand(
                    "SELECT COUNT(*) FROM AdminUsers WHERE Username=@u AND Password=@p", con);

                cmd.Parameters.AddWithValue("@u", username);
                cmd.Parameters.AddWithValue("@p", password);

                con.Open();
                return (int)cmd.ExecuteScalar() > 0;
            }
        }

        // ================= HOME (TOP ANNOUNCEMENTS) =================
        public static DataTable GetTopAnnouncements()
        {
            using (SqlConnection con = new SqlConnection(connStr))
            {
                SqlDataAdapter da = new SqlDataAdapter(
                    "SELECT TOP 5 * FROM Announcements ORDER BY Id DESC", con);

                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;
            }
        }

        // ================= ALL ANNOUNCEMENTS =================
        public static DataTable GetAnnouncements()
        {
            using (SqlConnection con = new SqlConnection(connStr))
            {
                SqlDataAdapter da = new SqlDataAdapter(
                    "SELECT * FROM Announcements ORDER BY Id DESC", con);

                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;
            }
        }

        public static void AddAnnouncement(string title, string details)
        {
            using (SqlConnection con = new SqlConnection(connStr))
            {
                SqlCommand cmd = new SqlCommand(
                    "INSERT INTO Announcements (Title, Details) VALUES (@t,@d)", con);

                cmd.Parameters.AddWithValue("@t", title);
                cmd.Parameters.AddWithValue("@d", details);

                con.Open();
                cmd.ExecuteNonQuery();
            }
        }

        public static void DeleteAnnouncement(int id)
        {
            using (SqlConnection con = new SqlConnection(connStr))
            {
                SqlCommand cmd = new SqlCommand(
                    "DELETE FROM Announcements WHERE Id=@id", con);

                cmd.Parameters.AddWithValue("@id", id);

                con.Open();
                cmd.ExecuteNonQuery();
            }
        }

        // ================= PROGRAMS =================
        public static DataTable GetPrograms()
        {
            using (SqlConnection con = new SqlConnection(connStr))
            {
                SqlDataAdapter da = new SqlDataAdapter(
                    "SELECT * FROM Programs ORDER BY Id DESC", con);

                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;
            }
        }

        public static void SaveProgram(string title, string desc, string category, int? id)
        {
            using (SqlConnection con = new SqlConnection(connStr))
            {
                SqlCommand cmd;

                if (id == null)
                {
                    cmd = new SqlCommand(
                        "INSERT INTO Programs (Title, Description, Category) VALUES (@t,@d,@c)", con);
                }
                else
                {
                    cmd = new SqlCommand(
                        "UPDATE Programs SET Title=@t, Description=@d, Category=@c WHERE Id=@id", con);
                    cmd.Parameters.AddWithValue("@id", id);
                }

                cmd.Parameters.AddWithValue("@t", title);
                cmd.Parameters.AddWithValue("@d", desc);
                cmd.Parameters.AddWithValue("@c", category);

                con.Open();
                cmd.ExecuteNonQuery();
            }
        }

        public static void DeleteProgram(int id)
        {
            using (SqlConnection con = new SqlConnection(connStr))
            {
                SqlCommand cmd = new SqlCommand(
                    "DELETE FROM Programs WHERE Id=@id", con);

                cmd.Parameters.AddWithValue("@id", id);

                con.Open();
                cmd.ExecuteNonQuery();
            }
        }

        // ================= CONTACT =================
        public static void SaveContactMessage(string name, string email, string subject, string message)
        {
            using (SqlConnection con = new SqlConnection(connStr))
            {
                SqlCommand cmd = new SqlCommand(@"
                    INSERT INTO ContactMessage 
                    (Name, Email, Subject, Message)
                    VALUES (@Name,@Email,@Subject,@Message)", con);

                cmd.Parameters.AddWithValue("@Name", name);
                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@Subject", subject);
                cmd.Parameters.AddWithValue("@Message", message);

                con.Open();
                cmd.ExecuteNonQuery();
            }
        }
    }
}