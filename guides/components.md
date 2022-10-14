# Components

```elixir
Mix.install([
  {:kino_dasie, "~> 0.1.0"}
])
```

## Kinos

### Dasie.BST

[Binary search tree](https://en.wikipedia.org/wiki/Binary_search_tree), or BST is a common data structure with some nice characteristics. The complexity analysis of BST shows that, on average, the insert, delete and search takes O(log *n*) for *n* nodes. In the worst case, they degrade to that of a singly linked list: O(n).

The BST in Dasie is not self balancing. However `Dasie.RedBlackTree` is!

This integration automatically [renders](https://github.com/livebook-dev/kino) a [Dasie.BST](https://github.com/vorce/dasie) struct, for easy visualization.

```elixir
bst = Dasie.BST.new([10, 8, 12, 6, 7, 11, 13, 4, 5, 10, 14])
IO.inspect(bst)
```

```elixir
[10, 8, 12, 6, 7, 11, 13, 4, 5, 10, 14] |> Dasie.BST.new() |> Dasie.BST.delete(10)
```
