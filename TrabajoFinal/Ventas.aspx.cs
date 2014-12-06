using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using VideoclubModel;

public partial class Ventas : System.Web.UI.Page
{
    VideoclubEntities vc = new VideoclubEntities();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string codsocio = TextBox1.Text;

        var x = (from cod in vc.Socios
                 where cod.CodSocio == codsocio
                 select cod).First();

        TextBox2.Text = x.Nombre;

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        VideoclubModel.Ventas_pelicula vp = new Ventas_pelicula();

        int idemp=int.Parse(DropDownList1.SelectedValue);
        var empleado = (from emp in vc.Empleados
                       where emp.idEmpleado == idemp
                        select emp).First();


        string codsocio = TextBox1.Text;
        var x = (from cod in vc.Socios
                 where cod.CodSocio == codsocio
                 select cod).First();

        string fecha = TextBox3.Text;



    }
}
