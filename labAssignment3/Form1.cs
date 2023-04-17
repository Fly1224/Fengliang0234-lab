using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace labAssignment3
{
    public partial class frmCustomerDataEntry : Form
    {
        public frmCustomerDataEntry()
        {
            InitializeComponent();
        }

        private void radioButton2_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void btnPreview_Click(object sender, EventArgs e)
        {
            string Gender, Hobby, Status = "";
            if (radioMale.Checked) Gender = "Male";
            else Gender = "Female";
            if (chkPainting.Checked) Hobby = "Reading";
            else Hobby = "Painting";
            if (radioMarried.Checked) Status = "Married";
            else Status = "Unmarried";

            try
            {
                CustomerValidation objval = new CustomerValidation();
                objval.CheckCustomerName(txtName.Text);

                frmCustomerPreview objpreview = new frmCustomerPreview();
                objpreview.SetValues(txtName.Text, cmbCountry.Text, Gender, Hobby, Status);
                objpreview.ShowDialog();
            }
            catch(Exception ex) 
            {
                MessageBox.Show(ex.Message.ToString());
            }

            frmCustomerPreview objPreview = new frmCustomerPreview();
            objPreview.SetValues(txtName.Text, cmbCountry.Text, Gender, Hobby, Status);
            objPreview.ShowDialog();
        }
    }
}
