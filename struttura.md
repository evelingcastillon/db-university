# UNIVERSITY

Modellizzare la struttura di una tabella per memorizzare tutti i dati riguardanti una università:
- sono presenti diversi dipartimenti, ciascuno con i propri corsi di laurea;
- ogni corso di laurea è formato da diversi corsi;
- ogni corso può essere tenuto da diversi insegnanti e prevede più appelli d'esame;
- ogni studente è iscritto ad un corso di laurea;
- per ogni appello d'esame a cui lo studente ha partecipato, è necessario memorizzare il voto ottenuto, anche se non sufficiente
Nella cartella della repo create un file struttura.md nel quale inserite la stuttura delle tabelle come fatto in classe con me.
Poi usate diagrams.net per creare il diagramma E-R. Completato il diagramma cliccate nel menu in altro su FILE > EMBED > HTML per esportare il diagramma in formato html.
Copiate il codice che vi dá, create nella repo un file index.html e nel body incollate il codice come fatto in classe stamattina.

## DIPARTIMENTI
- id BINGINT PRIMARY KEY UNIQUE NOTNULL INDEX
- nome VARCHAR(50) NOTNULL
- desc TEXT
## CORSI
- id BINGINT PRIMARY KEY UNIQUE NOTNULL INDEX
- nome VARCHAR(50) NOTNULL
- desc TEXT
- anni YEAR

## STUDENTI
- id BINGINT PRIMARY KEY UNIQUE NOTNULL INDEX
- nome VARCHAR(50) NOTNULL
- cognome VARCHAR(50) NOTNULL
- email VARCHAR(50) NOTNULL
- istruzione VARCHAR(100) NOTNULL
- telefono VARCHAR(12) NOTNULL
- anni YEAR
- isee VARCHAR(100) NOTNULL
- documento VARCHAR(255) NOTNULL

## INSEGNANTI
- id BINGINT PRIMARY KEY UNIQUE NOTNULL INDEX
- nome VARCHAR(50) NOTNULL
- cognome VARCHAR(50) NOTNULL
- email VARCHAR(50) NOTNULL
- telefono VARCHAR(12) NOTNULL
- istruzione VARCHAR(100) NOTNULL
- documento VARCHAR(255) NOTNULL

## ESAMI
- id BINGINT KEY UNIQUE NOTNULL INDEX
- id_student BINGINT PRIMARY KEY
- corso VARCHAR(50) NOTNULL
- desc TEXT
- file VARCHAR(255) NOTNULL

## VOTI
- id BINGINT PRIMARY KEY UNIQUE NOTNULL INDEX
- id_studenti BINGINT PRIMARY KEY UNIQUE NOTNULL INDEX
- voto FLOAT(2,2)