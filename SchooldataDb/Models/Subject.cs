using System;
using System.Collections.Generic;

namespace SchooldataDb.Models;

public partial class Subject
{
    public int SubjectId { get; set; }

    public string SubjectName { get; set; } = null!;

    public int? ClassId { get; set; }

    public virtual Class? Class { get; set; }

    public virtual ICollection<Student> Students { get; set; } = new List<Student>();
}
