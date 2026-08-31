# 🚀 Guide de Configuration - StockaStats GitHub Pages

## ✅ Étapes complétées

- ✅ Site HTML de base créé dans `docs/`
- ✅ Pages structurées (Accueil + Articles)
- ✅ Navigation et design appliqués
- ✅ Fichier `.gitignore` configuré

## 📋 Prochaines étapes

### 1️⃣ Installer Quarto (IMPORTANT)

Le système Quarto n'est pas encore installé sur votre machine. Pour un fonctionnement complet :

1. Rendez-vous sur : **https://quarto.org/docs/get-started/**
2. Téléchargez l'installeur Windows (.msi)
3. Lancez l'installation en double-cliquant le fichier
4. Suivez l'assistant d'installation par défaut

Après l'installation, testez dans PowerShell :
```powershell
quarto --version
```

### 2️⃣ Pousser les modifications sur GitHub

```powershell
cd "C:\Users\GPNBO\Code\stockastats.github.io"

# Ajouter les nouveaux fichiers
git add docs/
git add .gitignore

# Créer un commit
git commit -m "feat: site HTML initial avec navigation et sommaire"

# Pousser vers GitHub
git push origin main
```

### 3️⃣ Configurer GitHub Pages (dans les paramètres du dépôt)

Sur GitHub.com :
1. Allez dans **Settings** → **Pages**
2. Sous "Build and deployment" :
   - **Source** : `Deploy from a branch`
   - **Branch** : Sélectionnez `main`
   - **Folder** : Sélectionnez `/docs`
3. Cliquez **Save**

GitHub devrait ensuite afficher : ✅ "Your site is live at https://stockastats.github.io/"

### 4️⃣ Workflow de publication avec Quarto

Une fois Quarto installé, pour ajouter des articles :

```powershell
# Importer un article
.\scripts\import-article.ps1 `
  -SourceFile "C:\chemin\vers\article.md" `
  -Slug "nom-article" `
  -Title "Titre de l'article" `
  -Description "Description courte"

# Générer le site HTML
quarto render

# Pousser vers GitHub
git add docs/
git commit -m "feat: ajout article 'nom-article'"
git push origin main
```

## 🎨 Personnalisation

Le design utilise actuellement des couleurs fixes (`#2c5aa0`). Pour personnaliser :
- Modifiez `styles.css` pour les styles globaux
- Éditez le `_quarto.yml` pour la configuration Quarto
- Les fichiers `.qmd` (Quarto Markdown) se convertiront automatiquement en HTML avec `quarto render`

## ❓ Dépannage

### "Error 404" sur le site
→ Les fichiers HTML ne sont pas visibles. Vérifiez que :
- Les fichiers sont bien dans `/docs`
- GitHub Pages est configuré pour `/docs`
- Attendez 2-3 minutes après le push (GitHub Pages a besoin de temps pour déployer)

### Quarto: command not found
→ Quarto n'est pas installé ou pas dans le PATH. Réinstallez-le depuis https://quarto.org/

## 📚 Ressources

- Documentation Quarto : https://quarto.org/docs/
- Configuration Quarto websites : https://quarto.org/docs/websites/
- GitHub Pages : https://docs.github.com/en/pages
