<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Edit</title>
  <meta  charset = " UTF-8 " ></meta>
  <meta  name = " description "  content = " Video CRUD ASP.NET MVC 2 " ></meta>
  <meta  name = " keywords "  content = " ASP.NET, MVC, Facpya " ></meta>
  <meta  name = " author "  content = " Paulina Acevedo Morales " ></meta>
  <meta  name = " viewport "  content = " ancho = ancho del dispositivo, escala inicial = 1.0 " ></meta>
</head>
<body>
    <form action="/Video/Edit/" method="post">
    <fieldset>
    <legend> Datos video</legend>

    <label for="idvideo">idVideo:</label>
        <input type="text" name="idVideo" />
        <br />

        <label for="titulo">titulo:</label>
        <input type="text" name="titulo" />
        <br />

        <label for="repro">repro:</label>
        <input type="text" name="repro" />
        <br />

        <label for="url">url:</label>
        <input type="text" name="url" />
        <br />
        <input type="submit" name="modificarVideo" value="Modificar video " />
        
</body>
</html>