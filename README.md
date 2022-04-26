# Rosetta to Morphir Tech Sprint
The goal of this tech sprint is to investigate the viability of using FINOS Morphir as a compile target for the Rosetta domain specific programming language.


## Sprint Repos
- [morphir-techsprint](https://github.com/finos-labs/morphir-techsprint)
- [rosetta-code-generators](https://github.com/finos-labs/rosetta-code-generators)

## Sprint Backlog and Kanban Board
- Backlog - https://github.com/finos-labs/morphir-techsprint/issues
- Kanban Board - https://github.com/orgs/finos-labs/projects/6
- Labels - https://github.com/finos-labs/morphir-techsprint/labels

## Sprint Discussions
- Discussions - https://github.com/finos-labs/morphir-techsprint/discussions

## The components
* Input Rosetta model
* A static Elm reflecting the same 
* Compile Rosetta to Morphir
  * Transpile Rosetta to Elm
  * Compare transpiled Elm with manually written Elm
  * Compile Elm to Morphir
* Verify with Bosque
* Transpile Morphir to Scala
* Test
  * Elm tests on generated Elm
  * Scala tests on generated Scala 
  * Morphir visualization tool interactive verification
  * Visual display of same tests (stretch goal) for non-developers

## Definition of Done
* Successful tests of the generated Elm
* Demonstration of Morphir visualization on transpiled Elm
* Successful tests of the generated Scala
* Successful execution of generated Scala in Rosetta runtime (optional)


See [FINOS Blueprints](finos-blueprint.md) for bookkeeping.

## Morphir / REGnosys Tech Sprint Sketch
![Morphir _ REGnosys Tech Sprint Sketch](https://user-images.githubusercontent.com/6029572/165322376-cd716cf0-79c5-4e51-873a-2c9917877250.png)
