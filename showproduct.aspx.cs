using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            int quantity = int.Parse(e.Row.Cells[3].Text);

            foreach (TableCell cell in e.Row.Cells)
            {

                if (quantity < 11)
                {
                    cell.BackColor = color.red;


                }
            }
        }
    }
}
    
