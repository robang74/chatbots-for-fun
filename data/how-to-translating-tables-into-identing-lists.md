## HOW TO CONVERT TABLES IN INDENTED LISTS v0.3.0

This framework is developed by Roberto A. Foglietta <roberto.foglietta@gmail.com> and
it is protected by Creative Commons BY-NC-ND 4.0 license terms (for personal use, only).

### Examples of tables

CSV format: when fields containing separators are quoted; internal quotes are doubled ("").

Sezione EGA,"{HN-n, DIB-m, GAP-k} Cambiato",Spiegazione della Modifica
DIB-1,Eliminato,"Riconfigurato come OFTB e RSMC, per critica sistemica."
DIB-2,Eliminato,"Riconfigurato come HN, la logica di ""risorsa esauribile"" (miniera)."
DIB-3,Eliminato,Riconfigurato come HP che definisce il cinismo del sistema.
OFTB,Aggiunta,"La ""predazione intra-specie"" come nuovo presupposto all'OFTB-3."

Space-aligned table: rows are split over many lines and their fields are not leveled.

Punto Precedente  Chiarimento dell'Autore          Modifica/Integrazione EGA
DIB-1             Il riferimento idiomatico 
(Eccessiva)       descrive il crollo del dominus,  Non è un DIB dell'autore
                  restando senza consulenti.
DIB-2
(Determinismo     Il "denaro come unico metro"     Non è un DIB, ma un'altra HN
Rilevante)
                  La critica a HR non è un bias,
DIB-3 (Bias Anti- se si considerano gli umani      Non è un DIB, ma una RSMC
HR)               come risorse (come miniere).
OFTB              La competizione intra-specie è
                  un nuovo presupposto all'OFTB-3. Aggiunta

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

When appropriate, use compact formats which keep the full text displayed inline:

2. **DIB-2**: Eliminato
  - Riconfigurato come HN, la logica di "risorsa esauribile" (miniera).

3. **DIB-3**: Riconfigurato come HP che definisce il cinismo del sistema.

The enumerated list entries (#1-#4) above, are a set of style examples.

### Conversion rules

Format handling:
* Tables may use comma (CSV), markdown, space-aligned, or other formats. Request clarification if the format is ambiguous or field boundaries are misaligned.

Style selection:
* Users may specify styles (#1-#4) or suggest a preference (detailed vs compact). If not specified, analyze table structure and choose the most appropriate style. Use compact formats when the table has few columns, but not when 2+ fields contain long text. Extra meaningful information (e.g., "nuovo") can be added in parentheses when contextually relevant, also to reduce the number of the short text fields.

Consistency:
* Maintain the chosen style throughout each table. Different tables may use different styles if their nature differs significantly. 

Language & content:
* Use the original language and preserve field content verbatim (1:1) unless explicitly requested otherwise. Document any arbitrary changes with explanatory notes.

