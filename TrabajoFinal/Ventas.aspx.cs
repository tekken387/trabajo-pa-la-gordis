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
        TextBox4.Enabled = true;

        VideoclubModel.Ventas_pelicula vp = new Ventas_pelicula();

        int idemp=int.Parse(DropDownList1.SelectedValue);
        var empleado = (from emp in vc.Empleados
                       where emp.idEmpleado == idemp
                        select emp).First();


        string codsocio = TextBox1.Text;
        var x = (from cod in vc.Socios
                 where cod.CodSocio == codsocio
                 select cod).First();

        
        vp.Fecha_venta = DateTime.Today;
        vp.Socios = x;
        vp.Empleados = empleado;

        vc.AddToVentas_pelicula(vp);
        vc.SaveChanges();

        TextBox1.Enabled = false;
        TextBox2.Enabled = false;
        TextBox3.Enabled = false;
        TextBox5.Enabled = false;

        Button2.Enabled = false;
        Button3.Enabled = true;
        
    }

    public void limpiar_cajas()
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        Button3.Enabled = true;
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        limpiar_cajas();

        TextBox1.Enabled = true;
        TextBox3.Enabled = true;
        TextBox4.Enabled = true;
        TextBox5.Enabled = true;
        ListBox1.Items.Clear();

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        var aux = (from ventas in vc.Ventas_pelicula
                     select ventas.idVenta).Max();

        var venta = (from ventas in vc.Ventas_pelicula
                     where ventas.idVenta==aux
                     select ventas).First();

        VideoclubModel.Detalles_venta_pelicula dp = new Detalles_venta_pelicula();
        int cantidad = int.Parse(TextBox4.Text);
        int idpeli = int.Parse(DropDownList2.SelectedValue);

        var pe = (from peli in vc.Peliculas
                  where peli.idPelicula == idpeli
                  select peli).First();


        dp.Cantidad = cantidad;
        dp.Peliculas = pe;
        dp.Ventas_pelicula = venta;

        vc.AddToDetalles_venta_pelicula(dp);
        vc.SaveChanges();

        ListBox1.Items.Add(dp.Peliculas.Nombre);
    }
}
