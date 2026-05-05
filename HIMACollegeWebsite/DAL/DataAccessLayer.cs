using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace HIMACollegeWebsite.DAL
{
    public static class DataAccessLayer
    {
        private static string conStr = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;

        #region Generic Methods

        /// <summary>
        /// Generic fetcher for DataTables. Used for binding GridViews and Repeaters.
        /// </summary>
        public static DataTable GetDataTable(string sql, SqlParameter[] parameters = null)
        {
            using (SqlConnection con = new SqlConnection(conStr))
            {
                using (SqlCommand cmd = new SqlCommand(sql, con))
                {
                    if (parameters != null)
                    {
                        cmd.Parameters.Clear();
                        cmd.Parameters.AddRange(parameters);
                    }

                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        try
                        {
                            sda.Fill(dt);
                            return dt;
                        }
                        catch (Exception)
                        {
                            return null;
                        }
                    }
                }
            }
        }

        /// <summary>
        /// Generic executor for Insert, Update, and Delete operations.
        /// </summary>
        public static int ExecuteNonQuery(string sql, SqlParameter[] parameters = null)
        {
            using (SqlConnection con = new SqlConnection(conStr))
            {
                using (SqlCommand cmd = new SqlCommand(sql, con))
                {
                    if (parameters != null)
                    {
                        cmd.Parameters.Clear();
                        cmd.Parameters.AddRange(parameters);
                    }
                    con.Open();
                    return cmd.ExecuteNonQuery();
                }
            }
        }

        /// <summary>
        /// Validates admin credentials from AdminUsers table.
        /// </summary>
        public static bool AdminLogin(string user, string pass)
        {
            string sql = "SELECT COUNT(*) FROM AdminUsers WHERE Username=@u AND Password=@p";
            SqlParameter[] p = {
                new SqlParameter("@u", user),
                new SqlParameter("@p", pass)
            };

            using (SqlConnection con = new SqlConnection(conStr))
            {
                using (SqlCommand cmd = new SqlCommand(sql, con))
                {
                    cmd.Parameters.AddRange(p);
                    con.Open();
                    object result = cmd.ExecuteScalar();
                    return result != null && Convert.ToInt32(result) > 0;
                }
            }
        }

        #endregion

        #region Specific Business Logic

        /// <summary>
        /// Updates H_Programs table including the 4 images and PDF path.
        /// Matches updated schema.
        /// </summary>
        /// 

        public static void UpdateProgram(int id, string title, string category, string duration, string startDate, string desc,
                                         string img1, string img2, string img3, string img4, string pdf)
        {
            string sql = @"UPDATE H_Programs SET 
                           Title=@t, Category=@c, Duration=@dur, StartDate=@s, Description=@d,
                           ImagePath=ISNULL(NULLIF(@i,''), ImagePath),
                           ImagePath2=ISNULL(NULLIF(@i2,''), ImagePath2),
                           ImagePath3=ISNULL(NULLIF(@i3,''), ImagePath3),
                           ImagePath4=ISNULL(NULLIF(@i4,''), ImagePath4),
                           PdfPath=ISNULL(NULLIF(@pdf,''),PdfPath)
                           WHERE ProgramID=@id";

            SqlParameter[] p = {
                new SqlParameter("@t", title),
                new SqlParameter("@c", category),
                new SqlParameter("@dur", duration),
                new SqlParameter("@s", startDate),
                new SqlParameter("@d", desc),
                new SqlParameter("@i", (object)img1 ?? DBNull.Value),
                new SqlParameter("@i2", (object)img2 ?? DBNull.Value),
                new SqlParameter("@i3", (object)img3 ?? DBNull.Value),
                new SqlParameter("@i4", (object)img4 ?? DBNull.Value),
                new SqlParameter("@pdf", (object)pdf ?? DBNull.Value),
                new SqlParameter("@id", id)
            };
            ExecuteNonQuery(sql, p);
        }

        /// <summary>
        /// Updates existing faculty details.
        /// </summary>
        public static void UpdateFaculty(int id, string name, string dept, string desig, string edu, string img)
        {
            string sql = @"UPDATE H_Faculty SET 
                           FullName=@n, Department=@d, Designation=@de, Education=@e, 
                           ImagePath=ISNULL(NULLIF(@i,''), ImagePath) 
                           WHERE FacultyID=@id";

            SqlParameter[] p = {
                new SqlParameter("@n", name),
                new SqlParameter("@d", dept),
                new SqlParameter("@de", desig),
                new SqlParameter("@e", edu),
                new SqlParameter("@i", (object)img ?? DBNull.Value),
                new SqlParameter("@id", id)
            };
            ExecuteNonQuery(sql, p);
        }
        /// <summary>
        /// Updates the paths for admission files (Fee, Form, Prospectus) in a single row table.
        /// </summary>
        public static void UpdateAdmissions(string fee, string form, string prospectus)
        {
            // This SQL checks if a record exists; if so updates it, if not inserts it.
            string sql = @"IF EXISTS (SELECT 1 FROM H_Admissions)
                   UPDATE H_Admissions SET 
                   FeeStructurePath = ISNULL(NULLIF(@fee,''), FeeStructurePath),
                   AdmissionFormPath = ISNULL(NULLIF(@form,''), AdmissionFormPath),
                   ProspectusPath = ISNULL(NULLIF(@pros,''), ProspectusPath)
                   ELSE
                   INSERT INTO H_Admissions (FeeStructurePath, AdmissionFormPath, ProspectusPath) 
                   VALUES (@fee, @form, @pros)";

            SqlParameter[] p = {
        new SqlParameter("@fee", (object)fee ?? DBNull.Value),
        new SqlParameter("@form", (object)form ?? DBNull.Value),
        new SqlParameter("@pros", (object)prospectus ?? DBNull.Value)
    };

            ExecuteNonQuery(sql, p);
        }

        #endregion
    }
}