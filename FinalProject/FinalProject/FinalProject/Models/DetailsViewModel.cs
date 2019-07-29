﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FinalProject.Models
{
    public class DetailsViewModel
    {
        public int Id { get; set; }
        public string Image { get; set; }
        public Nullable<int> Number { get; set; }
        public string Name { get; set; }
        public string Production { get; set; }
        public string Duration { get; set; }
        public string Director { get; set; }
        public string ActorID { get; set; }
        public Nullable<double> Imdb { get; set; }
        public string Video { get; set; }
        public string Slider { get; set; }
        public Nullable<bool> Status { get; set; }
        public string Info { get; set; }
        public List<MovieGenre> Category { get; set; }

    }
}