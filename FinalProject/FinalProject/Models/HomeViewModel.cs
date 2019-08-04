using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FinalProject.Models
{
    public class HomeViewModel
    {
        public List<Movy> Movies { get; set; }
        public List<Actor> Actors { get; set; }
        public List<Genre> Genres { get; set; }
        public List<Sean> Seans { get; set; }
        public List<Comment> Comments { get; set; }

    }
}