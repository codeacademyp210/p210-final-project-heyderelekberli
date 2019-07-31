using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FinalProject.Models
{
    public class ActorViewModel
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Image { get; set; }
        public string Born { get; set; }
        public string Country { get; set; }
        public string Nationality { get; set; }
        public string Awards { get; set; }
        public string Wikipedia { get; set; }
        public string Info { get; set; }
        public Nullable<bool> Status { get; set; }
        public List<MovieActor> MovieActors { get; set; }
    }
}