﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using _7eam_sondeo_web.Models;

namespace _7eam_sondeo_web.Controllers
{
    public class MarcaController : Controller
    {
        // GET: Marca
        public ActionResult Index()
        {
            UDConexion db = new UDConexion();

            return View(db.MARCA.ToList());
        }
    }
}