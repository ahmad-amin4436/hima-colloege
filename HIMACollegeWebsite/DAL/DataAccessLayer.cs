using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace HIMACollegeWebsite.DAL
{
    public static class DataAccessLayer
    {
        private static string conStr = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;

        // --- AUTHENTICATION ---
        public static bool AdminLogin(string user, string pass)
        {
            using (SqlConnection con = new SqlConnection(conStr))
            {
                string sql = "SELECT COUNT(*) FROM AdminUsers WHERE Username=@u AND Password=@p";
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@u", user);
                cmd.Parameters.AddWithValue("@p", pass);
                con.Open();
                object result = cmd.ExecuteScalar();
                return result != null && Convert.ToInt32(result) > 0;
            }
        }

        // --- FETCH DATA ---
        public static DataTable GetDataTable(string sql, SqlParameter[] parameters = null)
        {
            using (SqlConnection con = new SqlConnection(conStr))
            {
                SqlCommand cmd = new SqlCommand(sql, con);
                if (parameters != null) cmd.Parameters.AddRange(parameters);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                return dt;
            }
        }

        // --- EXECUTE COMMANDS ---
        public static int ExecuteNonQuery(string sql, SqlParameter[] parameters = null)
        {
            using (SqlConnection con = new SqlConnection(conStr))
            {
                SqlCommand cmd = new SqlCommand(sql, con);
                if (parameters != null) cmd.Parameters.AddRange(parameters);
                con.Open();
                return cmd.ExecuteNonQuery();
            }
        }

        // --- ADMISSIONS UPDATE ---
        public static void UpdateAdmissions(string fee, string form, string pros)
        {
            string sql = @"UPDATE H_Admissions SET 
                          FeeStructurePath=ISNULL(NULLIF(@f,''), FeeStructurePath), 
                          AdmissionFormPath=ISNULL(NULLIF(@fo,''), AdmissionFormPath), 
                          ProspectusPath=ISNULL(NULLIF(@p,''), ProspectusPath), 
                          LastUpdated=GETDATE() WHERE ID=1";

            SqlParameter[] p = {
                new SqlParameter("@f", fee),
                new SqlParameter("@fo", form),
                new SqlParameter("@p", pros)
            };
            ExecuteNonQuery(sql, p);
        }
    }
}