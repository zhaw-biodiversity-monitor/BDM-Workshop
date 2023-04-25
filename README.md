# BDM-Workshop

- Dauer: 3h (13 - 16), respektive  3 x 45-50min
- Anzahl Teilnehmer: ca. 8 Personen
- Aufbau: Zu Beginn jedes der drei Blöcke kurze Inputs à 10 - 15min, danach zusammen coden.
- Prerequisits:
 - Etwas R Kentnisse (wurde bereits so kommuniziert)
 - Einen aktuelle R Installation (min 4.2), muss noch kommuniziert werden (Verweis auf CMA Unterlagen?)
 - Eine akutalisierte IDE, vorzugsweise RStudio, muss noch kommuniziert werden (Verweis auf CMA Unterlagen?)



Outline:
- Einführung (10min):
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
- Grundelemente einer Webapplikation (40min)
  - Crash course in HTML, CSS und JavaScript:
    - Hier würde ich den JS Input aus dem Remote Sensing Kurs in kondensierter Form durchspielen und zusammen eine Applikation bauen, welche beispielsweise den eigenen Namen gedreht zurück gibt.
  - Übersetzung von HTML, CSS und JS in Shiny (HTML/CSS → UI, JS → server)
- Wir bauen eine erste, einfache Applikation (20min)
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






