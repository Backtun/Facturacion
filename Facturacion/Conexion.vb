Imports System.Data.SqlClient

Public Class Conexion
    '? Método autenticación por sql server
    'Public cs_conexion As String = "data source = DESKTOP-3NCIUST\SQLEXPRESS; initial catalog = sis_factura; user id = ; password = "
    '? Método de autenticación por windows
    Public cs_conexion As String = "Data Source = DESKTOP-3NCIUST\SQLEXPRESS; Initial Catalog = sis_factura; Integrated Security = True"
    Private cn As New SqlConnection(cs_conexion)

    ''' <summary>
    ''' Abrir conexión a la base de datos
    ''' </summary>
    ''' <returns></returns>
    Public Function Conectarse() As Boolean
        Dim estado As Boolean
        Try
            cn.Open()
            estado = True
        Catch ex As Exception
            estado = False
        End Try
        Return estado
    End Function

    ''' <summary>
    ''' Cerrar conexión
    ''' </summary>
    Public Sub Desconectar()
        cn.Close()
    End Sub

    ''' <summary>
    ''' Validar si existe usuario en la base de datos
    ''' </summary>
    ''' <param name="usuario"></param>
    ''' <param name="clave"></param>
    ''' <returns></returns>
    Public Function ValidarUsuario(ByVal usuario As String, ByVal clave As String) As DataTable
        Dim tbdatos As New DataTable
        Dim adaptador As New SqlDataAdapter
        '? Nombre del procedimiento almacenado "ValidarUsuario"
        Dim comando As New SqlCommand("ValidarUsuario", cn)

        If Conectarse() Then

            With comando
                ' Tipo, procedimiento almacenado
                .CommandType = CommandType.StoredProcedure
                .Parameters.AddWithValue("@pusuario", usuario)
                .Parameters.AddWithValue("@pclave", clave)
            End With

            Try
                adaptador.SelectCommand = comando
                adaptador.Fill(tbdatos)
            Catch ex As Exception
                Return Nothing
            End Try

            Desconectar()
        End If

        Return tbdatos
    End Function
End Class
