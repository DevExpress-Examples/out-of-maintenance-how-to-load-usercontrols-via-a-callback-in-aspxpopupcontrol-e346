# How to load usercontrols via a callback in ASPxPopupControl


<p>This example demonstrates how to load usercontrols via a callback in ASPxPopupControl.<br />
<strong>Note</strong> that when a UserControl is requested for the first time, its HTML markup is obtained from the server via a callback and then saved to a cache (the userControlCache veriable) on the client. Next time, the UserControl's HTML code is taken from the cache, which minimizes traffic and enhances application performance.</p>

<br/>


