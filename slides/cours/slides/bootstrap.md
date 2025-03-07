
<Breadcrumbs />

## Bootstrap
<Hr />

<div class="flex justify-center h-4/5 mt-5">
  <img src="/images/getbootstrap.com.png" alt="Site web de Bootstrap"/>
</div>

<p class="text-center text-sm !mt-0">
<a href="https://getbootstrap.com/">
https://getbootstrap.com/
</a>
</p>

---

<Breadcrumbs />

### Installation
<Hr />

<v-clicks>

* Bootstrap 5 (sortie en 2021) est la version la plus récente de Bootstrap (sortie en 2013).
* La principale différence entre Bootstrap 5 et Bootstrap 3&4 est que la librairie **jQuery n'est plus utilisée**.
</v-clicks>

<v-click>

Il est possible d'utiliser Bootstrap sans étape de build via **CDN** (**C**ontent **D**elivery **N**etwork):

```html
<!doctype html>
<html>
  <head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  </head>
  <body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  </body>
</html>
```
</v-click>

<v-click>
<div class="text-center text-sm">

Dans le repo [<mdi-github /> exercises](https://github.com/isfates-l1-outils-dev-sites-web/exercises), vous trouverez un template nommé **bootstrap-starter**.
</div>
</v-click>

---

<Breadcrumbs />

### Qu'est-ce que Bootstrap?
<Hr />

Bootstrap n'est rien de plus qu'une collection de fichiers CSS et JavaScript:

<div class="h-3/5 overflow-auto">

```txt
bootstrap/
├── css/
│   ├── bootstrap-grid.css
│   ├── bootstrap-grid.css.map
│   ├── bootstrap-grid.min.css
│   ├── bootstrap-grid.min.css.map
│   ├── bootstrap-grid.rtl.css
│   ├── bootstrap-grid.rtl.css.map
│   ├── bootstrap-grid.rtl.min.css
│   ├── bootstrap-grid.rtl.min.css.map
│   ├── bootstrap-reboot.css
│   ├── bootstrap-reboot.css.map
│   ├── bootstrap-reboot.min.css
│   ├── bootstrap-reboot.min.css.map
│   ├── bootstrap-reboot.rtl.css
│   ├── bootstrap-reboot.rtl.css.map
│   ├── bootstrap-reboot.rtl.min.css
│   ├── bootstrap-reboot.rtl.min.css.map
│   ├── bootstrap-utilities.css
│   ├── bootstrap-utilities.css.map
│   ├── bootstrap-utilities.min.css
│   ├── bootstrap-utilities.min.css.map
│   ├── bootstrap-utilities.rtl.css
│   ├── bootstrap-utilities.rtl.css.map
│   ├── bootstrap-utilities.rtl.min.css
│   ├── bootstrap-utilities.rtl.min.css.map
│   ├── bootstrap.css
│   ├── bootstrap.css.map
│   ├── bootstrap.min.css
│   ├── bootstrap.min.css.map
│   ├── bootstrap.rtl.css
│   ├── bootstrap.rtl.css.map
│   ├── bootstrap.rtl.min.css
│   └── bootstrap.rtl.min.css.map
└── js/
    ├── bootstrap.bundle.js
    ├── bootstrap.bundle.js.map
    ├── bootstrap.bundle.min.js
    ├── bootstrap.bundle.min.js.map
    ├── bootstrap.esm.js
    ├── bootstrap.esm.js.map
    ├── bootstrap.esm.min.js
    ├── bootstrap.esm.min.js.map
    ├── bootstrap.js
    ├── bootstrap.js.map
    ├── bootstrap.min.js
    └── bootstrap.min.js.map
```
</div>

<!--
* bootstrap.bundle.js: contient la lib popperjs
* bootstrap-grid.css: juste grid et flexbox
* bootstrap-reboot.css: reboot les styles du navigateur pour partir sur une base commune entre tous
-->

---

<Breadcrumbs />


<div class="flex justify-center h-1/5 mt-5">
  <img src="/images/sass-logo.png" alt="Logo de SASS" class="!border-0"/>
</div>

Bootstrap est construit avec **SASS** (Syntactically Awesome Style Sheets), un langage de script préprocesseur interprété ou compilé en CSS.

<v-click>
<div class="grid grid-cols-3 -mt-3 gap-5">

```scss
// SCSS (.scss)
nav {
  ul {
    margin: 0;
    padding: 0;
  }
  li { display: inline-block; }
  a {
    display: block;
    text-decoration: none;
  }
}
```

```sass
// SASS (.sass)
nav
  ul
    margin: 0
    padding: 0

  li
    display: inline-block

  a
    display: block
    text-decoration: none
```

```css
/* CSS (.css) */
nav ul {
  margin: 0;
  padding: 0;
}
nav li {
  display: inline-block;
}
nav a {
  display: block;
  text-decoration: none;
}
```
</div>
</v-click>

---

<Breadcrumbs />

<div class="grid grid-cols-2 gap-5">

```scss
@use 'sass:color';

$colors: (primary: blue, secondary: green, danger: red);
$font-stack: 'Arial, sans-serif';

@mixin button-style($bg-color) {
  background: $bg-color;
  color: white;
  border-radius: 5px;
  font-family: $font-stack;
  cursor: pointer;
}

@each $name, $color in $colors {
  .btn-#{$name} {
    @include button-style($color);
    &:hover {
      background: color.adjust($color,$lightness: -20%);
    }
  }
}
```

<div class="text-sm">

SASS apporte de nombreuses feature au language:

<v-clicks>

* Variables (`$...`)
* Syntaxe d'emboîtement (Nesting)
* Import (`@use`)
* Fonctions (`@mixin`)
* Héritage (`@extend`)
* Opérateurs mathématiques et boucles 
</v-clicks>

<br />
<br />

<v-click>

<mdi-open-in-new /> https://sass-lang.com/playground/
</v-click>

</div>
</div>
---

<Breadcrumbs />

### Gestion du layout
<Hr />

**Concepts fondamentaux:**
<v-clicks>

* Les **breakpoints** sont les éléments constitutifs du responsive design. Utilisez-les pour contrôler quand votre mise en page peut être adaptée à viewport ou à une taille d'appareil particulière.
* Utilisez les **media queries** pour architecturer votre CSS par breakpoints.
* **Mobile first, responsive design is the goal**. Le CSS de Bootstrap vise à appliquer le strict minimum de styles pour qu'une mise en page fonctionne au plus petit breakpoints, puis il superpose des styles pour ajuster cette conception aux appareils plus grands.
</v-clicks>

---

<Breadcrumbs />

| **Breakpoint**    | **Infixe de classe** | **Dimensions** |
|-------------------|----------------------|----------------|
| Extra small       | *None*               | <576px         |
| Small             | `sm`                 | ≥576px         |
| Medium            | `md`                 | ≥768px         |
| Large             | `lg`                 | ≥992px         |
| Extra large       | `xl`                 | ≥1200px        |
| Extra extra large | `xxl`                | ≥1400px        |

---

<Breadcrumbs />

**Bootstrap’s grid system**:

<div class="flex justify-center h-1/5 my-5">
  <img src="/images/bootstrap-grid.png" alt="Site web de Bootstrap"/>
</div>


<v-clicks>

* Le système de grille de Bootstrap utilise une série de `containers`, `rows`, and `columns` pour mettre en page et aligner le contenu.
* Il est construit avec **flexbox** et est entièrement responsive.
</v-clicks>

<div class="grid grid-cols-2 gap-5 mt-5">

<v-click>

```html
<div class="container">
  <div class="row">
    <div class="col">Column</div>
    <div class="col-6">Column</div>
    <div class="col">Column</div>
  </div>
</div>
```
</v-click>

<div>
  <v-clicks>
  <img src="/images/bootstrap-grid-example.png" alt="Exemple de grille Bootstrap" class="!border-0  !rounded-none"/>

  <div class="mt-7 bg-yellow-100 border border-yellow-400 text-yellow-700 px-4 py-3 rounded relative text-xs" role="alert">

  <mdi-bulb /> Il est possible d'emboîter une grille `.row` dans une `.col`.
  </div>
  </v-clicks>
</div>
</div>

---

<Breadcrumbs />

Il est possible d'utiliser les **breakpoints au niveau des classes** pour facilement réaliser des layouts responsives:

<v-click>

La syntaxe est la suivante: `.col-{breakpoint}-{size}`
</v-click>


<div class="grid grid-cols-2 gap-5 mt-5">

<v-click>

```html
<div class="container">
  <div class="row">
    <div class="col-12 col-md-6">...</div>
    <div class="col-12 col-md-3">...</div>
    <div class="col-12 col-md-3">...</div>
  </div>
</div>
```
</v-click>

<div class="flex flex-col items-center">
  <v-clicks>
  <img src="/images/bootstrap-grid-small.png" alt="Exemple de grille Bootstrap" class="!border-0  !rounded-none w-1/2 mb-6"/>

   <img src="/images/bootstrap-grid-big.png" alt="Exemple de grille Bootstrap" class="!border-0  !rounded-none"/>
  </v-clicks>
</div>
</div>

---

<Breadcrumbs />

Utilisez les classes responsive `.row-cols-*` pour définir rapidement le nombre de colonnes qui correspond le mieux à votre contenu et à votre mise en page:

<v-click>

```html
<div class="container">
  <div class="row row-cols-1 row-cols-md-2 row-cols-lg-4">
    <div class="col">Column</div>
    <div class="col">Column</div>
    <div class="col">Column</div>
    <div class="col">Column</div>
  </div>
</div>
```
</v-click>

<div class="flex mt-10 justify-center gap-10">
  <v-clicks>
  <div>
  
  **Default**
  <img src="/images/bootstrap-grid-col-sm.png" alt="Exemple de grille Bootstrap" class="!border-0 h-20"/>
  </div>

  <div>

  **⩾`md`**
  <img src="/images/bootstrap-grid-col-md.png" alt="Exemple de grille Bootstrap" class="!border-0 h-10"/>
  </div>
  
  <div>

  **⩾`lg`**
  <img src="/images/bootstrap-grid-col-lg.png" alt="Exemple de grille Bootstrap" class="!border-0 h-5"/>
  </div>
  </v-clicks>
</div>





---

<Breadcrumbs />

### Gestion du contenu
<Hr />

Bootstrap propose un système de classes facilitant la gestion de la typographie:

<div class="grid grid-cols-2 gap-5">
<div>

```html
<h1>h1. Bootstrap heading</h1>
<h2>h2. Bootstrap heading</h2>
<h3>h3. Bootstrap heading</h3>
<p class="h4">h4. Bootstrap heading</p>
<p class="h5">h5. Bootstrap heading</p>
<p class="h6">h6. Bootstrap heading</p>
```

<v-click>
<img src="/images/typography.png" alt="Site web de Bootstrap"  class="h-1/6 mt-5"/>
</v-click>
</div>

<div>
<v-clicks>

```html
<p class="fs-1">.fs-1 text</p>
<p class="fs-2">.fs-2 text</p>
<p class="fs-3">.fs-3 text</p>
<p class="fs-4">.fs-4 text</p>
<p class="fs-5">.fs-5 text</p>
<p class="fs-6">.fs-6 text</p>
```

<img src="/images/bootstrap-fs.png" alt="Exemple des  font sizes de Bootstrap" class="h-1/6 mt-5"/>

</v-clicks>
</div>
</div>

---

<Breadcrumbs />

### Les composants
<Hr />

L'une des principales raisons du succès de Bootstrap est sa **profusion de composants**:

<v-clicks>

* Alerts
* Card
* Modal
* Navbar
* Tooltips
* https://getbootstrap.com/docs/5.3/components
</v-clicks>


---

<Breadcrumbs />

Les composants de Bootstrap sont en grande partie construits à l'aide d'une nomenclature de **base-modifier**.


<v-click>

La syntaxe est la suivante: `.{base}-{modifier}`
</v-click>


<v-click>

```html
<button class="btn">Base button</button>
<button class="btn btn-primary">Primary</button>

<nav class="navbar navbar-expand-lg">...</nav>
```
</v-click>

<v-click>

Cependant, la syntaxe est vite simplifiée pour offrir une meilleure DX: 

```html
<ul class="nav">
  <li class="nav-item">
    <a class="nav-link active" href="...">Active</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="...">Link</a>
  </li>
</ul>
```
</v-click>

---

<Breadcrumbs />

### Les utilitaires
<Hr />

Pour des besoins plus spécifique, Bootstrap propose de nombreuse classes utilitaires (utilities):
<div class="text-sm">

* Gestion des couleurs: `.bg-primary`, `.text-danger`
* Gestion des borders: `.border`, `.border-top`, `.border-primary`, `.rounded`
* Gestion du display: `.d-block`, `.d-none`, `.d-md-flex`
* Gestion de flexbox: `.justify-content-center`, `.align-items-end`, `flex-grow-1`
* Gestion de l'opacité: `.opacity-0`, `.opacity-75`
* Gestion des espacements: `.m-0`, `.px-5`, `.mt-auto`, `.gap-3`, `.row-gap-3`, `.column-gap-3`
* Gestion du texte: `.text-center`, `.text-lg-start`, `.text-nowrap`, `.text-uppercase`, `.fw-bold`
* Gestion du contexte d'empilement: `.z-n1`, `.z-0` <mdi-arrow-right-thin /> `.z-3`
* **https://getbootstrap.com/docs/5.3/utilities**
</div>
<!--

* Sizes:
  * 0 - for classes that eliminate the margin or padding by setting it to 0
  * 1 - (by default) for classes that set the margin or padding to $spacer * .25
  * 2 - (by default) for classes that set the margin or padding to $spacer * .5
  * 3 - (by default) for classes that set the margin or padding to $spacer
  * 4 - (by default) for classes that set the margin or padding to $spacer * 1.5
  * 5 - (by default) for classes that set the margin or padding to $spacer * 3
-->

---

<Breadcrumbs />

### Exercice
<Hr />

**À vous de jouer:** Réalisez l'interface suivante en utilisant uniquement les composants, le système de grille est les utilities de Bootstrap:

<div class="flex justify-center h-4/6 -mt-2">
  <img src="/images/bootstrap-exercice.png" alt="Site web de Bootstrap" class="!border-black"/>
</div>

---

<Breadcrumbs />

**Instructions:**

<v-clicks depth="2">

* Basez-vous sur le template d'exercice **bootstrap-starter**
* L'interface devra être responsive et mobile first
* Construisez une grille de composants `card`
  * Ils devront s'aligner sur une colonne
  * En taille `md`, affichez 2 `card` par ligne
  * En taille `lg` 3 et en `xl` 4
* Une `navbar` sera visible avec le titre de l'interface
* À partir de la taille `xl`, tout le contenu de l'interface devra être centré
* La section de présentation devra être centré à partir de la taille `md`
</v-clicks>

<!--
Correction:

```html
<body class="container-xl gx-0">
  <header class="navbar navbar-dark bg-dark">
    <div class="container">
      <a href="#" class="navbar-brand d-flex align-items-center">Oh my Interface!</a>
    </div>
  </header>

  <main>
    <section class="text-md-center container py-5">
      <div class="row">
        <h1>This is a title</h1>
        <p class="lead">
          Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temporincididunt ut labore et dolore
          magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
          commodo consequat.
        <p>
          <button class="btn btn-primary">Main call to action</button>
          <button class="btn btn-secondary">Secondary action</button>
        </p>
      </div>
    </section>

    <div class="bg-light">
      <div class="container">

        <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 row-cols-xl-4 g-3">
          <div class="col">
            <div class="card shadow-sm">
              <div class="card-body">
                <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
                  temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                  ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                <div class="d-flex justify-content-between align-items-center">
                  <div class="btn-group">
                    <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                    <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                  </div>
                  <small>9 mins</small>
                </div>
              </div>
            </div>
          </div>
          <div class="col">
            <div class="card shadow-sm">
              <div class="card-body">
                <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
                  temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                  ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                <div class="d-flex justify-content-between align-items-center">
                  <div class="btn-group">
                    <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                    <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                  </div>
                  <small>9 mins</small>
                </div>
              </div>
            </div>
          </div>
          <div class="col">
            <div class="card shadow-sm">
              <div class="card-body">
                <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
                  temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                  ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                <div class="d-flex justify-content-between align-items-center">
                  <div class="btn-group">
                    <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                    <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                  </div>
                  <small>9 mins</small>
                </div>
              </div>
            </div>
          </div>
          <div class="col">
            <div class="card shadow-sm">
              <div class="card-body">
                <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
                  temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                  ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                <div class="d-flex justify-content-between align-items-center">
                  <div class="btn-group">
                    <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                    <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                  </div>
                  <small>9 mins</small>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </main>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
    crossorigin="anonymous"></script>
</body>
```
-->

---
disabled: true
---
<Breadcrumbs />

### Les formulaires
<Hr />


---

<Breadcrumbs />

### Utilisation dans l'environnement Nodejs
<Hr />

<v-clicks>

Node.js est un environnement d'exécution JavaScript gratuit, open-source et multiplateforme qui permet d'**exécuter du code JavaScript en dehors d'un navigateur web**.

Cela permet de créer des serveurs, des applications web, des outils de ligne de commande et des scripts.

<div class="flex flex-col justify-center items-center -mt-3 text-sm">
  <img src="/images/bundler-schema.png" alt="Schéma du fonctionnement d'un bundler Javascript: https://webpack.js.org/" class="w-130"/>

  Illustration du fonctionnement d'un bundler JavaScript.
</div>

</v-clicks>

---

<Breadcrumbs />

<div class="flex justify-center h-1/10 mt-10">
  <img src="/images/npm-logo.png" alt="Site web de Bootstrap" class="!border-none"/>
</div>

Le registre gratuit **npm** (**N**ode **P**ackage **M**anager) est devenu le centre du partage de code JavaScript et, avec plus de **deux millions de packages**, le plus grand registre de logiciels au monde.

<v-click>

```bash
npm install bootstrap
npm install -D sass
```
</v-click>

<br />

<v-click>

**À vous de jouer:** Dans le repo [<mdi-github /> isfates-l1-outils-dev-sites-web/exercises](https://github.com/isfates-l1-outils-dev-sites-web/exercises), ouvrez dans votre IDE le template **bootstrap-vite** et suivez les instructions du fichier `README.md`.
</v-click>

---

<Breadcrumbs />

### Gestion du theme
<Hr />

En faisant un import de Bootstrap via `SCSS`, il nous est facilement possible de s'approprier le theme:

```scss
// style.scss
$primary: green;

$grid-breakpoints: (
  xs: 0,
  sm: 576px,
  md: 768px,
  lg: 992px,
  xl: 1200px,
  xxl: 1400px
);

@import "bootstrap/scss/bootstrap";
```

---

<Breadcrumbs />

Vous pouvez consulter toutes les variables Bootstrap sous dans le fichier `SCSS`:

```bash
node_modules/bootstrap/scss/_variables.scss
```
<br />

<v-click>

**À vous de jouer:** Modifiez le theme de Bootstrap de sorte à:

* augmenter toutes les espacements (`spacer`) de 2 fois la taille originale
* définir tous les `border-radius` à `0`
* augmenter toutes les tailles de police (`font-size`) de 1.5 fois la taille originale
</v-click>

<!--
```scss
$spacer: 2rem;
$border-radius: 0rem;
$font-size-base: 1.5rem;
```
-->

---

<Breadcrumbs />

**Correction:**

```scss {monaco}
// styles.scss



@import "bootstrap/scss/bootstrap";



//# 
```

<!--
```scss
$spacer: 2rem;
$border-radius: 0rem;
$font-size-base: 1.5rem;
```
-->
