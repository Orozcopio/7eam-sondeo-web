﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace _7eam_Sondeo_web.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class SondeoContext : DbContext
    {
        public SondeoContext()
            : base("name=SondeoContext")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<categoria> categoria { get; set; }
        public virtual DbSet<cliente> cliente { get; set; }
        public virtual DbSet<departamento> departamento { get; set; }
        public virtual DbSet<marca> marca { get; set; }
        public virtual DbSet<medida> medida { get; set; }
        public virtual DbSet<municipio> municipio { get; set; }
        public virtual DbSet<producto> producto { get; set; }
        public virtual DbSet<reporte> reporte { get; set; }
        public virtual DbSet<sondeo> sondeo { get; set; }
        public virtual DbSet<usuario> usuario { get; set; }
    }
}