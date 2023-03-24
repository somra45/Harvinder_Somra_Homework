class Array

    def self.merge(leftarr, rightarr)
        merged = []
        until leftarr.empty? || rightarr.empty?
            if leftarr[0] > rightarr[0]
                merged << rightarr.shift
            else
                merged << leftarr.shift
            end
        end
        merged + leftarr + rightarr
    end 

    def merge_sort
        return self if self.length <= 1
        idx = self.length/2
        right = self[0...idx]
        left = self[idx..-1]
        rightarr = right.merge_sort
        leftarr = left.merge_sort
        Array.merge(leftarr, rightarr)
    end

end

# array = [3, 6, 2, 8, 4, 9, 10, 11, 15]

# p array.merge_sort

