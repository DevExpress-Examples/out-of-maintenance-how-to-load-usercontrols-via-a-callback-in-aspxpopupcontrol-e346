Imports Microsoft.VisualBasic
Imports System
Imports System.Data
Imports System.Configuration
Imports System.Collections
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls
Imports DevExpress.Web

Partial Public Class ASPxperience_PopupControl_HowToLoadUserControlViaCallback_HowToLoadUserControlViaCallback
	Inherits System.Web.UI.Page
	Private Const UserControlPathTemplate As String = "~/UserControl{0}.ascx"
	Protected Sub OnCallback(ByVal source As Object, ByVal e As DevExpress.Web.CallbackEventArgs)
		Dim resControl As Control = Nothing
		If (Not String.IsNullOrEmpty(e.Parameter)) Then
			resControl = Page.LoadControl(String.Format(UserControlPathTemplate, e.Parameter))
		End If
		If resControl IsNot Nothing Then
			e.Result = ASPxCallback.GetRenderResult(resControl)
		Else
			e.Result = ""
		End If
	End Sub
End Class
