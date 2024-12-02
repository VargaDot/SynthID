using Godot;
using Godot.Collections;
using System;

public partial class DateGenerator : Node
{
    [Export] public int MinYearRange;
    [Export] public int MaxYearRange;
    
    private DateTime MinYear, MaxYear;
    public override void _Ready()
    {
        MinYear = DateTime.Today;
        MaxYear = DateTime.Today;
        
        MinYear = MinYear.AddYears(-MinYearRange);
        MaxYear = MaxYear.AddYears(-MaxYearRange);
    }

    public Dictionary GenerateRandomDate()
    {
        int year, month, day, daysInMonth;
        
        year = GD.RandRange(MinYear.Year, MaxYear.Year);
        month = GD.RandRange(1, 12);
        daysInMonth = DateTime.DaysInMonth(year, month);
        day = GD.RandRange(1, daysInMonth);

        Dictionary newDate = new Dictionary() {
            {"year", year},
            {"month", month},
            {"day", day},
        };
        
        return newDate;
    }
}
