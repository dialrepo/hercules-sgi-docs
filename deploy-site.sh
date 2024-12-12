#!/bin/bash
mkdocs build
git add .
git commit -m "Deploy del sitio estático generado con MkDocs"
git push origin main
mkdocs gh-deploy

