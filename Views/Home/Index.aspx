<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Index</title>
</head>
<body>

    <form id="form1" runat="server">
    <h1>opciones
    </h1>
    <a href="/Video/Index/">Ver lista de video</a>

        
    <br />
    <a href="/Video/Create/">Create video</a>
   <a href="/Video/Edit/">Edit video</a>
   <a href="/Video/Delete/">Delete video</a>
   <a href="/Video/Search">Busqueda Video</a>
    </form>

</body>
</html>
