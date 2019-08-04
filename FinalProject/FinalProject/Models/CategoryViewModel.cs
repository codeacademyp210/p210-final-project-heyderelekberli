using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FinalProject.Models
{
    public class CategoryViewModel
    {

        public int Id { get; set; }
        public string Name { get; set; }

        public List<MovieGenre> Category { get; set; }
   
    }
}