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

public partial class Peliculas : System.Web.UI.Page
{
    VideoclubEntities vc = new VideoclubEntities();
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        TextBox2.Enabled = true;
        TextBox3.Enabled = true;
        TextBox4.Enabled = true;
        Button6.Enabled = true;

    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        string nombre = TextBox2.Text;
        float precio = float.Parse(TextBox3.Text);
        int stock = int.Parse(TextBox4.Text);
        VideoclubModel.Peliculas p =new VideoclubModel.Peliculas();
        p.Nombre = nombre;
        p.Precio = precio;
        p.Stock = stock;

        vc.AddToPeliculas(p);
        vc.SaveChanges();

        TextBox2.Enabled = false;
        TextBox3.Enabled = false;
        TextBox4.Enabled = false;
        Button6.Enabled = false;
        
        cargar_list();
        limpiar_cajas();
        
    }

    public void cargar_list()
    {
        var x = from pelis in vc.Peliculas
                select pelis;

        ListBox1.DataSource = x;
        ListBox1.DataTextField = "Nombre";
        ListBox1.DataValueField = "idPelicula";
        ListBox1.DataBind();
    }

    public void limpiar_cajas()
    {
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        cargar_list();
       
    }
    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string nombre = (ListBox1.SelectedItem).ToString();

        var x = (from peliculas in vc.Peliculas
                 where peliculas.Nombre==nombre
                 select peliculas).First();


        TextBox2.Text = x.Nombre;
        TextBox3.Text = x.Precio.ToString();
        TextBox4.Text = x.Stock.ToString();

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        ListBox1.Items.Clear();

        string nombre = TextBox1.Text;

        var x = (from peliculas in vc.Peliculas
                 where peliculas.Nombre == nombre
                 select peliculas).First();

        ListBox1.Items.Add(x.Nombre);

        TextBox2.Text = x.Nombre;
        TextBox3.Text = x.Precio.ToString();
        TextBox4.Text = x.Stock.ToString();

    }
    protected void Button4_Click(object sender, EventArgs e)
    {

    }
}
