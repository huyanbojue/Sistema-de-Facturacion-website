
Partial Class detalle_factura_INGRESAR
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Write("<script>alert('¡Detalles agregados a Factura EXITOSAMENTE!');</script>")
    End Sub
End Class
