# stockastats.github.io

Site Quarto pour publier des articles importes depuis d'autres depots Git.

## Prerequis

- Quarto CLI installe: https://quarto.org/docs/get-started/

## Lancer en local

```powershell
quarto preview
```

## Importer un article depuis un autre repo

```powershell
# Exemple
.\scripts\import-article.ps1 `
  -SourceFile "C:\Users\GPNBO\Code\autre-repo\article.md" `
  -Slug "mon-article" `
  -Title "Mon article" `
  -Description "Resume de l'article"
```

Puis regenerer le site:

```powershell
quarto render
```

Le site statique est genere dans `docs/`.

## Publication GitHub Pages

1. Repo settings -> Pages.
2. Source: `Deploy from a branch`.
3. Branch: `main` / folder: `docs`.
4. Commit et push les changements.
