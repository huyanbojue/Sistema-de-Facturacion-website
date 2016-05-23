
Partial Class detalle_factura_BORRAR
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Write("<script>alert('¡Factura Eliminada EXITOSAMENTE!');</script>")
    End Sub
End Class
