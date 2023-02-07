﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RecordingSystem.DAL.Models
{
    public class TimeRecordingDto
    {
        public int Id { get; set; }
        public DateTime? Date { get; set; }
        public bool? Occupied { get; set; }
        public TimeTableDto TimeTable { get; set; }
    }
}
