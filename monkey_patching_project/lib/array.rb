# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
    def span
        if self.empty?
            return nil
        else
             self.max - self.min
        end 
    end 
    def average
         if self.empty?
            return nil
        else
             self.sum.to_f / self.size
        end 
    end 

    def median
        sorted = self.sort
        return nil if self.empty?
        if !self.size.even?
            return sorted[self.length/2]
        elsif self.size.even?
            return (sorted[self.length/2] + sorted[self.length/2-1]) / 2.to_f
        end
    end 
    
    def counts
        new_hash = Hash.new(0)
        self.each do |ele|
            new_hash[ele] += 1 
        end 
        new_hash
    end 

    def my_count(val)
        counts[val]
    end 

    def my_index(val)
        self.each_with_index do |ele,idx|
            return idx if val == ele 
        end 
        return nil
    end 

    def my_uniq
        counts.keys
    end 
    
    def my_transpose
        width = self.length
        final = Array.new(width) {Array.new([])}
        (0...width).each do |i|
            (0...width).each do |j|
                final[i][j] = self[j][i]
            end 
        end 
        return final
    end 
  



end
