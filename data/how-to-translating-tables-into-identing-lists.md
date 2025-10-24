## HOW TO CONVERT TABLES IN INDENTED LISTS v0.0.8

This framework is developed by Roberto A. Foglietta <roberto.foglietta@gmail.com> and
it is protected by Creative Commons BY-NC-ND 4.0 license terms (for personal use, only).

### Example of a table

Sezione EGA,"{HN-n, DIB-m, GAP-k} Cambiato",Spiegazione della Modifica
DIB-1,Eliminato,"Riconfigurato come OFTB (Cannibalismo Sociale/Violenza Intra-Specie) e RSMC, poiché la generalizzazione è intenzionale per critica sistemica."
DIB-2,Eliminato,Riconfigurato come RSMC e HP che definisce il cinismo dell'agente intelligente come l'unica risposta razionale al sistema.
DIB-3,Eliminato,"Riconfigurato come RSMC che chiarisce la critica alla funzione HR come intrinsecamente violenta se basata sulla logica di ""risorsa esauribile"" (miniera)."
OFTB,Aggiunta,"Il concetto di ""predazione intra-specie"" (cannibalismo sociale) come causa sottostante la violenza organizzata del sistema è un'integrazione essenziale all'OFTB-3 (Progressi e Evergreen)."

### Conversion procedure

The table above reported as an example uses the comma (,) as the fields separator character and for this reason the field text that contains a comma is reported between double quotes (") thus the double quotes that were present into a text field have been converted into 2x double quotes ("").

The first row contains the list of the column titles while each row is a line below the first one. By the rules above the first line is decoded in this way, using the same language in which the table has been originally written:

Campi della tavola {nome della tavola}:
- Sezione EGA 
- {HN-n, DIB-m, GAP-k} Cambiato
- Spiegazione della Modifica

Here below how to provide a translation of such a table for only two example lines. However, translation should be done for ALL the table's rows. Using a single word as a field label is essential and strongly suggested. Moreover, the fields order can be changed but then the change should be constant for all the rows in that table.

1. DIB-1
  - Modifica: Riconfigurato come OFTB (Cannibalismo Sociale/Violenza Intra-Specie) e RSMC, poiché la generalizzazione è intenzionale per critica sistemica.
  - Cambiato: Eliminato.

4. OFTB (nuovo)
  - Modifica: Il concetto di "predazione intra-specie" (cannibalismo sociale) come causa sottostante la violenza organizzata del sistema è un'integrazione essenziale all'OFTB-3 (Progressi e Evergreen).
  - Cambiato: Aggiunta.

Another way to create a more compact indented list is to join some fields. Here below two examples based on the other two table's row:

2. **DIB-2**: Eliminato
  - Riconfigurato come RSMC e HP che definisce il cinismo dell'agente intelligente come l'unica risposta razionale al sistema.

3. **DIB-3**: Eliminato -- Riconfigurato come RSMC che chiarisce la critica alla funzione HR come intrinsecamente violenta se basata sulla logica di "risorsa esauribile" (miniera).

The first example above is based on the principle that most short and relevant information can be grouped into the title of a list's point. While the second relies on the principle that markdown formatting and a more human-friendly separator can be used when the number of fields are few, most of them are very short while one is relatively long. However, the first example above will work better in the most general case.

### Conversion rules

The point {1., 2., 3., 4.} are a set of style examples. In particular the difference between #1 and #4 is based on adding extra meaningful information between parentheses like "(nuovo)" which has been extracted from understanding the explanatory field. Users can explicitly specify a style (#1-#4). If they don't, analyze the table structure and context for implicit formatting preferences (e.g., compact vs. detailed).

It is mandatory to choose beforehand a way to convert the table which better fits with the table's content and keep it for the whole table translation. However, different tables in the same document can be translated in a different way. Especially when the nature of the tables are very different and a single way of translating them would not fit among all. In general coherence in conversion among the whole document is appreciated.

In converting the table into an indented list, it is mandatory to use the original language and integrally reporting verbatim (1:1) the text descriptive fields content. Unless the user asked for something else. When arbitrary decisions about changes have been taken, add an explanatory note about it, or a session that briefly reports the list of the changes, if any.

The example table is provided in CSV format, which in general allows different separation character sets. Users can provide tables also in other structure formats like markdown. Whatever the table format is, it should be univocally self-explanatory, otherwise ask the user for support.

