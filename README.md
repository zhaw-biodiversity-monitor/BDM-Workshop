# BDM-Workshop
Material for workshop

Dauer: 
- 3h (13 - 16)
- 3 x 45-50min

Outline:
- Einführung:
  - Warum Shiny? 
    - *ich denke hier können wir uns kurz halten, die meisten werden sich nicht ohne Grund für einen Shiny Workshop angemeldet haben*
  - Stärken und Schwächen von Shiny: 
    - *Wann macht Shiny Sinn, was sind die limiten?*
      - Schnell erstellt, kostengünstig.
      - Kann von Domänexperten erstellt werden, braucht keine IT Spezialisten
      - Toll für Prototypen, Demonstrationen, Präsentationen
      - Braucht einen R-Server im Hintergrund während klassische Webapps beim Nutzer lokal laufen und nur einen Webserver brauchten (>> Kosten!)
      - Jeder neue nutzer belastet den Server, Applikation skaliert sich schlecht
  - Use cases und "Dont use cases": 
    - *Shiny applikationen können beispielsweise auch verwendet werden, um workflows innerhalb der FG zu vereinfachen (beispiel Nikkita).*
    - *Shiny Apps sollten aber nicht verwendet werden, wenn es dazu eine alternative gibt*
      - *Beispiel ["Blood Banks in India"](https://opndt.shinyapps.io/bloodbank_india/)*: Hier wäre eine einfache webmap ausreichend gewesen
      - *Beispiel: DiZH Projekt*
- Grundelemente einer Webapplikation
  - Crash course in HTML, CSS und JavaScript
  - Übersetzung von HTML, CSS und JS in Shiny (HTML/CSS → UI, JS → server)
  - Wir bauen eine erste Applikation
- Core conzept: Reactivity
  - Warum ist es wichtig?
  - Wie wird es implementiert? observeEvent, bindevent, reactive, eventreactive usw
- Design Conzepts: 
  - So viel wie möglich vor prozessieren
  - So viel wie möglich vor ui() server() funktionen
- Debuggen
  - browser()
- Deployen
  - idealerweise auf rstudio.zhaw.ch, zur Not auf shinyapps.io






