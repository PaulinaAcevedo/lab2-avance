using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MVCLaboratorio.Utilerias;
using System.Data;
using System.Data.SqlClient;

namespace MVCLaboratorio.Controllers
{
    public class VideoController : Controller
    {
        //
        // GET: /Video/

        public ActionResult Index()
        {
            ViewData["datavideo"] = BaseHelper.ejecutarConsulta("select * from video", CommandType.Text);
            return View();
            
        }
        public ActionResult Create()
        {
            return View();
        }
        public ActionResult Edit()
        {
            return View();
        }
        public ActionResult Delete()
        {
            return View();
        }
        public ActionResult Search()
        {
            return View();
        }
        //POST Procesa los datos ingresados al formulario
        [HttpPost]
        public ActionResult Create(int idVideo,
            string titulo,
            int repro,
            string url)
        {
            List<SqlParameter> Parametros = new List<SqlParameter>();
            Parametros.Add(new SqlParameter("@idVideo", idVideo));
            Parametros.Add(new SqlParameter("@titulo", titulo));
            Parametros.Add(new SqlParameter("@repro", repro));
            Parametros.Add(new SqlParameter("@url", url));
            BaseHelper.ejecutarSentencia("sp_agregar_video", CommandType.StoredProcedure, Parametros);

            return RedirectToAction("Index", "Home");


        }


        [HttpPost]
        public ActionResult Edit(int idVideo,
            string titulo,
            int repro,
            string url)
        {
            List<SqlParameter> Parametros = new List<SqlParameter>();
            Parametros.Add(new SqlParameter("@idVideo", idVideo));
            Parametros.Add(new SqlParameter("@titulo", titulo));
            Parametros.Add(new SqlParameter("@repro", repro));
            Parametros.Add(new SqlParameter("@url", url));
            BaseHelper.ejecutarSentencia("sp_video_actualizar", CommandType.StoredProcedure, Parametros);

            return RedirectToAction("Index", "Home");

        }
        [HttpPost]
        public ActionResult Delete(int idVideo)
        {
            List<SqlParameter> Parametros = new List<SqlParameter>();
            Parametros.Add(new SqlParameter("@idVideo", idVideo));

            BaseHelper.ejecutarSentencia("sp_video_eliminar", CommandType.StoredProcedure, Parametros);

            return RedirectToAction("Index", "Home");
        }
        [HttpPost]
        public ActionResult Search(int idVideo)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@idVideo", idVideo));
            ViewData["datavideo"] =  BaseHelper.ejecutarConsulta("sp_video_buscar", CommandType.StoredProcedure, parametros);
            return View("Resultado");
        }


    }
}

