using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SalesAndTechnicalServiceWeb.Entity;


namespace SalesAndTechnicalServiceWeb.WebForms
{
    public partial class ProductTracking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //var values = entities.TblDefectiveProducts.Select(x => new
            //{
            //    x.TblProcess.ProcessTitle,
            //    x.FaultProblem,
            //    x.FaultEstimatedPrice,
            //    x.FaultNetPrice
            //}).ToList();
            //Repeater1.DataSource = values;
            //Repeater1.DataBind();
        }

        Db_TechnicalServiceEntities1 entities = new Db_TechnicalServiceEntities1();

        protected void Button1_Click(object sender, EventArgs e)
        {
            var values = entities.TblDefectiveProducts.Where(x =>x.FaultSerieNo == TextBox1.Text).Select(x => new
            {
                x.TblProcess.ProcessTitle,
                x.FaultProblem,
                x.FaultEstimatedPrice,
                x.FaultNetPrice
            }).ToList();
            Repeater1.DataSource = values;
            Repeater1.DataBind();
        }
    }
}