# Techniques d'agencement d’interface digitale
<Hr />

<div class="flex justify-center h-3/5 p-4 mt-4">
  <img src="/images/responsive-illustration.jpg" alt="Illustration responsive: https://www.usabilis.com/responsive-web-design-site-web-adaptatif" class="!border-0"/>
</div>

---

<Breadcrumbs />

## Desktop first vs mobile first
<Hr />

<div class="flex gap-10">

<div>

Mobile: **63.92%**
</div>

<div>

Desktop: **36.08%**
</div>
</div>

<div class="flex justify-center h-3/5 p-4">
  <img src="/images/desktop-mobile-chart.png" alt="Part du mobile vs le desktop: https://gs.statcounter.com/platform-market-share/desktop-mobile/worldwide/#monthly-201202-202402"/>
</div>

<div class="text-center text-sm -mt-5">

Source: [GlobalStats statcounter](https://gs.statcounter.com/platform-market-share/desktop-mobile/worldwide/#monthly-201202-202402)
</div>



---

<Breadcrumbs />

## Static layout
<Hr />

Dans cet agencement, le site web est englobé dans un "conteneur" programmé de manière statique avec une largeur (et hauteur) fixe en pixels.

<v-click>
<div class="flex justify-center h-3/5 mt-8">
  <img src="/images/static-layout.gif" alt="Animation site statique: https://product-alpaca.medium.com/so-what-exactly-is-the-difference-between-fixed-fluid-adaptive-and-responsive-layouts-and-why-3773272d8481" class="!border-0"/>
</div>
</v-click>

---

<Breadcrumbs />

<br />
<v-clicks>

* 👍 Contrôle total de l'apparence de l'interface.
* 👍 Développement rapide
* 👎 Dépendance totale aux dimensions initiales.
</v-clicks>

<v-click>
<div class="flex justify-center h-2/5 mt-8">
  <img src="/images/tableau-bord-train.webp" alt="Tableau de bord de train: https://fr.dreamstime.com/photos-images/tableau-de-bord-de-train.html"/>
</div>
</v-click>

---

<Breadcrumbs />

## Fluid design
<Hr />

Avec un agencement fluide, les tailles ne sont plus spécifiés en valeur statique, mais en **valeur relative** (`%`, `em`, `vw`, `calc()`, ...). 

<v-click>
<div class="flex justify-center h-3/5 mt-8">
  <img src="/images/fluid-layout.gif" alt="Animation site fluid: https://product-alpaca.medium.com/so-what-exactly-is-the-difference-between-fixed-fluid-adaptive-and-responsive-layouts-and-why-3773272d8481" class="!border-0"/>
</div>
</v-click>

---

<Breadcrumbs />

<br />
<v-clicks>

* 👍 Si la taille de l'écran change, la proportion des éléments restera la même.
* 👍 L'agencement peut s'adapter en fonction des paramètres de l'utilisateur.
* 👎 Les conceptions de largeur fluide ne sont pas non plus à l'abri des cas extrêmes.
* 👎 Les images et textes sont difficiles à mettre à l'échelle.
</v-clicks>

---

<Breadcrumbs />

## Adaptive design
<Hr />

L'agencement adaptatif signifie qu'il existe plusieurs versions de la mise en page qui sont affichées en fonction de la taille de l'écran de l'utilisateur.

<v-click>
<div class="flex justify-center h-3/5 mt-8">
  <img src="/images/adaptive-layout.gif" alt="Animation site adaptatif: https://product-alpaca.medium.com/so-what-exactly-is-the-difference-between-fixed-fluid-adaptive-and-responsive-layouts-and-why-3773272d8481" class="!border-0"/>
</div>
</v-click>

---

<Breadcrumbs />

<v-clicks>

* 👍 Certitude que l'utilisateur bénéficiera d'une expérience optimale.
* 👍 Le serveur envoie exactement le contenu qui doit être chargé -> chargement rapide de la page.
* 👎 Chaque agencement doit être conçu et développé individuellement.
</v-clicks>

<div class="flex justify-center h-3/4 gap-4">
<v-clicks>
  <img src="/images/dashboard-big.png" alt="UI pour grand écran: https://bst.icons8.com/wp-content/uploads/2020/03/dashboard-design-concept.png" />
  <img src="/images/dashboard-small.png" alt="UI pour petit écran: https://bst.icons8.com/wp-content/uploads/2020/03/dashboard-design-concept.png" />
</v-clicks>
</div>

---

<Breadcrumbs />

## Responsive design
<Hr />

<div class="text-sm">
L'agencement responsive prend le meilleur des deux mondes de l'agencement fluide et adaptatif.

Il existe plusieurs points de rupture, qui divisent toutes les tailles d'écran possibles en tranches. L'interface a une présentation légèrement (ou complètement) différente selon la taille de l'écran sur lequel elle est visualisée.
</div>

<v-click>
<div class="flex justify-center h-3/5 mt-8">
  <img src="/images/responsive-layout.gif" alt="Animation site responsive: https://product-alpaca.medium.com/so-what-exactly-is-the-difference-between-fixed-fluid-adaptive-and-responsive-layouts-and-why-3773272d8481" class="!border-0"/>
</div>
</v-click>

---

<Breadcrumbs />

<br />
<v-clicks>

* 👍 SEO (Search Engine Optimization) friendly
* 👍 Maintenance faible car il n'existe qu'une version de l'interface pour toutes les tailles d'écran.
* 👎 Contenu du site moins optimisé et donc potentiellement plus lent.
* 👎 Développement plus long avec une courbe d'apprentissage élevée.
</v-clicks>

<v-click>
<div class="mt-10 bg-yellow-100 border border-yellow-400 text-yellow-700 px-4 rounded relative text-sm" role="alert">

🎯 De nos jours, les mises en page responsive sont quasiment un standard pour toutes interfaces web.
</div>
</v-click>
