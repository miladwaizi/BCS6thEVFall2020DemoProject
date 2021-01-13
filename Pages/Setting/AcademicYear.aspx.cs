using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BCS6thEVFall2020DemoProject.Pages.Setting
{
    public partial class AcademicYear : System.Web.UI.Page
    {
        DBCommunicator db = new DBCommunicator();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {

                FillGrid();
            }

        }
        private void FillGrid()
        {
            GridView1.DataSource = db.ExecuteProcedure_Select("spPageAcademicYearLoad");
            GridView1.DataBind();
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            string[] p = { "@Title", "@Abbreviation", "@FarsiTitle", "@User", "@Date", "@Error" };
            string[] v = { txtTitle.Text,txtAbbreviation.Text,txtFarsiTitle.Text,"1",DateTime.Now.ToString()};

            string Error = db.ExecuteProcedure_DML(p, v, "spPageAcademicYearSave");

            if(Error=="0")
                ScriptManager.RegisterStartupScript(this,this.GetType(),"33","alert('Record Save...!!!');",true);
            else
                ScriptManager.RegisterStartupScript(this, this.GetType(), "33", "alert('"+Error+"');", true);

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            FillGrid();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            FillGrid();
        }
    }
}