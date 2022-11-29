# LaTeX Template for UniPD Theses
Adapted from the [official DFA UNICT Theses Templates](https://it.overleaf.com/latex/templates/dfa-dot-unict-thesis/tjdyygrtjszd)

### How to use:
Head to `/info.tex` to customize all the information in the cover:
* `\thesistype`:
    - `BSc` for bachelor theses;
    - `MSc` for master theses;
    - `PHD` for PHD theses.

* `\coursename`: name of the course you are graduating in (e.g Physics, Mathematics...)
  
* `\thesisauthor`: your name!
  
* `\thesistitle`: title of your thesis;
  
* `\year`: Academic year of your graduation;

Next two variables are for customizing the top right image of the title page with the department logo you are in:
* `\logocourse`: Path to the department logo. Currently the ones supported are:
    - DEI;
    - DFA;
    - DII;
    - Geoscience;
    - Mathematics.
  Logos from other departments can be manually added, just download the one you desire and specify the correct path!

* `\logocoursedim`: Dimension of the logo (in `\linewidth`), after adding the logo by specifying the path, play around with this value (from 0 to 1) for the best fit.
  
### Guida all'uso:
Vai su `/info.tex` per inserire le informazioni necessarie per il frontespizio:
* `\thesistype`:
    - `BSc` per le tesi triennali;
    - `MSc` per le tesi magistrali;
    - `PHD` per le tesi di dottorato.

* `\coursename`: nome del corso in cui ti stai laureando (per esempio Fisica, Matematica...)
  
* `\thesisauthor`: il tuo nome!
  
* `\thesistitle`: titolo della tua tesi;
  
* `\year`: anno accademico della laurea;

Le due variabili successive servono a personalizzare il logo del dipartimento in alto a destra nel frontespizio:
* `\logocourse`: Path del file del logo. Al momento sono implementati i loghi dei seguenti dipartimenti:
    - DEI;
    - DFA;
    - DII;
    - Geoscienze;
    - Matematica.
  Altri loghi possono essere aggiunti, basta scaricarli e specificare il path corretto.
  
* `\logocoursedim`: Dimensione del logo (in `\linewidth`), dopo aver aggiunto il logo, sistema la sua dimensione provando vari valori tra 0 e 1.
  
---
### Example:
![alt text](https://raw.githubusercontent.com/SaverioMonaco/UniPD-Thesis-Template/master/imgs/example.png?token=GHSAT0AAAAAABZOTZKBP4F2OUKE6GKH6GO2Y4FEZAA)
