﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ModelLayer.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class HastaneRandevuSistemiEntities : DbContext
    {
        public HastaneRandevuSistemiEntities()
            : base("name=HastaneRandevuSistemiEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Bolum> Bolum { get; set; }
        public virtual DbSet<Doktor> Doktor { get; set; }
        public virtual DbSet<Favori> Favori { get; set; }
        public virtual DbSet<Hastane> Hastane { get; set; }
        public virtual DbSet<HastaneBolum> HastaneBolum { get; set; }
        public virtual DbSet<Il> Il { get; set; }
        public virtual DbSet<Ilce> Ilce { get; set; }
        public virtual DbSet<Izin> Izin { get; set; }
        public virtual DbSet<Kullanici> Kullanici { get; set; }
        public virtual DbSet<KullaniciBilgileri> KullaniciBilgileri { get; set; }
        public virtual DbSet<Randevu> Randevu { get; set; }
        public virtual DbSet<Rol> Rol { get; set; }
    }
}
