
Partial Class productos_categorias_adm_BORRAR
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Write("<script>alert('¡Categoria eliminada EXITOSAMENTE!');</script>")
    End Sub
End Class
