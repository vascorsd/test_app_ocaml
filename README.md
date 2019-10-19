# GUIDE

## Install tooling

Install opam with distribution package manager.

    pacman -Syu opam


Prepare environment. opam is the thing to manage multiple ocaml
versions installed. We want one working with tools.

    opam init

And follow instructions.

Don't use the ocaml-system switch by default and actually use a explicit
switch version locally managed. This is because the system ocaml version
usually has problems and also breaks the tolling when it gets automatically
updated y the distribution.

    opam switch create 4.08.1

The above is latest version that has tooling we want. We need merlin (which is the lsp thing for ocaml) but it's not available yet on 4.09.

Now install a bunch of things

    opam install utop merlin ocp-indent dune


utop is a powerfull repl.
merlin is the language server thing.
ocp-indent is what's used for formatting.
dune is the compile/build tool.

Ocaml is source based so all things are locally downloaded and compiled against the switch selected.


## Basic use of tools

Download this repo, enter folder.

    dune build

    dune exec bin/main.exe


## Use some editor

emacs seems well supported with something called tuareg.
vim seems confusing, but should work if you want that trouble.

I tried Atom and VSCode.

The extensions available for those are really really confusing and their state of working seems very random.

Seems the reason version of integration sohuld be working but it always gave errors
to me saying ocaml version not working or supported. Anyway I believe those are useful for reason community.

Anyway for Atom I was able to make the following working:
  - build-dune
  - language-ocaml-fix
  - ocaml-indent
  - ocaml-merlin

Haven't tried much, but at least doesn't seem broken.

For VSCode:
  - Dune - maelvalais.dune
  - OCaml and Reason IDE - freebroccolo.reasonml

The others, specially the one said in the freebroccolo.reasonml to use instead of itself is not working for me.

Supposedly there's an Intellij plugin based on the same codebase of the plugins above that is not working for me, so I haven't tried it.


## Some other info

Don't recommend using dune init, it seems to generate too much confusing stuff
for a begginer to understand.

Each new folder with code needs to have a dune file inside of it the describe it.

A folder named lib with a proper dune file, can the be referenced in another place
if it's listed in the libraries setting of another dune file. On the code it gets
camel converted and it's functions is avaiable as "Lib".