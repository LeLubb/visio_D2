# Présentation ENS & FAQ prépa

- `carton_invitation.tex` : modèle d'invitation A4 en français, sur une page.
- `slides_presentation.tex` : présentation Beamer 16:9 en huit diapositives.
- `slides_presentation.pdf` : version compilée, prête à projeter.
- `images/` : logos d'origine utilisés par les deux documents.
- `images/page_de_garde.pdf` : page de garde originale, intégrée à l'identique.
- `beamertheme/beamerthemeMermozSaclay.sty` : thème Beamer à personnaliser.
- `SOURCES.md` : références utilisées pour le contenu.
- `compilation/` : fichiers intermédiaires de compilation, exclus de Git.

## Plan de la présentation

1. Page de garde originale
2. Sommaire
3. Présentation des anciens
4. L'ENS : associations et sports
5. Les doubles diplômes de l'ENS
6. Les grandes questions sur la prépa
7. FAQ
8. Remerciements

La page de garde est conservée sous forme de page PDF pour préserver son rendu
exact, le thème source ayant évolué depuis sa première compilation. Les sept
autres diapositives sont directement modifiables dans le fichier Beamer.

## Lien de visioconférence

Le modèle public utilise une adresse d'exemple. Pour créer l'invitation réelle,
ajouter un fichier local `visio_privee.tex` contenant :

```tex
\renewcommand{\LienVisio}{https://votre-lien-de-visioconference}
```

Ce fichier est chargé automatiquement lors de la compilation du carton.
Il est exclu de Git, ainsi que `carton_invitation.pdf`, pour que le lien d'accès
ne soit pas publié. Le bouton utilise `\href{\LienVisio}{...}`.

## Dans VS Code

Ouvrir ce dossier et installer l'extension recommandée **LaTeX Workshop**.
Avec une distribution TeX comprenant `pdflatex` et `latexmk`, l'enregistrement
d'un fichier LaTeX déclenche sa compilation. La recette du projet place les PDF
à la racine et les fichiers annexes dans `compilation/`.

La synchronisation source/PDF (SyncTeX) est désactivée pour conserver uniquement
les PDF parmi les sorties à la racine.

## Depuis le terminal

Depuis ce dossier, compiler les deux documents :

```sh
latexmk
```

Ou compiler un seul document :

```sh
latexmk carton_invitation.tex
latexmk slides_presentation.tex
```

La configuration commune se trouve dans `.latexmkrc`.
