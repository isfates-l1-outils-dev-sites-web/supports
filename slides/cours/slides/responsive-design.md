# Responsive Design
<Hr />

Le Responsive Web Design, ou RWD, est une approche de la conception qui prend en compte l'ensemble des appareils et leur taille, permettant une **adaptation automatique** à l'écran.

Le contenu peut donc être visualisé sur une tablette, un téléphone, une télévision ou même une montre.

<div class="flex justify-center h-2/4 mt-4">
  <img src="/images/responsive-screen-illustration.png" alt="Illustration responsive: https://www.50a.fr/0/responsive-design" class="!border-0"/>
</div>

---

<Breadcrumbs />

## Un peu d'histoire
<Hr />

En **2010**, [Ethan Marcotte](https://alistapart.com/author/emarcotte/), initie le terme *Responsive Web Design* dans un article du même nom. 

<v-clicks>

À l'époque, la recommandation était d'utiliser les CSS **float** pour la mise en page et les **media queries** pour connaître la largeur du navigateur, en créant des mises en page pour différents **breakpoints**.

<div class="flex justify-center h-3/5">
  <img src="/images/css3.png" alt="Avancée de la spécification CSS3: https://fr.wikipedia.org/wiki/Feuilles_de_style_en_cascade#/media/Fichier:CSS3_taxonomy_and_status_by_Sergey_Mavrody.svg" class="!border-0"/>
</div>
</v-clicks>

---

<Breadcrumbs />

CSS3 a énormement évolué depuis et mets à disposition une multitude de fonctionnalités intégrées aux plateformes web qui facilitent la conception de sites réactifs:

<br />

<v-clicks>

* Les Media Queries
* Le modèle de boîte CSS (flexbox)
* CSS grid
</v-clicks>

---

<Breadcrumbs />

## Redimensionner une interface Web
<Hr />

La majorité des navigateurs proposent un outils permettant de développer de manière responsive.

<v-click>
<div class="flex justify-between">
<div>

**Pour Chromium et Firefox**:

* Ouvrez l'inspecteur: Click droit sur la page > Inspect
* Utilisez le **device toolbar**
</div>

<div class="flex justify-center w-80">
  <img src="/images/chrome-inspector.png" alt="Chrome inspector" class="!border-0"/>
</div>
</div>
</v-click>

<v-click>

**Pour Safari**:

* Activer le mode développeur: Safari > Settings > Advanced > **Show features for developers**
* Depuis Safari allez dans le menu Develop > Enter Responsive Design Mode
</v-click>

---

<Breadcrumbs />

**À vous de jouer:** Rendez-vous sur le site de l'ISFATES https://www.dfhi-isfates.eu/de, puis **redimensionnez son interface** pour la consulter au format **mobile**, **tablette**, **ordinateur** et enfin **fluide**.


---

<Breadcrumbs />

## Media Queries
<Hr />

Les media queries nous permettent d'effectuer une série de tests (largeur de l'écran, résolution, préférences de l'utilisateur) et d'appliquer du CSS de manière sélective pour styliser la page en fonction des besoins de l'utilisateur.

<br />

<v-click>

```css
@media screen and (min-width: 80rem) {
  .container {
    margin: 1em 2em;
  }
}
```
</v-click>

---

<Breadcrumbs />

<div  class="!text-sm">

**À vous de jouer:** Dans le repo [<mdi-github /> isfates-l1-outils-dev-sites-web/exercises](https://github.com/isfates-l1-outils-dev-sites-web/exercises), ouvrez dans votre IDE l'exercice **media-query**. Rendez cette interface responsive en respectant les instructions suivantes:

<v-clicks depth="2">

* **screen width > 60rem**:
  * Le contenu doit être centré en respectant une marge de 10% de la largeur de l'écran.
  * Les blocks `nav`, `article` et `aside` doivent être alignés horizontalement.
* **screen width ⩽ 60rem**:
  * Lec contenu ne doit prendre toute la largeur possible.
  * Le blocks `aside` disparait de l'écran.
  * Les blocks `nav` et `article` sont alignés verticalement et prennent toute la largeur disponible.
</v-clicks>
</div>


<v-click>
<div class="flex gap-5 justify-center mt-7">
  <img src="/images/media-query-exercice-small.png" alt="Interface petit écran" class="!border-black h-40"/>
  <img src="/images/media-query-exercice-big.png" alt="Interface grand écran" class="!border-black h-30"/>
</div>
</v-click>

<!--

* aside: partie d'un document dont le contenu n'a qu'un rapport indirect avec le contenu principal du document
* article: composition autonome dans un document, une page, une application ou un site

Réponse:

```css
body {
  margin: 0 10vw;
}

@media screen and (max-width: 60rem) {
  .column {
    width: 100%;
  }

  body {
    margin: 0;
  }

  aside {
    display: none;
  }
}
```
-->

---

<Breadcrumbs />


Les media queries peuvent être utiles pour réaliser un layout responsive, mais elles ne sont pas obligatoires. Ainsi, lorsqu'il s'agit d'aligner un contenu de manière plus complexe, des outils plus spécifiques sont nécessaires.

<div class="flex justify-center h-2/5">
  <img src="/images/complex-layout.png" alt="Layout complexe: https://pingback.com/gabcodes/css-flexbox-como-posicionar-elementos-na-tela"/>
</div>

---

<Breadcrumbs />

## Flexbox
<Hr />

Le module de disposition des boîtes flexibles CSS (CSS Flexible Box Layout) est un module de CSS qui définit un **modèle de boîtes** optimisé pour la conception des interfaces utilisateurs. 

En utilisant le modèle des boîtes flexibles, les éléments d'une conteneur flexible peuvent être disposés dans n'importe quelle direction et étendre ou réduire leurs dimensions pour éviter de dépasser en dehors de l'élément parent.

<v-click>
<Link to="https://css-tricks.com/snippets/css/a-guide-to-flexbox" target="_blank" class="inline-block !mt-10 text-large">

<mdi-open-in-new /> Flexbox Cheatsheet by CSS-TRICKS
</Link>
</v-click>


---

<Breadcrumbs />

**À vous de jouer:** Dans le repo [<mdi-github /> isfates-l1-outils-dev-sites-web/exercises](https://github.com/isfates-l1-outils-dev-sites-web/exercises), ouvrez dans votre IDE l'exercice **flexbox-layout**. Réalisez, à l'aide des **propriétés flexbox**, cette interface responsive:

<v-click>
<div class="flex gap-5 justify-center">
  <div>
  <p class="text-sm !m-0 fw-bold">screen width ⩽ 30rem</p>
  <img src="/images/flexbox-exercice-xxs.png" alt="Interface grand écran" class="!border-black h-55"/>
  </div>
  <div>
  <p class="text-sm !m-0 fw-bold">screen width ⩽ 60rem</p>
  <img src="/images/flexbox-exercice-small.png" alt="Interface petit écran" class="!border-black h-55"/>
  </div>
  <div>
  <p class="text-sm !m-0 fw-bold">screen width > 60rem</p>
  <img src="/images/flexbox-exercice-big.png" alt="Interface petit écran" class="!border-black h-55"/>
  </div>
</div>
</v-click>

<v-click>
<div class="mt-7 bg-yellow-100 border border-yellow-400 text-yellow-700 px-4 py-3 rounded relative text-xs" role="alert">

<mdi-bulb /> Pour l'espacement entre les boites, regardez voir la propriété [`gap`](https://developer.mozilla.org/en-US/docs/Web/CSS/gap). [`flex-grow`](https://developer.mozilla.org/en-US/docs/Web/CSS/flex-grow) et [`flex-basis`](https://developer.mozilla.org/en-US/docs/Web/CSS/flex-basis) vont vous aider pour définir les tailles des boites. [`flex-wrap`](https://developer.mozilla.org/en-US/docs/Web/CSS/flex-wrap) s'avère utile pour les retours à la ligne. **Utilisez des classes CSS!**
</div>
</v-click>

<!--
Solution:

```html
  <div class="f-container columns" style="height: 100vh;">
    <div class="f-container column" style="flex-direction: column;">
      <div class="box"></div>
      <div class="f-container columns" style="flex-grow: 3;">
        <div class="f-container column-depth-2" style="flex-direction: column; ">
          <div class="box"></div>
          <div class="box"></div>
        </div>
        <div class="box"></div>
      </div>
    </div>

    <div class="f-container column" style="flex-direction: column;">
      <div class="f-container">
        <div class="box"></div>
        <div class="box"></div>
      </div>
      <div class="f-container" style="flex-direction: column; flex-grow: 0;">
        <div class="box" style="flex-grow: initial;">
          Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
          labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
          aliquip ex ea commodo consequat.
          Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
          labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
          aliquip ex ea commodo consequat.
          Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
          labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
          aliquip ex ea commodo consequat.
        </div>
        <div class="box">
          Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
          labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
          aliquip ex ea commodo consequat.
        </div>
      </div>
    </div>
  </div>
```

```css
body {
  background-color: grey;
  margin: 0 10vw;
}

.f-container {
  display: flex;
  gap: 1rem;
  flex-grow: 1;
}

.column {
  flex-basis: 50%;
}

@media screen and (max-width: 60rem) {
  body {
    margin: 0;
  }

  .columns {
    flex-wrap: wrap;
  }

  .column {
    flex-basis: 100%;
  }
}

@media screen and (max-width: 30rem) {
  .column-depth-2 {
    flex-basis: 100%;
  }
}
```
-->

---

<Breadcrumbs />

## CSS grid
<Hr />

Grid est le tout premier module CSS créé spécifiquement pour résoudre les problèmes de mise en page que nous contournons tous depuis que nous développons des sites web.

Comme des tableaux, les grilles CSS permettent au développeur d'**aligner les éléments en colonnes et en lignes**.

<div class="flex justify-center h-3/6">
<img src="/images/grid-meme.png" alt="Meme CSS grid: https://www.reddit.com/r/ProgrammerHumor/comments/mboes0/today_i_discovered_css_grid/"/>
</div>


---

<Breadcrumbs />

<div class="grid grid-cols-2 gap-5 mt-5">
<div>

```html
<div class="wrapper">
  <div class="one">One</div>
  <div class="two">Two</div>
  <div class="three">Three</div>
  <div class="four">Four</div>
  <div class="five">Five</div>
</div>
```
<div class="flex justify-end">
<img src="/images/css-grid-example.png" alt="Exemple de layout complexe avec CSS grid: https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_grid_layout" class="!border-0 w-5/6 m-5"/>
</div>
</div>

<div class="-mt-10">

```css
.wrapper {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  grid-auto-rows: minmax(100px, auto);
}
.one {
  grid-column: 1 / 3;
  grid-row: 1;
}
.two {
  grid-column: 2 / 4;
  grid-row: 1 / 3;
}
.three {
  grid-column: 1;
  grid-row: 2 / 5;
}
.four {
  grid-column: 3;
  grid-row: 3;
}
.five {
  grid-column: 2;
  grid-row: 4;
}
```
</div>
</div>

---

<Breadcrumbs />

**À vous de jouer:** Dans le repo [<mdi-github /> isfates-l1-outils-dev-sites-web/exercises](https://github.com/isfates-l1-outils-dev-sites-web/exercises), ouvrez dans votre IDE l'exercice **grid-layout**. Réalisez, à l'aide d'une **CSS grid**, cette interface responsive en *mobile first*:

<div class="flex gap-5 justify-center">
  <div>
  <p class="text-sm !m-0 fw-bold">screen width < 60rem</p>
  <img src="/images/grid-exercice-small.png" alt="Interface grand écran" class="!border-black h-55"/>
  </div>
  <div>
  <p class="text-sm !m-0 fw-bold">screen width ⩾ 60rem</p>
  <img src="/images/grid-exercice-big.png" alt="Interface petit écran" class="!border-black h-55"/>
  </div>
</div>

<v-click>
<div class="mt-7 bg-yellow-100 border border-yellow-400 text-yellow-700 px-4 py-3 rounded relative text-xs" role="alert">

<mdi-bulb /> Pour l'espacement entre les boites, regardez voir la propriété [`gap`](https://developer.mozilla.org/en-US/docs/Web/CSS/gap). [`grid-template-areas`](https://developer.mozilla.org/en-US/docs/Web/CSS/grid-template-areas) et [`grid-area`](https://developer.mozilla.org/en-US/docs/Web/CSS/grid-area) vont vous aider pour définir les emplacements du contenu.
</div>
</v-click>

<!--
Exercice tiré de https://blogs.infinitesquare.com/posts/web/creer-une-mise-en-page-avec-css-grid-layout 🙏

Réponse:

```css
body {
  display: grid;
  gap: 1rem;
  grid-template-columns: 1fr;
  grid-template-rows: repeat(5, minmax(50px, auto));
  grid-template-areas: "logo"
    "menu"
    "main"
    "sidebar"
    "footer";
}

header {
  grid-area: logo;
}

nav {
  grid-area: menu;
}

main {
  grid-area: main;
  display: grid;
  grid-template-columns: 1fr 1fr;
  grid-auto-rows: minmax(100px, auto);
  gap: 1rem;
}

aside {
  grid-area: sidebar;
}

footer {
  grid-area: footer;
}

@media screen and (min-width: 60rem) {
  body {
    grid-template-columns: repeat(6, 1fr);
    grid-template-rows: repeat(3, minmax(100px, auto));
    grid-template-areas: "logo menu menu menu menu menu"
      "main main main main sidebar sidebar"
      "footer footer footer footer footer footer";
  }
```
-->

--- 

<Breadcrumbs />

## Flexbox vs CSS Grid
<Hr />

<v-clicks>

* **Flexbox** a été conçu pour une mise en page en **une seule dimension**, que ce soit une ligne ou une colonne.
* **CSS Gride** a été conçue pour une mise en page **bidimensionnelle**, lignes et colonnes à la fois.
</v-clicks>

<div class="grid grid-cols-2 gap-5 mt-5">
<v-clicks>
<div>

```css
.wrapper {
  display: flex;
  flex-wrap: wrap;
}
.wrapper > div {
  flex: 1 1 150px;
}
```
<img src="/images/flex-grid-example.png" alt="Exemple de layout avec flexbox" class="!border-0"/>
</div>
<div>

```css
.wrapper {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
}


‎
```
<img src="/images/grid-grid-example.png" alt="Exemple de layout avec CSS grid" class="!border-0"/>
</div>
</v-clicks>
</div>

--- 

<Breadcrumbs />

<br />

Une question simple à se poser lorsqu'il s'agit de choisir entre CSS grid et flexbox est la suivante:

<v-clicks>

* Si je dois uniquement contrôler la mise en page **par ligne ou par colonne**: utilisez **flexbox**.
* Si je dois contrôler la mise en page **par ligne et par colonne**: utilisez **CSS grid**.
</v-clicks>

<v-click>
<div class="mt-7 bg-yellow-100 border border-yellow-400 text-yellow-700 px-4 py-3 rounded relative text-xs" role="alert">

<mdi-bulb /> Les deux techniques sont complémentaires.
</div>
</v-click>
