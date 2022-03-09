﻿using Microsoft.EntityFrameworkCore;
using QuanLyGiaiDauBongDa.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyGiaiDauBongDa
{
    public partial class FrmDanhSachClub : Form
    {
        public FrmDanhSachClub()
        {
            InitializeComponent();
        }
        QuanLyGiaiDauBongDaContext context = new QuanLyGiaiDauBongDaContext();
        public void LoadList()
        {
            //Select data clubs include country,  tables
            //var clubs = (context.Clubs
            //    .Include(x => x.Stadium).Include(y => y.Country)).ToList();

            var clubs = (from s in context.Clubs.ToList()
                         join m in context.Countries on s.CountryId equals m.CountryId
                         join h in context.Stadiuns on s.StadiumId equals h.StadiumId
                         select new
                         {
                             s.ClubId,
                             s.Name,
                             s.YearCreated,
                             s.Address,
                             s.City,
                             CountryName = m.Name,
                             StadiumName = h.Name,
                             s.LogoUrl

                         }).ToList();
            

            label7.DataBindings.Clear();
            label8.DataBindings.Clear();
            label9.DataBindings.Clear();
            label10.DataBindings.Clear();
            label11.DataBindings.Clear();
            label7.DataBindings.Add("Text", clubs, "YearCreated");
            label8.DataBindings.Add("Text", clubs, "Address");
            label9.DataBindings.Add("Text", clubs, "City");
            label10.DataBindings.Add("Text", clubs, "CountryName");
            label11.DataBindings.Add("Text", clubs, "StadiumName");
            labelNameClub.DataBindings.Add("Text", clubs, "Name");
            picLogo.BackgroundImage = Image.FromFile(@"..\..\..\Resources\mu.png");
            label8.AutoSize = true;
            label11.AutoSize = true;
            dgvClub.DataSource = clubs;
        }

        private void FrmDanhSachDoiBong_Load(object sender, EventArgs e)
        {
            try
            {
                LoadList();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Thông Báo");
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            var cub_id = (int)dgvClub.CurrentRow.Cells["ClubId"].Value;
            FrmEditClub frmEditClub = new FrmEditClub(cub_id);
            frmEditClub.Show();
        }

        private void dgvClub_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (dgvClub.CurrentRow.Cells["LogoUrl"].Value != null)
            {
                picLogo.BackgroundImage = Image.FromFile(@"..\..\..\Resources\" + dgvClub.CurrentRow.Cells["LogoUrl"].Value.ToString());
            }
        }
    }
}
