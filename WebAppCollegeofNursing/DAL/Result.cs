//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DAL
{
    using System;
    using System.Collections.Generic;
    
    public partial class Result
    {
        public long Id { get; set; }
        public Nullable<int> SubId { get; set; }
        public Nullable<long> StudentId { get; set; }
        public Nullable<double> Paper1 { get; set; }
        public Nullable<double> Paper2 { get; set; }
        public Nullable<double> Paper3 { get; set; }
        public Nullable<double> ModelPaper { get; set; }
        public Nullable<double> PPT { get; set; }
        public Nullable<double> Assignment { get; set; }
        public Nullable<double> ClassPresentation { get; set; }
        public Nullable<double> Attendence { get; set; }
    
        public virtual Student Student { get; set; }
        public virtual Subject Subject { get; set; }
    }
}
