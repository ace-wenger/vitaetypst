

<!-- Remember to edit README.qmd, not README.md -->

# vitaetypst <!-- add in graphic for package -->

<!-- badges: start -->

<!-- badges: end -->

An R package designed to automate the tedious steps of creating
application materials (a CV, cover letter, and other statements) and in
a clean, consistent, professional style. Much inspiration comes from
Mitchell O’Hara-Wild’s
[vitae](https://github.com/mitchelloharawild/vitae/) package and
Kazuharu Yanagimoto’s
[awesomecv-typst](https://github.com/kazuyanagimoto/quarto-awesomecv-typst)
Quarto extension and
[typstcv](https://github.com/kazuyanagimoto/typstcv) R package.

- **Data-driven**: Most CV contents are stored and manipulated as data
  objects, facilitating their reuse and continuous updating.
- **Reproducible**: CVs are easily updated with new formatting and/or
  contents, requiring a one-time investment of effort.
- **Flexible**: Useful templates and options resolve most needs, Quarto
  and raw Typst formatting allow the look to be further tweaked.

<!--
## Installing
&#10;## Getting Started
-->

## Roadmap

This package is under active development. Check back soon!

- [ ] 0.1.0, initial release with *awesome-cv*
  - [x] have a working minimal example of an academic CV in the classic
    *awesome-cv* style
  - [ ] modify functions to better support the classic *awesome-cv*
    style
    - [ ] `entry_detailed()` for experiences, education, etc.
    - [ ] `entry_list()` for grants, awards, service, etc.
    - [ ] `entry_publications()` to read in `.bib` files and render as
      reference list
  - [ ] modify “awesomecv” extension and template(s) to better support
    style
  - [ ] add option, “document types”, to support CV, resume, cover
    letter, and statement formats
  - [ ] tidy up for 0.1.0 release
- [ ] 0.2.0, update with *modern-cv* style
  - [ ] add *modern-cv* extension and template(s)
