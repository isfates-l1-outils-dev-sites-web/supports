# Repository des slides du cours **Outils de développement de sites web**

[Les PDFs du cours](https://github.com/isfates-l1-outils-dev-sites-web/supports/tree/pdfs)

## Développement

Chaque présentations sont situées dans le dossier [slides](./slides/) et sont un projet [slidev](https://sli.dev/).

Pour lancer une présentation en local (par exemple `git`), utilisez la commande `npx slidev ./slides/cours/slides.md`.

## Build

Utilisez une image Docker pour hoster les **PDFs** ainsi que les **slides**:

### Build de l'image

```bash
docker build -t isfates-l1-outils-dev-sites-web-supports  --progress=plain .
```

### Lancement de l'image en local

```bash
docker run -p 8080:80 --name isfates-l1-outils-dev-sites-web-supports --rm isfates-l1-outils-dev-sites-web-supports
```

Ou alors utilisez l'image déjà build:

```bash
docker run -p 8080:80 johannchopin/isfates-l1-outils-dev-sites-web-supports
```
