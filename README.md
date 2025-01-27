# VF-Software-Engineering-2024-Project
MiniSat Project and report for the Formal Verification course

Project Link: https://github.com/AndiSova/VF-Software-Engineering-2024-Project

Săptămâna 14:
Stoențel Alexandru-Eduard: Creare video
Nenescu Eugeniu: Creare video
Andries Rafael Gabriel: Creare video

Săptămâna 13:
Stoențel Alexandru-Eduard: Cercetare suplimentară CDCL și redactarea pseudocodului
Nenescu Eugeniu: Rulare benchmark pe cod optimizat și luarea unor note suplimentare
Andries Rafael Gabriel: Actualizare PDF și optimizarea diagramelor UML

Săptămâna 12:
Stoențel Alexandru-Eduard: Brainstorming pentru optimizare și cercetare despre familia hamiltoniană
Nenescu Eugeniu: Optimizare cod și observații asupra rezultatelor
Andries Rafael Gabriel: Brainstorming pentru optimizare și cercetare despre familia hamiltoniană

Săptămâna 11:
Am împărțit sarcinile între noi și am consolidat unele dintre lucrurile discutate la întâlnirea de săptămâna trecută.


Stoențel Alexandru-Eduard: Procesul de instalare MiniSat cu ajutorul WSL, rularea familiei Hamiltoniene, explicarea aplicării în scris a CDCL, redactarea pseudocodului, rezultatele experimentului.

Nenescu Eugeniu: Rularea MiniSat-ului pe o mașină virtuală (Virtual Machine), optimizarea codului și descrierea modului în care codul a fost optimizat; redactarea unei concluzii pe baza rezultatelor obținute în urma rulării unui benchmark cu MiniSat optimizat.

Andries Rafael Gabriel: Redactarea introducerii, redactarea diagramelor UML și a pseudocodului, redactarea concluziei.

================================================================================

MiniSat README: 

Quick Install

- Decide where to install the files . The simplest approach is to use
  GNU standard locations and just set a "prefix" for the root install
  directory (reffered to as $PREFIX below). More control can be
  achieved by overriding other of the GNU standard install locations
  (includedir, bindir, etc). Configuring with just a prefix:

  > make config prefix=$PREFIX

- Compiling and installing:

  > make install

================================================================================
Configuration

- Multiple configuration steps can be joined into one call to "make
  config" by appending multiple variable assignments on the same line.

- The configuration is stored in the file "config.mk". Look here if
  you want to know what the current configuration looks like.

- To reset from defaults simply remove the "config.mk" file or call
  "make distclean".

- Recompilation can be done without the configuration step.

  [ TODO: describe configartion possibilities for compile flags / modes ]

================================================================================
Building

  [ TODO: describe seperate build modes ]

================================================================================
Install

  [ TODO: ? ]

================================================================================
Directory Overview:

minisat/mtl/            Mini Template Library
minisat/utils/          Generic helper code (I/O, Parsing, CPU-time, etc)
minisat/core/           A core version of the solver
minisat/simp/           An extended solver with simplification capabilities
doc/                    Documentation
README
LICENSE

================================================================================
Examples:

Run minisat with same heuristics as version 2.0:

> minisat <cnf-file> -no-luby -rinc=1.5 -phase-saving=0 -rnd-freq=0.02
