
<Breadcrumbs />

## Tailwindcss
<Hr />

<div class="flex justify-center h-4/5 mt-5">
  <img src="/images/tailwindcss.com.png" alt="Site web de tailwindcss"/>
</div>

<p class="text-center text-sm !mt-0">
<a href="https://tailwindcss.com/">
https://tailwindcss.com/
</a>
</p>

---

<Breadcrumbs />

### Installation
<Hr />

Tailwind CSS **analyse tous vos fichiers** HTML, composants JavaScript et autres templates à la recherche de noms de classes, **génère les styles correspondants** et les écrit dans un fichier CSS statique.

<v-click>

Cela permet de s'assurer que votre **CSS est aussi petit que possible**, et c'est également ce qui rend possible des fonctionnalités telles que les valeurs arbitraires.

* `.text-[22px]`
* `.top-[117px]`
</v-click>

<v-click>
<div class="mt-7 bg-yellow-100 border border-yellow-400 text-yellow-700 px-4 py-3 rounded relative text-xs" role="alert">

<mdi-bulb /> Là où d'autres bibliothèques peuvent inclure un grand nombre de codes supplémentaires, tailwind css ne livrera que ce qui est réellement utilisé.
</div>
</v-click>

---

<Breadcrumbs />

Tailwindcss est communément utilisé dans l'écosystème **nodejs**, et s'installe via son package manager **NPM**:

```bash
npm install tailwindcss @tailwindcss/cli
```

<v-click>

Dans le cadre de ce cours, nous utiliserons sa version CDN:

```html
<!doctype html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script src="https://unpkg.com/@tailwindcss/browser@4"></script>
  </head>
  <body>...</body>
</html>
```
</v-click>

<v-click>
<div class="text-center text-sm">

Utilisez le template **tailwind-starter** dans le repository [<mdi-github /> exercises](https://github.com/isfates-l1-outils-dev-sites-web/exercises).
</div>
</v-click>


---

<Breadcrumbs />

Dans ce cours nous utiliserons la version 4 de tailwind. Celle-ci apporte 2 grands changements à la version précédente:

<v-clicks>

* **Configuration CSS-first**: la configuration de votre projet passe du JavaScript (`tailwind.config.js`) à du CSS pure.
* **Thème utilisant des variables CSS**: Tailwind CSS v4.0 prend tous design tokens et les rend disponibles comme variables CSS par défaut.
</v-clicks>

<br />
<v-click>

```css
@import "tailwindcss";

@theme {
  --font-display: "Satoshi", "sans-serif";
  --breakpoint-3xl: 1920px;
}
```
</v-click>

---

<Breadcrumbs />

### Styliser avec des classes utilitaires
<Hr />

Avec Tailwind, vous donnez du style en combinant de nombreuses classes de présentation à usage unique (*utility classes*) directement dans votre balisage:

<v-clicks>

<div class="flex justify-center h-1/5 my-5">
  <img src="/images/tailwind-component-demo.png" alt="Composant utilisant des classes de tailwind" class="!border-0"/>
</div>

```html
<div class="mx-auto flex max-w-sm items-center gap-x-4 rounded-xl bg-white p-6 shadow-lg outline outline-black/5">
  <img class="size-12 shrink-0" src="/img/logo.svg" alt="ChitChat Logo" />
  <div>
    <div class="text-xl font-medium text-black">ChitChat</div>
    <p class="text-gray-500">You have a new message!</p>
  </div>
</div>
```
</v-clicks>

---

<Breadcrumbs />

Cette façon de concevoir les choses va à l'encontre de nombreuses bonnes pratiques traditionnelles. Elle possède néanmoins de nombreux avantages:

<v-clicks>

* **La réalisation est plus rapide**: ne perdez pas de temps à trouver des noms de classes, à prendre des décisions concernant les sélecteurs ou à passer d'un fichier HTML à un fichier CSS.
* **Les changements sont plus sûrs**: l'ajout ou la suppression d'une classe d'utilité à un élément n'affecte jamais que cet élément.
* **Votre CSS cesse de croître**: les classes utilitaires sont réutilisables, votre CSS ne continue pas à croître linéairement avec chaque nouvelle fonctionnalité que vous ajoutez à un projet.
* **La maintenance des anciens projets est facilité**: changer quelque chose signifie simplement trouver cet élément dans votre projet et changer les classes.
</v-clicks>

---

<Breadcrumbs />

Comme Bootstrap, TailwindCSS utilise des **classes avec des variants** pour appliquer des styles ciblés.

<v-click>

Pour styliser un élément sur des états tels que le survol ou le focus, **préfixez** n'importe quel classe **avec l'état** que vous souhaitez cibler:

```html
<button class="bg-sky-500 hover:bg-sky-700 ...">Save changes</button>
```
</v-click>

<br />
<v-clicks>

* **Pseudo-classes**: `:hover`, `:focus`, `:first-child` et `:required`
* **Pseudo-éléments**: `::before`, `::after`, `::placeholder` et `::selection`
* **Sélecteurs d'attributs**: `[dir=« rtl »]` et `[open]`
* **Sélecteurs enfant**: `& > *` et `& *`
* https://tailwindcss.com/docs/hover-focus-and-other-states
</v-clicks>

---

<Breadcrumbs />

### Responsive design
<Hr />

Chaque classe utilitaire de Tailwind peut être appliquée de manière conditionnelle à différents **breakpoints**, ce qui facilite la construction d'interfaces réactives complexes sans jamais quitter votre HTML.

```html
<img class="w-16 md:w-32 lg:w-48" src="..." />
```

---

<Breadcrumbs />

<div class="text-sm">

| **Breakpoint**    | **Préfixe de classe** | **Dimensions** |
|-------------------|-----------------------|----------------|
| Small             | `sm`                  | ≥40rem         |
| Medium            | `md`                  | ≥48rem         |
| Large             | `lg`                  | ≥64rem         |
| Extra large       | `xl`                  | ≥80rem         |
| Extra extra large | `2xl`                 | ≥96rem         |
</div>

<v-click>

Ces tailles sont customisable dans le thème de TailwindCSS:

```css
@theme {
  --breakpoint-xs: 30rem;
  --breakpoint-2xl: 100rem;
}
```
</v-click>

---

<Breadcrumbs />

Pour appliquer un utilitaire uniquement sur **une plage de breakpoints spécifique**, empilez un variant responsive comme `md` avec un variant `max-*`:

```html
<div class="md:max-xl:flex">
  ...
</div>
```
