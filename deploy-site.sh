#!/bin/bash
git add .
git commit -m "Deploy del sitio estático generado con MkDocs"
git push origin main
mkdocs build
mkdocs gh-deploy

