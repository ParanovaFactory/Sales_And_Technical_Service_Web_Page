using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SalesAndTechnicalServiceWeb.Entity;

namespace SalesAndTechnicalServiceWeb.WebForms
{
    public partial class Default : System.Web.UI.Page
    {
        Db_TechnicalServiceEntities1 entities = new Db_TechnicalServiceEntities1();

        protected void Page_Load(object sender, EventArgs e)
        {
            var value = entities.TblAbouts.ToList();
            Repeater2.DataSource = value;
            Repeater2.DataBind();

            var values = entities.TblProducts.Select(x => new
            {
                x.ProductName,
                x.ProductBrand,
                x.ProductSellingPrice,
                x.ProductStock,
                x.TblCathegory.CathegoryName,
                x.ProductDescription
            }).ToList();
            Repeater1.DataSource = values;
            Repeater1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                TBl_Contact contact = new TBl_Contact();
                contact.ContactNameSurname = TextBox1.Text;
                contact.ContactEMail = TextBox2.Text;
                contact.ContactContext = TextBox3.Text;
                entities.TBl_Contact.Add(contact);
                entities.SaveChanges();
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}