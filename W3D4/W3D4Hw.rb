class Array

    def bsearch(target)
        return nil if self.length == 0 
        idx = self.length / 2
        return idx if self[idx] == target
        left = self[0...idx]
        right = self[idx + 1..-1]
        if target > self[idx]
            right_value = right.bsearch(target)
            if right_value.nil? 
                return nil
            else
                return right_value + idx + 1
            end
        else
            return left.bsearch(target)
        end
    end
end

arr = [1, 3, 4, 6, 8, 9, 11, 21, 75]
p arr.bsearch(11) # => 6 (yes)
p arr.bsearch(10) # => nil (yes)