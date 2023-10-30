using qlKinhDoanhDoDienGiaDung;
using qlKinhDoanhDoDienGiaDung.Class;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace qlKinhDoanhDoDienGiaDung
{
    public partial class frmMain : Form
    {
        frmDangNhap dangNhap = new frmDangNhap();
        public frmMain(frmDangNhap dangNhap)
        {
            InitializeComponent();
            this.dangNhap = dangNhap;
        }

        private void frmMain_FormClosing(object sender, FormClosingEventArgs e)
        {
            dangNhap.Show();
        }

        private void mnuThoat_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Xác nhận thoát?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                Class.Functions.Disconnect();   //Đóng kết nối
                Application.Exit();
            }
        }

        private void mnuKhachHang_Click(object sender, EventArgs e)
        {
            frmKhachHang kh = new frmKhachHang();
            kh.Show();
        }

        private void mnuNhanVien_Click(object sender, EventArgs e)
        {
            frmNhanVien nv = new frmNhanVien();
            nv.Show();
        }

        private void mnuSanPham_Click(object sender, EventArgs e)
        {
            frmSanPham sp = new frmSanPham();
            sp.Show();
        }

        private void mnuHoaDonBan_Click(object sender, EventArgs e)
        {
            frmHoaDon hd = new frmHoaDon();
            hd.Show();
        }

        private void mnuTimKiemHoaDon_Click(object sender, EventArgs e)
        {
            frmTimKiem tk = new frmTimKiem();
            tk.Show();
        }

        private void mnuDangXuat_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void frmSanPham_Load(object sender, EventArgs e)
        {
            string sql;
            sql = "SELECT * from NhaCungCap";
            txtMaSanPham.Enabled = false;
            LoadDataGridView();
            Functions.FillComboBox(sql, cboMaNhaCungCap, "MaNCC");
            cboMaNhaCungCap.SelectedIndex = -1;
        }
        DataTable dtSP;
        public void LoadDataGridView()
        {
            string sql;
            sql = "SELECT * FROM SanPham";
            dtSP = Functions.GetDataToTable(sql); //lấy dữ liệu
            dgvSanPham.DataSource = dtSP;
            dgvSanPham.Columns[0].HeaderText = "Mã sản phẩm";
            dgvSanPham.Columns[1].HeaderText = "Tên Sản Phẩm";
            dgvSanPham.Columns[2].HeaderText = "Nhãn Hiệu";
            dgvSanPham.Columns[3].HeaderText = "Đơn Gía Bán";
            dgvSanPham.Columns[4].HeaderText = "Mã Nhà Cung Cấp";
            dgvSanPham.Columns[5].HeaderText = "Số Lượng";

            dgvSanPham.AllowUserToAddRows = false;
            dgvSanPham.EditMode = DataGridViewEditMode.EditProgrammatically;
        }


        private void dgvSanPham_Click(object sender, EventArgs e)
        {
            if (dtSP.Rows.Count == 0)
            {
                MessageBox.Show("Không có dữ liệu!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            txtMaSanPham.Text = dgvSanPham.CurrentRow.Cells["MaSP"].Value.ToString();
            cboMaNhaCungCap.Text = dgvSanPham.CurrentRow.Cells["MaNCC"].Value.ToString();
            txtTenSanPham.Text = dgvSanPham.CurrentRow.Cells["TenSP"].Value.ToString();
            txtSoLuong.Text = dgvSanPham.CurrentRow.Cells["SoLuong"].Value.ToString();
            txtDonGiaBan.Text = dgvSanPham.CurrentRow.Cells["DonGiaBan"].Value.ToString();
        }


    }
}
