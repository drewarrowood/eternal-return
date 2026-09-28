# Self-Certifying Return

A short note separating three readings of “return”:

1. **ε-Return.** Poincaré recurrence: in a measure-preserving system of finite measure, almost every point of a positive-measure set returns to that set infinitely often, and in a separable metric space almost every point returns to every neighborhood of itself.
2. **What arithmetic can say.** A recursively axiomatized extension \(S\) of Peano arithmetic talks about a continuous state through codes. The predicates are equality of codes and coded neighborhood membership.
3. **Self-certification.** A configuration that encodes \(S\), or a proof in \(S\), is handled with a standard proof predicate \(\Box = \mathrm{Prov}_S\), Gödel’s second theorem, Löb’s theorem, and the provability logic GL. \(\Box A \to A\) is not a theorem of GL.

Undecidability of “does configuration \(C\) recur?” for Turing configurations is recorded as a separate halting reduction. It is a fact about the decision problem.

This is packaging. The note does not claim a new incompleteness theorem or a new recurrence theorem. Incompleteness of \(S\) neither refutes Poincaré recurrence nor supports it. ε-Return is not Nietzsche’s demand, in *The Gay Science* §341, to will an identical life. Gödel’s 1949 rotating universes are a different construction and are not used as a lemma.

The table review at the repository root is the companion piece. This note fixes the quantifiers.

## Rebuild

Requirements: `pdflatex` and `bibtex` (TeX Live with `latex`, `amsmath`, `amsthm`, `natbib`, `booktabs`, `hyperref`, `microtype`).

From this directory:

```sh
chmod +x build.sh
./build.sh
```

The script runs `pdflatex`, `bibtex`, and `pdflatex` twice more, and writes `main.pdf`.

Equivalent manual sequence:

```sh
pdflatex -interaction=nonstopmode main.tex
bibtex main
pdflatex -interaction=nonstopmode main.tex
pdflatex -interaction=nonstopmode main.tex
```

Auxiliary files (`.aux`, `.log`, `.bbl`, `.blg`, `.out`) are gitignored. `main.pdf` is committed so the note can be read without a TeX install. Rebuild after any change to `main.tex` or `refs.bib`.
