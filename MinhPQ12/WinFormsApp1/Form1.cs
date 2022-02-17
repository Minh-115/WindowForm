using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WinFormsApp1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();

        }
        SqlConnection cnn = new SqlConnection(@"Data Source=MINH;Initial Catalog=StudentManagement;Integrated Security=True");
        private void ConnectDatabase()
        {
            cnn.Open();
            // em select * nhé anh
            string sql = "select * from students";  // lay het du lieu trong bang sinh vien
            SqlCommand com = new SqlCommand(sql, cnn); //bat dau truy van
            com.CommandType = CommandType.Text;
            SqlDataAdapter da = new SqlDataAdapter(com); //chuyen du lieu ve
            DataTable dt = new DataTable(); //tạo một kho ảo để lưu trữ dữ liệu
            da.Fill(dt);  // đổ dữ liệu vào grid         
            cnn.Close();  // đóng kết nối
            dataGridView1.DataSource = dt; //đổ dữ liệu vào datagridview
        }
        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                string str = @"server=.;database=StudentManagement;UID=sa;password= 123";
                string query = "select * from students";// em select * nhé anh
                SqlConnection con = new SqlConnection(str);
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                DataSet ds = new DataSet();
                MessageBox.Show("Kết nối thành công");
                con.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show("loi");
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
           
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            ConnectDatabase();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            try
            {
                DateTime dt = dateTimePicker1.Value;
                float sql = float.Parse(dsql.Value.ToString());
                float npl = float.Parse(dnpl.Value.ToString());
                float nefw = float.Parse(dnefw.Value.ToString());
                float fee = float.Parse(dfee.Value.ToString());
                float nweb = float.Parse(dnweb.Value.ToString());
                float gpa = (sql + npl + nefw + fee + nefw) / 5;
                string graduatelevel;
                if (gpa < 5)
                    graduatelevel = "Failed";
                else if (gpa >= 6 && gpa <= 7)
                    graduatelevel = "Average"; 
                   
                else if (gpa >= 7 && gpa <= 8)

                    graduatelevel = "Good";
                else
                    graduatelevel = "Excellent";

                string str = @"server=.;database=StudentManagement;UID=sa;password= 123";
                string query = "INSERT INTO Students VALUES ('" + textBox1.Text + "','" + textBox2.Text + "','" + dt +  "','" + sql + "'," +
                    "'" + npl + "','" + nefw + "','" + fee + "'," +
                    "'" + nweb + "','" + gpa + "','" + graduatelevel + "')";
                SqlConnection con = new SqlConnection(str);
                con.Open();
                SqlCommand cmd = new SqlCommand(query, con);
                int kq = (int)cmd.ExecuteNonQuery();
                if (kq > 0)
                {
                    MessageBox.Show(@"Thêm thành công");
                }
                else
                {
                    MessageBox.Show(@"Thêm thất bại");
                }
                ConnectDatabase();
                con.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            
            }
        string id;
       
        private void xoa_Click(object sender, EventArgs e)
        {
            try

            {
                string str = @"server=.;database=StudentManagement;UID=sa;password=123";
                string ten = textBox1.Text;
                MessageBox.Show(id);

                string query = "DELETE FROM Students  WHERE idd = '" + id + "' ";

                SqlConnection con = new SqlConnection(str);
                SqlCommand cmd = new SqlCommand(query, con);

                con.Open();

                int kq = (int)cmd.ExecuteNonQuery();
                if (kq > 0)
                {
                    MessageBox.Show(@"xóa thành công");

                }
                else
                {
                    MessageBox.Show(@"xóa thất bại");
                }
                ConnectDatabase();
                con.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show("lỗi");
            }
        }
       
        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {               
                if (e.RowIndex >= 0)
                {
                    DataGridViewRow row = this.dataGridView1.Rows[e.RowIndex];
                    id = row.Cells[0].Value.ToString();
                    textBox1.Text = row.Cells[0].Value.ToString();
                    textBox2.Text = row.Cells[1].Value.ToString();
                dateTimePicker1.Text = row.Cells[2].Value.ToString();
 

            }
        }
    }
}
