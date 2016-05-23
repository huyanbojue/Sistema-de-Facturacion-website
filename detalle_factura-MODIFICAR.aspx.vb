
Partial Class detalle_factura_MODIFICAR
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Write("<script>alert('¡Detalles modificados de la Factura EXITOSAMENTE!');</script>")
    End Sub
End Class
