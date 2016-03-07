class Array
  def merge_sort
    return self if size <= 1
    mid = size / 2
    left = self[0..(mid - 1)].merge_sort
    right = self[mid..(length - 1)].merge_sort
    merge(left, right)
  end

  def merge(left, right)
    merged_array = []

    while left.any? || right.any? do
      merged_array << case
      when left.empty?
        right.shift
      when right.empty?
        left.shift
      when left.first <= right.first
        left.shift
      when left.first > right.first
        right.shift
      end
    end

    merged_array
  end
end
