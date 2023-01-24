<%-- BeginRegion Page setup --%>
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="ASPxperience_PopupControl_HowToLoadUserControlViaCallback_HowToLoadUserControlViaCallback" %>
<%@ Register Assembly="DevExpress.Web.v13.1" Namespace="DevExpress.Web" TagPrefix="dxcb" %>
<%@ Register Assembly="DevExpress.Web.v13.1" Namespace="DevExpress.Web" TagPrefix="dxpc" %>
<%@ Register Assembly="DevExpress.Web.v13.1" Namespace="DevExpress.Web" TagPrefix="dxe" %>

<%-- EndRegion --%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>How to load usercontrols via a callback in ASPxPopupControl</title>
    <script type="text/javascript">
        var userControlCache = {};
        var userControlIDInCallback = null;
        
        function ShowPopup(userControlID) {
            popup.SetHeaderText("UserCotnrol " + userControlID);
            popup.SetContentHTML("Loading...");
            popup.Show();
            
            if (GetUserControlFromCache(userControlID) != null) {
                // get UserControl content from cache
                SetPopupContentHTML(GetUserControlFromCache(userControlID)); 
                _aspxRunStartupScripts(); // internal function
            }
            else {
                userControlIDInCallback  = userControlID;
                callback.SendCallback(userControlID);
            }
        }
        function CallbackComplete(s, e) {
            SetPopupContentHTML(e.result);
            SaveUsertControlToCache(userControlIDInCallback, e.result);
        }        
        function SetPopupContentHTML(result) {
            popup.SetContentHTML(result);
            if (popup.IsVisible())
                popup.UpdatePosition();
        }
        function GetUserControlFromCache(userControlID) {
            return _aspxIsExists(userControlCache[userControlID]) ? 
                        userControlCache[userControlID] : null;
        }
        function SaveUsertControlToCache(userControlID, contentHtml) {
            userControlCache[userControlID] = contentHtml;
        }
    </script>
    <%-- BeginRegion CSS --%>
    <style type="text/css">
        td.linkCell {
            padding-right: 20px;
        }
    </style>
    <%-- EndRegion --%>    
</head>
<body>
    <form id="form1" runat="server">
        
            
        <%-- BeginRegion Popup Control --%>
        <dxpc:ASPxPopupControl ID="pcPopup" runat="server" ClientInstanceName="popup" PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="WindowCenter" CloseAction="CloseButton" Modal="True">
            <ContentCollection>
                <dxpc:PopupControlContentControl runat="server">
                </dxpc:PopupControlContentControl>
            </ContentCollection>
            <ContentStyle HorizontalAlign="Center">
            </ContentStyle>
        </dxpc:ASPxPopupControl>
        <%-- EndRegion --%>
        <%-- BeginRegion Links --%>        
        <table cellpadding="0" cellspacing="0">
            <tr>
                <td class="linkCell">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="javascript:ShowPopup('1');">[Show UserControl1]</asp:HyperLink>
                </td>
                <td class="linkCell">
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="javascript:ShowPopup('2');">[Show UserControl2]</asp:HyperLink>
                </td>
            </tr>
        </table>
        <%-- EndRegion --%>
        <%-- BeginRegion ASPxCallback --%>        
        <dxcb:ASPxCallback ID="clbCallback" runat="server" ClientInstanceName="callback" OnCallback="OnCallback">
            <ClientSideEvents CallbackComplete="CallbackComplete" />
        </dxcb:ASPxCallback>        
        <%-- EndRegion --%>        
    </form>
</body>
</html>
