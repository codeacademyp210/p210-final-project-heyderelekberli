using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FinalProject.Models
{
    public class HomeViewModel : SeansViewModel
    {
        public List<Movy> Movies { get; set; }
        public List<Movy> SliderMovies { get; set; }
        public List<Actor> Actors { get; set; }
        public List<Genre> Genres { get; set; }
        public List<Sean> Seans { get; set; }
        public List<Comment> Comments { get; set; }
        public List<MovieActor> MovieActors { get; set; }
    }
}