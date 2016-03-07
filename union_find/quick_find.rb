class QuickFind
  attr_reader :array

  def initialize size
    @array = (0...size).to_a
  end

  def union node1, node2
    value_to_be_changed = array[node1]

    array.each_with_index do |value, index|
      if value == value_to_be_changed
        array[index] = array[node2]
      end
    end
  end
end

quick_find = QuickFind.new 10

quick_find.union 1, 8
quick_find.union 9, 8
quick_find.union 9, 5
quick_find.union 0, 7
quick_find.union 9, 3
quick_find.union 4, 1

quick_find.array.each do |num|
  print "#{num} "
end
puts
