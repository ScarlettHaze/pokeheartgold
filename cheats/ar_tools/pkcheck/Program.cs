using PKHeX.Core;
using System.Text;

// usage: pkcheck <savfile or "-"> <file.pk4>...
var sav = args[0] != "-" ? SaveUtil.GetSaveFile(args[0]) : null;
if (sav != null) { Console.WriteLine($"SAVE {sav.Version} OT {sav.OT} TID {sav.TID16} SID {sav.SID16}"); }
foreach (var f in args.Skip(1))
{
    var data = File.ReadAllBytes(f);
    var pk = new PK4(data);
    var la = new LegalityAnalysis(pk);
    Console.WriteLine($"=== {Path.GetFileName(f)}: {SpeciesName.GetSpeciesName(pk.Species, 2)} Lv{pk.CurrentLevel} PID {pk.PID:X8} shiny {pk.IsShiny} met {pk.MetLocation} ball {pk.Ball}  => {(la.Valid ? "LEGAL" : "ILLEGAL")}");
    if (la.EncounterMatch != null) Console.WriteLine($"   encounter: {la.EncounterMatch.LongName}");
    Console.WriteLine(la.Report(true));
}
