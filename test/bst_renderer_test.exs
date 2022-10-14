defmodule KinoDasie.BSTRendererTest do
  use ExUnit.Case

  test "convert to markdown mermaid graph" do
    bst = Dasie.BST.new([10, 8, 12, 6, 7, 11, 13, 4, 5, 10, 14])

    result = Kino.Render.to_livebook(bst)

    assert result == {:markdown, "  ```mermaid\n  graph TB\n\tS((10))-->SL((8))\n\tS-->SR((12))\n\tSL((8))-->SLL((6))\n\tSLL((6))-->SLLL((4))\n\tSLL-->SLLR((7))\n\tSLLL((4))-->SLLLR((5))\n\tSR((12))-->SRL((11))\n\tSR-->SRR((13))\n\tSRR((13))-->SRRR((14))\n\n  ```\n"}
  end
end
