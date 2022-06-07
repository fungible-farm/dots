FROM elasticdotventures/ff-rust-musl-builder AS builder
# https://hub.docker.com/r/ekidd/rust-musl-builder/

# DOCKER_BUILDKIT=1 docker build -t elasticdotventures/fungiblefarm-mdbook --build-arg BUILDKIT_INLINE_CACHE=1 .
# docker buildx build --cache-to=user/app:cache .

# https://github.com/rust-lang/mdBook/wiki/Automated-Deployment%3A-GitHub-Pages
# https://github.com/elasticdotventures/fungiblefarm-mdbook/settings/pages
# https://docs.github.com/en/packages/learn-github-packages/connecting-a-repository-to-a-package

# Volume
VOLUME ["/home/rust/.cargo/git", "/home/rust/src/target"]
RUN whoami

ARG VERSION=${VERSION:-0.4.8}

#RUN cargo install mdbook --vers ${VERSION}; \
#    cargo install mdbook-toc --vers 0.2.2; \
#    cargo install mdbook-mermaid --vers 0.2.2; \
#    cargo install mdbook-presentation-preprocessor --vers 0.2.2; \
#    cargo install mdbook-plantuml --vers 0.3.0


## TODO
# * https://github.com/jontze/action-mdbook
# * https://www.npmjs.com/package/mdbook-nodejs-preprocessor-builder
# * https://lib.rs/crates/mdbook-fs-summary

#FROM miy4/plantuml

RUN cargo install mdbook --vers 0.4.8
#COPY --from=builder \
#    /home/rust/.cargo/bin/mdbook \
#    /usr/local/bin/

##
RUN cargo install mdbook-bib
#COPY --from=builder \
#    /home/rust/.cargo/bin/mdbook-bib \
#    /usr/local/bin/

##
RUN cargo install mdbook-toc 
#COPY --from=builder \
#    /home/rust/.cargo/bin/mdbook-toc \
#    /usr/local/bin/

## 
RUN cargo install mdbook-mermaid
#COPY --from=builder \
#    /home/rust/.cargo/bin/mdbook-mermaid \
#    /usr/local/bin/
RUN mdbook-mermaid install

## 

RUN cargo install svgbob_cli
#COPY --from=builder \
#    /home/rust/.cargo/bin/svgbob_cli \
#    /usr/local/bin/
RUN cargo install mdbook-svgbob
#COPY --from=builder \
#    /home/rust/.cargo/bin/mdbook-svgbob \
#    /usr/local/bin/

## 
RUN cargo install mdbook-open-on-gh
#COPY --from=builder \
#    /home/rust/.cargo/bin/mdbook-open-on-gh \
#    /usr/local/bin/


#FROM miy4/plantuml
#COPY --from=builder \
#    /home/rust/.cargo/bin/mdbook-presentation-preprocessor \
#    /usr/local/bin/
#COPY --from=builder \
#    /home/rust/.cargo/bin/mdbook-plantuml \
#    /usr/local/bin/

RUN (rm /tmp/* 2>/dev/null || true) \
    && (rm -rf /var/cache/apk/* 2>/dev/null || true)

WORKDIR /mdbook
COPY ./mdbook-demo ./

ENTRYPOINT ["/usr/local/bin/mdbook"]
CMD ["--help"]

