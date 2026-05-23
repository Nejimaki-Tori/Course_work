# Сборка курсовой на macOS в VS Code

Рекомендуемый способ:

```bash
latexmk -xelatex -bibtex -interaction=nonstopmode -synctex=1 main.tex
```

Или просто:

```bash
make
```

В VS Code с LaTeX Workshop файл `main.tex` содержит magic comment `% !TeX program = xelatex`, а `latexmkrc` задаёт XeLaTeX как движок по умолчанию.

Важно:

- `main.tex` должен лежать рядом с `BYUPhys.cls`, `gost780u.bst`, `gzlogo.png` и `references.bib`.
- Файлы в папке `figures/` сейчас являются заглушками для успешной сборки. Замените их на настоящие изображения с теми же именами, если они есть.
- Перед сдачей заполните ФИО, группу и данные научного руководителя в начале `main.tex`.
