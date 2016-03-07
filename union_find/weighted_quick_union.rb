class WeightedQuickUnion
  attr_reader :array

  def initialize size
    @array = (0...size).to_a
    @sizes = Array.new(size, 1)
  end

  def union node1, node2
    if sizes[root(node1)] >= sizes[root(node2)]
      array[root(node2)] = root(node1)
      sizes[root(node1)] += sizes[root(node2)]
    else
      array[root(node1)] = root(node2)
      sizes[root(node2)] += sizes[root(node1)]
    end
  end

  private

  attr_reader :sizes

  def connected? node1, node2
    if root(node1) == root(node2)
      true
    else
      false
    end
  end

  def root node
    if array[node] == node
      node
    else
      root array[node]
    end
  end
end
