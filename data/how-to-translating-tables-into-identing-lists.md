## HOW TO CONVERT TABLES IN INDENTED LISTS v0.2.4

This framework is developed by Roberto A. Foglietta <roberto.foglietta@gmail.com> and
it is protected by Creative Commons BY-NC-ND 4.0 license terms (for personal use, only).

### Example of a table

Sezione EGA,"{HN-n, DIB-m, GAP-k} Cambiato",Spiegazione della Modifica
DIB-1,Eliminato,"Riconfigurato come OFTB e RSMC, per critica sistemica."
DIB-2,Eliminato,"Riconfigurato come HN, la logica di ""risorsa esauribile"" (miniera)."
DIB-3,Eliminato,Riconfigurato come HP che definisce il cinismo del sistema.
OFTB,Aggiunta,"La ""predazione intra-specie"" come nuovo presupposto all'OFTB-3."

Note: Fields containing separators are quoted; internal quotes are doubled ("").

### Conversion procedure

Titles extraction: the first row contains column titles.

Campi della tavola {nome della tavola}:
* Sezione EGA
* {HN-n, DIB-m, GAP-k} Cambiato
* Spiegazione della Modifica

Row conversion: create an indented list entry for each table row.

1. DIB-1
   - Modifica: Riconfigurato come OFTB e RSMC, per critica sistemica.
   - Cambiato: Eliminato.

4. OFTB (nuovo)
   - Modifica: La "predazione intra-specie" come nuovo presupposto all'OFTB-3.
   - Cambiato: Aggiunta.

When appropriate, use compact formats:

2. **DIB-2**: Eliminato
  - Riconfigurato come HN, la logica di "risorsa esauribile" (miniera).

3. **DIB-3**: Riconfigurato come HP che definisce il cinismo del sistema.

The enumerated list entries (#1-#4) above, are a set of style examples.

### Conversion rules

Format handling:
* Tables may use comma (CSV), markdown, or other structured formats. Request clarification if the format is ambiguous.

Style selection:
* Users may specify styles (#1-#4) or suggest a preference (detailed vs compact). If not specified, analyze table structure and choose the most appropriate style. Use compact formats when the table has few columns and bullets when it has 2+ fields with long text. Extra meaningful information (e.g., "nuovo") can be added in parentheses when contextually relevant, also to reduce the number of the short text fields.

Consistency:
* Maintain the chosen style throughout each table. Different tables may use different styles if their nature differs significantly. 

Language & content:
* Use the original language and preserve field content verbatim (1:1) unless explicitly requested otherwise. Document any arbitrary changes with explanatory notes.

