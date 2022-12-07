using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using DevExpress.Web;

public partial class ASPxperience_PopupControl_HowToLoadUserControlViaCallback_HowToLoadUserControlViaCallback : System.Web.UI.Page {
    const string UserControlPathTemplate = "~/UserControl{0}.ascx";
    protected void OnCallback(object source, DevExpress.Web.CallbackEventArgs e) {
        Control resControl = null;
        if (!string.IsNullOrEmpty(e.Parameter))
            resControl = Page.LoadControl(string.Format(UserControlPathTemplate, e.Parameter));
        e.Result = resControl != null ? ASPxCallback.GetRenderResult(resControl) : "";
    }
}
