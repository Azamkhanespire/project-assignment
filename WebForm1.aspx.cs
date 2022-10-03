using System;
using System.Data;
using System.IO;
using System.Web.UI.WebControls;





namespace STUDENTFORM
{






    public partial class WebForm1 : System.Web.UI.Page
    {
        private DataTable GenerateTable()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("Student Name");
            dt.Columns.Add("Student Ro.No");
            dt.Columns.Add("Class");
            dt.Columns.Add("Section");
            dt.Columns.Add("Class Teacher");
            dt.Columns.Add("DOB");
            dt.Columns.Add("Mobile NO");
            dt.Columns.Add("Email ID");
            dt.Columns.Add("Adhaar NO");
            dt.Columns.Add("Address");
            return dt;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
        }






        private void WriteTOFile()
        {
            FileInfo fl = new FileInfo(@"D:\my fies\Dotnet\z.txt");
            FileStream fs = fl.Open(mode: FileMode.OpenOrCreate, access: FileAccess.ReadWrite, share: FileShare.ReadWrite);





            object[] obj = new object[10];
            obj[0] = Convert.ToString(TextBox1.Text);
            obj[1] = Convert.ToString(TextBox2.Text);
            obj[2] = Convert.ToString(TextBox3.Text);
            obj[3] = Convert.ToString(TextBox4.Text);
            obj[4] = Convert.ToString(TextBox5.Text);
            obj[5] = Convert.ToString(TextBox6.Text);
            obj[6] = Convert.ToString(TextBox7.Text);
            obj[7] = Convert.ToString(TextBox8.Text);
            obj[8] = Convert.ToString(TextBox9.Text);
            obj[9] = Convert.ToString(TextBox10.Text);






            StreamWriter s = new StreamWriter(fs);
            s.WriteLine(obj);
            s.Close();





        }
        private void SaveandShowtoGrid()
        {
            DataTable gdt;
            if (ViewState["dt"] == null)
            {
                gdt = GenerateTable();
            }
            else
                gdt = ((DataTable)ViewState["dt"]);
            object[] row = new object[10];
            row[0] = Convert.ToString(TextBox1.Text);
            row[1] = Convert.ToString(TextBox2.Text);
            row[2] = Convert.ToString(TextBox3.Text);
            row[3] = Convert.ToString(TextBox4.Text);
            row[4] = Convert.ToString(TextBox5.Text);
            row[5] = Convert.ToString(TextBox6.Text);
            row[6] = Convert.ToString(TextBox7.Text);
            row[7] = Convert.ToString(TextBox8.Text);
            row[8] = Convert.ToString(TextBox9.Text);
            row[9] = Convert.ToString(TextBox10.Text);



            gdt.Rows.Add(row);





            ViewState["dt"] = gdt;
            dgrd.DataSource = gdt;
            dgrd.DataBind();
        }





        private void ReadDataFromFile(string fileName)
        {
            FileInfo fl = new FileInfo(@"D:\my fies\Dotnet\z.txt");
            FileStream fs = fl.Open(mode: FileMode.OpenOrCreate, access: FileAccess.Read, share: FileShare.Read);
            StreamReader sr = new StreamReader(fs);





            while (!sr.EndOfStream)
            {
                string s = sr.ReadLine();
                Response.Write(s);
            }
            sr.Close();
        }





        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                WriteTOFile();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
                Response.Write("<br />");
            }
        }





        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                SaveandShowtoGrid();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
                Response.Write("<br />");
            }
        }



        protected void Button3_Click(object sender, EventArgs e)
        {
            Button3.Text = Button3.Text = "";
            TextBox1.Focus();
        }
    }
}






