using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
    [WebMethod]
    public string Closing()
    {
        File.Delete(uniquePath());
        return "Done!";
    }
    [WebMethod]
    public static string Closing_2()
    {
        Console.WriteLine("ENDDD");
        return "Done!";
    }
    private string ID;
    protected void Page_Load(object sender, EventArgs e)
    {
        start.Click += Start_Click;
        this.Unload += Index_Unload;
        ID = Guid.NewGuid().ToString(); 
    }

    private void Index_Unload(object sender, EventArgs e)
    {
       // File.Delete(uniquePath());
    }

    private string uniqueName()
    {
        return ID + ".png";
    }
    private string uniquePath()
    {
        return Server.MapPath("/") + uniqueName();
    }
    private void Start_Click(object sender, EventArgs e)
    {
        try
        {

            System.Drawing.Bitmap bm = new System.Drawing.Bitmap(image.FileContent);
            Bitmap newBitmap = new Bitmap(bm.Width, bm.Height);
            Graphics graphics = Graphics.FromImage(newBitmap);
            graphics.DrawImage(bm, 0, 0, newBitmap.Width, newBitmap.Height);
            System.Drawing.Bitmap logo = new System.Drawing.Bitmap(Server.MapPath("/") + "logo.png");
            float mult = 0.08f / ((float)logo.Height / (float)newBitmap.Height);
            mult = float.IsInfinity(mult) ? 1 : mult;
            graphics.DrawImage(logo, newBitmap.Width - logo.Width * mult - 1, newBitmap.Height - logo.Height * mult - 1, logo.Width * mult, logo.Height * mult);
            newBitmap.Save(uniquePath());
            output.ImageUrl = uniqueName();
            error.Text = "";
        }
        catch(Exception exc)
        {
            error.Text = "An error has occured... please use a different picture!";
        }

    }
}