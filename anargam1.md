

    def self.are_anagrams?(string_a, string_b)
      string_cmp_a = string_a
      string_cmp_b = string_b
    
      if string_cmp_a.downcase.length ==   string_cmp_b.downcase.length && string_cmp_a.chars.sort.join == string_cmp_b.chars.sort.join
        return true
      else
        return false
      end
   end
end	
