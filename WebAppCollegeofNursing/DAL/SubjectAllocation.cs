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
    
    public partial class SubjectAllocation
    {
        public int Id { get; set; }
        public Nullable<System.TimeSpan> StartPeriod { get; set; }
        public Nullable<System.TimeSpan> EndPeriod { get; set; }
        public Nullable<int> Batch { get; set; }
        public Nullable<int> SubjectId { get; set; }
        public Nullable<long> EmpId { get; set; }
    
        public virtual Employee Employee { get; set; }
        public virtual Subject Subject { get; set; }
    }
}
