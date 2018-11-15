<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
* [UserControl1.ascx](./CS/WebSite/UserControl1.ascx) (VB: [UserControl1.ascx](./VB/WebSite/UserControl1.ascx))
* [UserControl1.ascx.cs](./CS/WebSite/UserControl1.ascx.cs) (VB: [UserControl1.ascx](./VB/WebSite/UserControl1.ascx))
* [UserControl2.ascx](./CS/WebSite/UserControl2.ascx) (VB: [UserControl2.ascx.vb](./VB/WebSite/UserControl2.ascx.vb))
* [UserControl2.ascx.cs](./CS/WebSite/UserControl2.ascx.cs) (VB: [UserControl2.ascx.vb](./VB/WebSite/UserControl2.ascx.vb))
<!-- default file list end -->
# How to load usercontrols via a callback in ASPxPopupControl


<p>This example demonstrates how to load usercontrols via a callback in ASPxPopupControl.<br />
<strong>Note</strong> that when a UserControl is requested for the first time, its HTML markup is obtained from the server via a callback and then saved to a cache (the userControlCache veriable) on the client. Next time, the UserControl's HTML code is taken from the cache, which minimizes traffic and enhances application performance.</p>

<br/>


