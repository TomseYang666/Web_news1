Imports System
Imports System.ComponentModel
Imports System.Data
Imports System.Web
Imports System.Web.SessionState
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Configuration
Imports Microsoft.VisualBasic

Partial Class login
    Inherits System.Web.UI.Page
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeCompontent()
    End Sub
    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
    End Sub
    Private Sub InitializeComponent()
    End Sub
    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        If password.Text <> ConfigurationManager.AppSettings("密码") Then
            Label1.Text = "密码错误，请重新输入"
        Else
            Session("name") = "manager"
            Response.Redirect("manager.aspx")
        End If
    End Sub
    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        If Session("name") <> "" Then
            Session.Abandon()
            Response.Redirect("Default.aspx")
        End If
    End Sub
End Class
