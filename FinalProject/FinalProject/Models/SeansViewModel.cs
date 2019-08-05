using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FinalProject.Models
{
    public class SeansViewModel 
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Image { get; set; }
        public string Address { get; set; }
        public string Phone { get; set; }
        public Nullable<bool> Status { get; set; }
        public List<MovieSean> MovieSeans { get; set; }
        public List<SeansTable> SeansTables { get; set; }

    }
}