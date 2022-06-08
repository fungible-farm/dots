
## Welcome

[http://dots.fungible.farm](http://dots.fungible.farm)

## my notes

```bash
 alias ff-rust-musl-builder='docker run --rm -it -v "$(pwd)":/home/rust/src elasticdotventures/ff-rust-musl-builder'
 ff-rust-musl-builder mdbook build
```

DOCKER_BUILDKIT=1 docker build -t elasticdotventures/fungiblefarm-dots --build-arg BUILDKIT_INLINE_CACHE=1 .
 docker buildx build --cache-to=user/app:cache .

 https://github.com/rust-lang/mdBook/wiki/Automated-Deployment%3A-GitHub-Pages
 https://github.com/elasticdotventures/fungiblefarm-mdbook/settings/pages
 https://docs.github.com/en/packages/learn-github-packages/connecting-a-repository-to-a-package



## TODO
* https://github.com/jontze/action-mdbook
* https://www.npmjs.com/package/mdbook-nodejs-preprocessor-builder
* https://lib.rs/crates/mdbook-fs-summary

cargo install mdbook
cargo install mdbook-bib
cargo install mdbook-toc mdbook-mermaid
mdbook-mermaid install

cargo install svgbob
cargo install svgbob_cli
cargo install mdbook-svgbob
cargo install mdbook-open-on-gh

https://github.com/tommilligan/mdbook-admonish



https://www.ctan.org/pkg/biblatex

{{#cite and }}

https://www.overleaf.com/learn/latex/Learn_LaTeX_in_30_minutes

\documentclass{article}

\begin{document}
First document. This is a simple example, with no 
extra parameters or packages included.
\end{document}
