<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Delete</title>
    <meta  charset = " UTF-8 " ></meta>
  <meta  name = " description "  content = " Video CRUD ASP.NET MVC 2 " ></meta>
  <meta  name = " keywords "  content = " ASP.NET, MVC, Facpya " ></meta>
  <meta  name = " author "  content = " Paulina Acevedo Morales " ></meta>
  <meta  name = " viewport "  content = " ancho = ancho del dispositivo, escala inicial = 1.0 " ></meta>
</head>
<body>
   <title>Create</title>
</head>
<body>
    <form action="/Video/Delete" method="post">
    <fieldset>
    <legend> Datos video</legend>

    <label for="idvideo">idVideo:</label>
        <input type="text" name="idVideo" />
        <br />
       
        <input type="submit" name="eliminarVideo" value="Eliminar video " />

</body>
</html>

