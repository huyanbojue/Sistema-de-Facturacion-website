
Partial Class factura_CREAR
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Write("<script>alert('¡Nueva Factura creada EXITOSAMENTE!');</script>")
    End Sub
End Class
