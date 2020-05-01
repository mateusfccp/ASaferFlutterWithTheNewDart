# A safer Flutter with the new Dart

## About

This is a talk that I presented at 9th Flutterando Online Meetup, on 2020-04-30.

It was based on a article I published on medium: [Dart e Null-safety: uma alternativa funcional](https://medium.com/flutter-comunidade-br/dart-e-nnbd-9810aae37de7)

### Summary

Null-references has been a historical problem. No wonder that Tony Hoare, considered their creator, stated that its existence
and usage was the cause of massive losses, maybe to the billion dollars.

Much of the null-references issues can be solved by having a null-safe type system. Therere are many ways to accomplish it. The
Dart team decided to implement a new feature called **non-null by default**, where a type have to be explicitly stated to be
nullable.

This presentation deals with two related subjects. (1) How the new non-nullable type system of Dart works, and how it
allow us to write safer code, and (2) how to use the `Option` monad as an functional alternative to the null using its
`map` and `bind` methods as a way of composing functions.

## Project

The code presented in the presentation are located at the [`project`](https://github.com/mateusfccp/DartAndNullSafety/tree/master/project) directory.
All code and comments are written in english.

In the `lib` folder within `project` are all the files used during the presentation. All of them, with exeption of number 1,
requires Dart to use it's experimental feature `non-nullable`.

## Slides

The presentation slides are in the `slide` directory. The slides are written in brazilian portuguese. They have been written
with Beamer through org-mode. Thus, if you want to compile them, you will have to have a working LaTeX and org-mode
environment set up on your system.

The slides are using the [metropolis](https://github.com/matze/mtheme) theme. However, the precompile `.sty` files are present
in the directory, so you won't have to compile by yourself.

The precompiled slides can be found in the [releases](https://github.com/mateusfccp/ASaferFlutterWithTheNewDart/releases) page.
 
