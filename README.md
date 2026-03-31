# 💍 Divorce Prediction — Analyse de Survie

> Analyse statistique de la durée des mariages arrangés et modélisation du risque de divorce par des méthodes de survie.

---

## 📊 Aperçu du projet

Ce projet explore une base de données synthétique de **5 000 mariages** afin d'identifier les facteurs influençant la durée d'une union et la probabilité de divorce au fil du temps.

L'analyse repose sur des méthodes d'**analyse de survie** : estimation non paramétrique, ajustement de lois paramétriques et modélisation par le modèle de Cox.

📄 **[Voir le rapport complet](https://elouan-michy.github.io/Divorce-Prediction/Divorce_Prediction.html)**

---

## 🗂️ Structure du projet

```
📦 Divorce-Prediction
 ┣ 📂 composite/                            # Dossier des modules R Markdown
 ┃ ┣ 📂 Dataset/                            # Données brutes
 ┃ ┃ ┗ 📜 divorce_df.csv                   # Base de données (5 000 mariages, 22 variables)
 ┃ ┣ 📜 1_Introduction.Rmd                 # Contexte, problématique et justification
 ┃ ┣ 📜 2_Data_prepared.Rmd                # Description et préparation des données
 ┃ ┣ 📜 3_survival_without_parameters.Rmd  # Analyse non paramétrique (KM, Nelson-Aalen)
 ┃ ┣ 📜 4_survival_with_parameters.Rmd     # Ajustement de lois paramétriques (Gamma, Weibull...)
 ┃ ┣ 📜 5_survival_semi_parameters.Rmd     # Modèle de Cox (semi-paramétrique)
 ┃ ┗ 📜 setup.R                            # Chargement des packages et import des données
 ┣ 📜 .gitignore                            # Fichiers exclus du versioning
 ┣ 📜 Divorce_Prediction.Rmd               # Rapport principal (agrège les modules composite/)
 ┣ 📜 Divorce_Prediction.html              # Rapport compilé — publié sur GitHub Pages
 ┗ 📜 index.html                            # Redirection automatique vers le rapport HTML
```

---

## 🔍 Contenu de l'analyse

| Section | Fichier | Description |
|---|---|---|
| Introduction | `1_Introduction.Rmd` | Contexte sociologique, problématique |
| Données | `2_Data_prepared.Rmd` | Exploration, boxplots, histogrammes |
| Survie non paramétrique | `3_survival_without_parameters.Rmd` | Kaplan-Meier, Nelson-Aalen, Breslow |
| Lois paramétriques | `4_survival_with_parameters.Rmd` | Gamma, Weibull, Exponentielle, Normale, Bêta |
| Modèle de Cox | `5_survival_semi_parameters.Rmd` | Identification des covariables significatives |

---

## 📈 Principaux résultats

- **Meilleur ajustement paramétrique** : Loi Gamma ($\hat{\alpha} = 1.12$, AIC = 32 124)
- **Durée médiane** de mariage : 6 ans
- **39.8%** des individus divorcés dans le dataset

### Facteurs significatifs sur le risque de divorce (Modèle de Cox)

| Variable | Hazard Ratio | Effet |
|---|---|---|
| Violence domestique | 1.443 | ↑ +44.3% de risque |
| Infidélité | 1.270 | ↑ +27.0% de risque |
| Problèmes santé mentale | 1.174 | ↑ +17.4% de risque |
| Stress financier | 1.028 | ↑ +2.8% de risque |
| Score de confiance | 0.949 | ↓ −5.1% de risque |
| Score de communication | 0.953 | ↓ −4.7% de risque |
| Non religieux | 0.849 | ↓ −15.0% de risque |

---

## 🛠️ Stack technique

![R](https://img.shields.io/badge/R-276DC3?style=for-the-badge&logo=r&logoColor=white)
![RMarkdown](https://img.shields.io/badge/RMarkdown-276DC3?style=for-the-badge&logo=r&logoColor=white)
![GitHub Pages](https://img.shields.io/badge/GitHub%20Pages-222222?style=for-the-badge&logo=github&logoColor=white)

**Packages principaux :** `survival`, `survminer`, `fitdistrplus`, `ggplot2`, `kableExtra`, `dplyr`

---

## 📦 Données

Base de données synthétique disponible sur Kaggle :  
🔗 [Divorce Prediction Dataset](https://www.kaggle.com/datasets/vanpatangan/divorce-prediction)

---

## 👤 Auteur

**Elouan-Joris**  
Master 2 — Analyse de Survie  
🔗 [GitHub](https://github.com/Elouan-Michy)

---

## 📚 Référence

Saint Pierre, P. (2021). *Introduction à l'analyse des durées de survie*. Institut de Mathématiques de Toulouse, Université Paul Sabatier.
