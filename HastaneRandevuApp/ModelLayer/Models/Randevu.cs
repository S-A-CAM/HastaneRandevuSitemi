//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class Randevu
    {
        public int randevuID { get; set; }
        public Nullable<System.DateTime> tarih { get; set; }
        public Nullable<System.TimeSpan> saat { get; set; }
        public Nullable<bool> durum { get; set; }
        public Nullable<int> doktorID { get; set; }
        public Nullable<int> kullaniciID { get; set; }
    
        public virtual Doktor Doktor { get; set; }
        public virtual Kullanici Kullanici { get; set; }
    }
}
