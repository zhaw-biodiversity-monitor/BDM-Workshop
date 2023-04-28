# BDM-Workshop

\ | \
:--- |:-----
Dauer | 3h (13 - 16) respektive  3 x 45-50min
Anzahl | Teilnehmer: ca. 8 Personen
Aufbau | Zu Beginn jedes der drei Blöcke kurze Inputs à 10 - 15min, danach zusammen coden.
Prerequisites | - Etwas R Kentnisse (wurde bereits so kommuniziert) <br> - Einen aktuelle R Installation (min 4.2), muss noch kommuniziert werden (Verweis auf CMA Unterlagen?) <br> - Eine akutalisierte IDE, vorzugsweise RStudio, muss noch kommuniziert werden (Verweis auf CMA Unterlagen?) <br> - rstudio.zhaw.ch/rsconnect (muss noch kommuniziert werden)



Outline:
- **Lektion 1**
  - *kurze* Einführung, warum Shiny? [^warum-shiny]
  - Grundelemente einer Webapplikation, einführung in html, css und js [^html-css-js]
- **Lektion 2**
  - Wir bauen eine erste Shiny App
  - *reactivity* verstehen [^reactivity]
  - Debuggen mit `browser()`
  - Wichtige Design Konzepte verstehen[^design-concepts]
- **Lektion 3**
  - Deployen (rstudio.zhaw.ch / shinyapps.io / WASM?)
  - Stärken und Schwächen von Shiny[^pros-cons]
  - Use cases und "Dont use cases" [^use-cases]


[^warum-shiny]: ich denke hier können wir uns kurz halten, die meisten werden sich nicht ohne Grund für einen Shiny Workshop angemeldet haben

[^pros-cons]: Wann macht Shiny Sinn, was sind die Limiten?

    - Schnell erstellt, kostengünstig.
    - Kann von Domänexperten erstellt werden, braucht keine IT Spezialisten
    - Toll für Prototypen, Demonstrationen, Präsentationen
    - Braucht einen R-Server im Hintergrund während klassische Webapps beim Nutzer lokal laufen und nur einen Webserver brauchten (>> Kosten!)
    - Jeder neue nutzer belastet den Server, Applikation skaliert sich schlecht

[^use-cases]: Wann sinn Shiny apps sinnvoll, wann nicht?

    - *Shiny applikationen können beispielsweise auch verwendet werden, um workflows innerhalb der FG zu vereinfachen (beispiel Nikkita).*
    - *Shiny Apps sollten aber nicht verwendet werden, wenn es dazu eine alternative gibt*
    
      - *Beispiel ["Blood Banks in India"](https://opndt.shinyapps.io/bloodbank_india/)*: Hier wäre eine einfache webmap ausreichend gewesen
      - *Beispiel: DiZH Projekt*


[^html-css-js]: Crash course in HTML, CSS und JavaScript

    - Hier würde ich den JS Input aus dem Remote Sensing Kurs in kondensierter Form durchspielen und zusammen eine Applikation bauen, welche beispielsweise den eigenen Namen gedreht zurück gibt.
    - Übersetzung von HTML, CSS und JS in Shiny (HTML/CSS → UI, JS → server)

[^reactivity]: reactivity:

    - Warum ist es wichtig?
    - Wie wird es implementiert? observeEvent, bindevent, reactive, eventreactive usw
    
[^design-concepts]: Design Concepts:


    - So viel wie möglich vor prozessieren
    - So viel wie möglich vor ui() server() funktionen
