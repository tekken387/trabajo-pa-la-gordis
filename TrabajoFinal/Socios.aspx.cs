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

public partial class Socios : System.Web.UI.Page
{
    VideoclubEntities vc = new VideoclubEntities();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        ListBox1.Items.Clear();

        string dni = TextBox1.Text;

        var x = (from socios in vc.Socios
                 where socios.Dni == dni
                 select socios).First();

        ListBox1.Items.Add(x.Nombre);

        TextBox2.Text = x.Nombre;
        TextBox3.Text = x.Dni;
        TextBox4.Text = x.CodSocio;
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cargar_list();
    }

    public void cargar_list()
    {
        var x = from socios in vc.Socios
                select socios;

        ListBox1.DataSource = x;
        ListBox1.DataTextField = "Nombre";
        ListBox1.DataValueField = "Dni";
        ListBox1.DataBind();
    }

    public void limpiar_cajas()
    {
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        
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
        string dni = TextBox3.Text;
        string cod = TextBox4.Text;
        VideoclubModel.Socios s = new VideoclubModel.Socios();
        s.Nombre = nombre;
        s.Dni = dni;
        s.CodSocio = cod;

        vc.AddToSocios(s);
        vc.SaveChanges();

        TextBox2.Enabled = false;
        TextBox3.Enabled = false;
        TextBox4.Enabled = false;
        Button6.Enabled = false;

        cargar_list();
        limpiar_cajas();
    }
}
