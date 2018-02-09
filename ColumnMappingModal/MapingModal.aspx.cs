using Excel;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ColumnMappingModal
{
    public partial class MapingModal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lnkUpload_Click(object sender, EventArgs e)
        {
            if (fuCustomerRecords.HasFile)
            {
                string ExcelData = "~/ExcelFile/" + fuCustomerRecords.FileName;
                fuCustomerRecords.PostedFile.SaveAs(Server.MapPath(ExcelData));
                string extension = Path.GetExtension(Server.MapPath(ExcelData));
                FileStream streamOpen = File.Open(Server.MapPath(ExcelData), FileMode.Open, FileAccess.Read);
                IExcelDataReader excelReader = null;
                switch (extension)
                {
                    case ".xls":
                        //Excel 97-03
                        excelReader = ExcelReaderFactory.CreateBinaryReader(streamOpen);
                        break;
                    case ".xlsx":
                        //Excel 07
                        excelReader = ExcelReaderFactory.CreateOpenXmlReader(streamOpen);
                        break;
                }
                excelReader.IsFirstRowAsColumnNames = true;
                DataSet result = excelReader.AsDataSet();
                DataTable dtResult = result.Tables[0];

                GetColumnNamesFromTheExcelSheet(dtResult);
            }
        }


        private void GetColumnNamesFromTheExcelSheet(DataTable dtCustomers)
        {
            string[] columnNames = dtCustomers.Columns.Cast<DataColumn>()
                                 .Select(x => x.ColumnName)
                                 .ToArray();

            List<string> lstColumnNames = columnNames.OfType<string>().ToList();

            BindMapingColumnsDropDown(ddl1, lstColumnNames, "Serial Number");
            BindMapingColumnsDropDown(ddl2, lstColumnNames, "Area Leader");
            BindMapingColumnsDropDown(ddl3, lstColumnNames, "Area");
            BindMapingColumnsDropDown(ddl4, lstColumnNames, "Customer Name");
            BindMapingColumnsDropDown(ddl5, lstColumnNames, "Address");
            BindMapingColumnsDropDown(ddl6, lstColumnNames, "Address 2");
            BindMapingColumnsDropDown(ddl7, lstColumnNames, "Mobile");
            BindMapingColumnsDropDown(ddl8, lstColumnNames, "Mobile 2");
            BindMapingColumnsDropDown(ddl9, lstColumnNames, "Mobile 3");
            BindMapingColumnsDropDown(ddl10, lstColumnNames, "Customer Ip");
            BindMapingColumnsDropDown(ddl11, lstColumnNames, "Antenna Ip");
            BindMapingColumnsDropDown(ddl12, lstColumnNames, "Internet Plan");
            BindMapingColumnsDropDown(ddl13, lstColumnNames, "Plan Rental");
            BindMapingColumnsDropDown(ddl14, lstColumnNames, "Previous Dues");
            BindMapingColumnsDropDown(ddl15, lstColumnNames, "Current Rental");
            BindMapingColumnsDropDown(ddl16, lstColumnNames, "Other Charges");
            BindMapingColumnsDropDown(ddl17, lstColumnNames, "Status");
            BindMapingColumnsDropDown(ddl18, lstColumnNames, "Total Dues");

            ClientScript.RegisterStartupScript(GetType(), "Load", String.Format("<script type='text/javascript'>ShowColumnMappingModal();</script>"));

            ViewState["dtCustomers"] = dtCustomers;
        }

        public void BindMapingColumnsDropDown(DropDownList dropDownList, object dataSource, string selectedValue = "-Select-")
        {
            dropDownList.Items.Clear();
            dropDownList.Items.Add(new ListItem("-Select-"));
            dropDownList.DataSource = dataSource;
            dropDownList.AppendDataBoundItems = true;
            dropDownList.DataBind();

            try
            {
                dropDownList.SelectedValue = selectedValue;
            }
            catch (Exception ex)
            {
                dropDownList.SelectedValue = "-Select-";
            }
        }

        protected void lbtnAddEdit_Click(object sender, EventArgs e)
        {
            DataTable dtCustomers = (DataTable)ViewState["dtCustomers"];
            Customers objCustomer = new Customers();

            int count = 0;

            try
            {
                if (dtCustomers != null && dtCustomers.Rows.Count > 0)
                {
                    dtCustomers.Columns.Add("-Select-");

                    foreach (DataRow row in dtCustomers.Rows)
                    {
                        row["-Select-"] = string.Empty;

                        objCustomer.SerialNo = row[ddl1.SelectedValue].ToString();
                        objCustomer.Mobile = row[ddl7.SelectedValue].ToString();
                        objCustomer.CustomerIp = row[ddl10.SelectedValue].ToString();
                        objCustomer.Address = row[ddl5.SelectedValue].ToString();
                        objCustomer.Area = row[ddl3.SelectedValue].ToString();
                        objCustomer.InternetPlan = row[ddl12.SelectedValue].ToString();
                        objCustomer.PreviousDues = row[ddl14.SelectedValue].ToString();
                        objCustomer.OtherCharges = row[ddl16.SelectedValue].ToString();
                        objCustomer.TotalDues = row[ddl18.SelectedValue].ToString();
                        objCustomer.Name = row[ddl4.SelectedValue].ToString();
                        objCustomer.AntennaIp = row[ddl11.SelectedValue].ToString();
                        objCustomer.Status = row[ddl17.SelectedValue].ToString();
                        objCustomer.Address2 = row[ddl6.SelectedValue].ToString();
                        objCustomer.AreaLeader = row[ddl2.SelectedValue].ToString();
                        objCustomer.Mobile2 = row[ddl8.SelectedValue].ToString();
                        objCustomer.Mobile3 = row[ddl9.SelectedValue].ToString();
                        objCustomer.PlanRental = row[ddl13.SelectedValue].ToString();
                        objCustomer.CurrentRental = row[ddl15.SelectedValue].ToString();

                        //objCustomerBusinessLayer.AddEditCustomerDetails(objCustomer);

                        //Do insert or update in your DB

                        count++;
                    }
                }
            }
            catch (Exception ex)
            {
            }

            if (count > 0)
            {
                divAlert.Visible = true;
                divAlert.Attributes.Add("class", "alert alert-success alert-dismissible");
                lblAlert.Text = count.ToString() + " Customer Data Imported successfully.";
            }
            else
            {
                divAlert.Visible = true;
                divAlert.Attributes.Add("class", "alert alert-danger alert-dismissible");
                lblAlert.Text = "Some Error Ocured.";
            }
        }
    }
}