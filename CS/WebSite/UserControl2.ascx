<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UserControl2.ascx.cs" Inherits="ASPxperience_PopupControl_HowToLoadUserControlViaCallback_UserControl2" %>
<%@ Register Assembly="DevExpress.Web.v13.1" Namespace="DevExpress.Web.ASPxEditors"
    TagPrefix="dxe" %>
<table cellpadding="0" cellspacing="0" style="width: 100%;">
    <tr>
        <td>
            <dxe:ASPxLabel ID="ASPxLabel1" runat="server" Text="UserControl 2 has been loaded successfully">
            </dxe:ASPxLabel>
        </td>
    </tr>
    <tr>
        <td style="padding-top: 10px;" align="center">
            <dxe:ASPxButton ID="okButton2" runat="server" Text="Ok" AutoPostBack="false">
                <ClientSideEvents Click="function(s, e) { popup.Hide(); } "/>
            </dxe:ASPxButton>
        </td>
    </tr>
</table>
