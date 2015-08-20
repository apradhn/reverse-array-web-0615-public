class Array
  def my_reverse
    self.size.even? ? right_idx = self.size / 2 : right_idx = (self.size / 2) + 1
    left_idx = (self.size / 2) - 1
    loop do 
      right_val = self[right_idx]
      left_val = self[left_idx]
      self[right_idx] = left_val
      self[left_idx] = right_val
      break if left_idx == 0
      right_idx += 1
      left_idx -= 1 
    end
    self
  end
end