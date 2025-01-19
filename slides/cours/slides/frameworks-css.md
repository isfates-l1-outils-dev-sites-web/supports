# CSS frameworks
<Hr />

<div class="flex justify-center h-2/4 mt-15">
  <img src="/images/framework-illustration.png" alt="Illustration de frameworks" class="!border-0"/>
</div>

---

<Breadcrumbs />

## Introduction
<Hr />

> *"HTML et CSS sont tout autant faciles à écrire, qu'extrêmement complexes à maintenir."*
>
> &mdash; <cite>Un développeur en 2007</cite>

<br />

<v-click>

Lorsqu'il s'agit de projets importants et complexes, la manière dont vous organisez votre code est la clé de l'efficacité. Elle influe sur:
</v-click>

<v-clicks>

* l'efficacité à écrire du code
* la quantité de code à écrire 
* le temps de chargement de votre projet sur un navigateur
</v-clicks>

---

<Breadcrumbs />

Nous avons tous écrit du code CSS non maintenable...

```css
.main-content #myArticle:not(.toc) p:last-child {
  color: yellow;
}

#myForm .btn-save { background: red; }
.discard-changes-button { background: green; }
```

<v-click>

Cela se transforme rapidement en amat de:

* Règles obscures
* Mauvais noms de classe
* CSS incohérent
</v-click>


<v-clicks>
<p class="text-right !mt-10">
Travailler en équipe de cette manière peut être très chaotique...
</p>
</v-clicks>

---

<Breadcrumbs />

Très rapidement, la communauté CSS a développé différentes méthodologies pour écrire des styles **simplifiés**, **modulaires** et plus **flexibles**.

<br />

<v-clicks>

