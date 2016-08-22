using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Obout;
using Obout.Grid;
using Obout.Grid.Design;
//using Microsoft.Owin;
//using Microsoft.Owin.Security.OAuth;
//using Microsoft.Owin.Security.Cookies;
//using Microsoft.AspNet.Identity;
//using Microsoft.AspNet.Identity.EntityFramework;


namespace OTPW
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string oxygen = Server.MapPath("oxygen.xml");
            string nitrogen = Server.MapPath("nitrogen.xml");
            string carbon = Server.MapPath("carbon.xml");

            DataSet otpwOxygen = new DataSet();
            otpwOxygen.ReadXml(oxygen);
            gridOxygen.DataSource = otpwOxygen;
            gridOxygen.DataMember = "otpw";
            gridOxygen.DataBind();

            DataSet otpwNitrogen = new DataSet();
            otpwNitrogen.ReadXml(nitrogen);
            gridNitrogen.DataSource = otpwNitrogen;
            gridNitrogen.DataMember = "otpw";
            gridNitrogen.DataBind();

            DataSet otpwCarbon = new DataSet();
            otpwCarbon.ReadXml(carbon);
            gridCarbon.DataSource = otpwCarbon;
            gridCarbon.DataMember = "otpw";
            gridCarbon.DataBind();

        }

        protected void OxygenOnRowDataBound(object sender, GridRowEventArgs e)
        {
            for (int i = 0; i < e.Row.Cells.Count; i++)
            {
                e.Row.Cells[i].Attributes.Add("onclick", "OxygenOnClick(" + e.Row.RowIndex + "," + i + ")");
            }
        }
        protected void NitrogenOnRowDataBound(object sender, GridRowEventArgs e)
        {
            for (int i = 0; i < e.Row.Cells.Count; i++)
            {
                e.Row.Cells[i].Attributes.Add("onclick", "NitrogenOnClick(" + e.Row.RowIndex + "," + i + ")");
            }
        }
        protected void CarbonOnRowDataBound(object sender, GridRowEventArgs e)
        {
            for (int i = 0; i < e.Row.Cells.Count; i++)
            {
                e.Row.Cells[i].Attributes.Add("onclick", "CarbonOnClick(" + e.Row.RowIndex + "," + i + ")");
            }
        }
    }
}