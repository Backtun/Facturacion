Public Class Login
    Inherits System.Web.UI.Page

    Dim conexion As New Conexion

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    ''' <summary>
    ''' Evento para el botón ingresar
    ''' </summary>
    ''' <param name="sender"></param>
    ''' <param name="e"></param>
    Protected Sub btnIngresar_Click(sender As Object, e As EventArgs) Handles btnIngresar.Click
        Dim tabla As New DataTable
        tabla = conexion.ValidarUsuario(txtUsuario.Text, txtPassword.Text)

        If tabla.Rows.Count() = 0 Then
            Response.Write("Usario no válido")
        Else
            Response.Write("Usario válido")
        End If
    End Sub
End Class