* [**OOCSS**](http://oocss.org/): Séparation du contenant et du contenu à l'aide d'*objets* CSS.
* [**SMACSS**](http://smacss.com/): Guide de style pour écrire votre CSS avec cinq catégories de règles CSS.
* [**Atomic**](https://acss.io/): Décomposition des styles en éléments atomiques, ou indivisibles.
* [**BEM**](https://getbem.com/): Approche du développement web component-based.
</v-clicks>

---

<Breadcrumbs />

### Méthodologie BEM
<Hr />

BEM vise à normaliser le nom des class CSS en les classant par **B**lock, **E**lement et **M**odifier.

<div class="text-sm">
<v-clicks>

* **Block**: Entité autonome qui a une signification en soi.
  * `header`, `container`, `menu`, `checkbox`, `input`
* **Element**: Partie d'un bloc qui n'a pas de signification autonome et qui est sémantiquement liée à son block.
  * `menu item`, `list item`, `checkbox caption`, `header title`
* **Modifier**: Indicateur placé sur un bloc ou un élément pour en modifier l'apparence ou le comportement.
  * `disabled`, `highlighted`, `checked`, `fixed`
</v-clicks>
</div>

<div class="flex justify-center mt-5 gap-5">
<v-clicks>

<div>
<p class="!m-0 text-sm font-bold">
Syntaxe de classe:
</p>

```css
.block__element--modifier {}
```
</div>

```css
/* Block component */
.btn {}

/* Element that depends upon the block */ 
.btn__price {}

/* Modifier that changes the style of the block */
.btn--orange {} 
.btn__price--big {}
```
</v-clicks>
</div>

---

<Breadcrumbs />

**À nous de jouer:** Nous devons développer le CSS pour la newsletter suivante. Quelles classes CSS devons-nous ajouter conformément à la méthodologie BEM?

<div class="grid grid-cols-2 mt-10">
  <img src="/images/bem-exercice.png" alt="Avancée de la spécification CSS3: https://fr.wikipedia.org/wiki/Feuilles_de_style_en_cascade#/media/Fichier:CSS3_taxonomy_and_status_by_Sergey_Mavrody.svg" />

```html {monaco}
<div class="newsletter">
  <h1>Newsletter</h1>
  <input type="email">
  <button>Unsubscribe</button>
  <button>Subscribe</button>
</div>
```
</div>

<!--
```html
<div class="newsletter">
  <h1 class="newsletter__title">
    Newsletter
  </h1>
  <input type="email" class="newsletter__input">
  <button class="newsletter__button">Unsubscribe</button>
  <button class="newsletter__button--primary">Subscribe</button>
</div>
```
-->

---

<Breadcrumbs />

### Qu'est-ce qu'un framework CSS?
<Hr />

Un framework CSS est une **bibliothèque préconçue** de styles CSS. Il offre aux développeurs une approche structurée pour créer des sites web réactifs, cohérents et visuellement attrayants sans avoir à partir de zéro.

<v-click>

Ces frameworks contiennent des **classes** et des **règles** CSS pré-écrites qui simplifient le processus de stylisation des pages web, réduisent le temps de développement et **facilitent le maintien d'un design-system** cohérent pour l'ensemble d'un projet.
</v-click>

<div class="grid grid-cols-2 -mt-3">

<div>
<v-click>

**Fonctionnalités majeures:**
</v-click>

<div class="text-sm">
<v-clicks>

* Système de grille
* Gestion d'un thème (couleurs, polices, espacements...)
* Conception responsive
* Utilitaires et classes d'aide
* Composants préétablis
</v-clicks>
</div>
</div>

<div>
<v-click>

**Il existe 2 grandes familles:**
</v-click>

<v-clicks>

* General Purpose frameworks
* Utility based frameworks
</v-clicks>
</div>

</div>

---

<Breadcrumbs />

<div class="flex justify-center h3/5 mt-10">
  <img src="/images/frameworks-ranking.png" alt="State of CSS 2024" />
</div>

<div class="text-center text-sm">

Frameworks utilisés par un échantillon de 10.000 développeurs. Chiffres du [2024 State of CSS](https://2024.stateofcss.com/en-US/tools/#css_frameworks).
</div>
---

<Breadcrumbs />

### General Purpose VS Utility based frameworks 
<Hr />

<div class="grid grid-cols-2 -mt-3 text-sm gap-5">
<div>
<v-click>

**General Purpose framework**

Fournit des composants pré-conçus et réutilisables, en favorisant:
</v-click>

<v-clicks>

* **Développement rapide**: Assemblez rapidement des interfaces réactives.
* **Cohérence**: Assure une uniformité de l'application grâce à des composants standard.
* **Facilité d'utilisation**: Idéal pour les développeurs qui préfèrent des composants prêts à l'emploi.
</v-clicks>

<br />
<v-click>

```html
<button
  class="btn btn-primary"
>Bootstrap Button</button>
```
</v-click>

</div>

<div>
<v-click>

**Utility based framework** 

Met à disposition des classes utilitaires pour composer des designs personnalisés permettant:
</v-click>

<v-clicks>

* **Contrôle granulaire**: Stylez les éléments avec précision sans écraser les styles.
* **Efficacité**: Réduit la nécessité d'écrire du CSS personnalisées, ce qui accélère le développement.
* **Flexibilité**: Idéal pour créer des designs uniques et personnalisés.
</v-clicks>

<br />
<v-click>

```html
<button
  class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded"
>Tailwind Button</button>
```
</v-click>
</div>

</div>

---

<Breadcrumbs />

<div class="grid grid-cols-2">
<div>

**General Purpose framework**

<ul>
<v-clicks>
<li class="list-none flex gap-5">
  <img src="/images/bootstrap-icon.png" alt="Icon Bootstrap" class="!border-0 h-20"/>

  [Bootstrap](https://getbootstrap.com/)
  <img src="https://img.shields.io/github/stars/twbs/bootstrap.svg?style=social&label=Star" alt="Bootstrap stars" class="!border-0 mt-2"/>
</li>
<li class="list-none flex gap-5">
  <img src="/images/bulma-icon.png" alt="Icon Bulma" class="!border-0 h-20"/>

  [Bulma](https://bulma.io)
  <img src="https://img.shields.io/github/stars/jgthms/bulma.svg?style=social&label=Star" alt="Bootstrap stars" class="!border-0 mt-2"/>
</li>
<li class="list-none flex gap-5">
  <img src="/images/material-icon.png" alt="Icon Material Design" class="!border-0 h-20 !rounded-full"/>

  [Material Design](https://m3.material.io/)
  <img src="https://img.shields.io/github/stars/material-components/material-components-web.svg?style=social&label=Star" alt="Bootstrap stars" class="!border-0 mt-2"/>
</li>
</v-clicks>
</ul>
</div>

<div>

**Utility based framework**

<ul>
<v-clicks>
<li class="list-none flex gap-5">
  <img src="/images/tailwind-icon.png" alt="Icon tailwind" class="!border-0 h-20"/>

  [tailwindcss](https://tailwindcss.com)
  <img src="https://img.shields.io/github/stars/tailwindlabs/tailwindcss.svg?style=social&label=Star" alt="Tailwindcss stars" class="!border-0 mt-2"/>
</li>
<li class="list-none flex gap-5">
  <img src="/images/open-props-icon.png" alt="Icon Open Props" class="!border-0 h-20 !rounded-full"/>

  [Open Props](https://open-props.style)
  <img src="https://img.shields.io/github/stars/argyleink/open-props.svg?style=social&label=Star" alt="Open Props stars" class="!border-0 mt-2"/>
</li>
</v-clicks>
</ul>
</div>
</div>

---
src: ./bootstrap.md
---

---
src: ./tailwind.md
---
