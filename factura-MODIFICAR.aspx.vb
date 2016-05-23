
Partial Class factura_MODIFICAR
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Write("<script>alert('¡Factura modificada EXITOSAMENTE!');</script>")
    End Sub
End Class
