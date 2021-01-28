This is a mod for the game [Factorio](https://factorio.com/).

A player wanted global counters for number of bots in all networks.

This can be done with a custom combinator and a global scan of surfaces.

![Demonstration](/images/demo1.jpg)

In this example, the combinator is producing the following values:

* N = "networks" = 2, the number of disconnected networks

* L = "logistic bots" = 56, matching sum(Y)

* M = "available logistic bots" = 55, matching sum(X)

* C = "construction bots" = 9, matching sum(T)

* D = "available construction bots" = 8, matching sum(Z)
