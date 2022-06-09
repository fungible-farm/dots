
# 🙈🙉🙊

<!-- toc -->

<!-- chapter_1.md -->

* https://github.blog/2022-02-14-include-diagrams-markdown-files-mermaid/


this is for testing & formatting the documentation generator.


{{#cite mdBook}}

\documentclass{article}

\begin{document}
First document. This is a simple example, with no 
extra parameters or packages included.
\end{document}

```admonish example
My example is the best!
```

```admonish example
My example is the best!
```

```admonish
A plain note.
```

```admonish success ""
This will take a while, go and grab a drink of water.
```


```mermaid
graph TD;
    A-->B;
    A-->C;
    B-->D;
    C-->D;
```

```bob
                                   .------------>-----------------.
       ┌-------------┐  .-.   .-.  |   ┌------┐  .-.   ┌-----┐    |    .-.   ┌------┐
  O-╮--| struct_name |-( : )-( | )-╰-╮-| name |-( : )--| tpe |--╮-╯---( | )--| body |--╭---O
    |  └-------------┘  `-'   `-'    | └------┘  `-'   └-----┘  |      `-'   └------┘  |
    |                                |                    .-.   |                      |
    |                                `------------<------( , )--'                      |
    |                                                     `-'                          |
    `----------------------------------------------------------------------------------'
```

https://docs.opencollective.com/help/contributing/documentation/style-guide

