
Partial Class productos_administrar_MODIFICAR
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Write("<script>alert('¡Producto modificado EXITOSAMENTE!');</script>")
    End Sub
End Class
