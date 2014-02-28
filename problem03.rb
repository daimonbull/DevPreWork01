def prime(x)
  if ( x == 1 ) 
    return false 
  end
  
  maxN = Math.sqrt(x).to_i.floor
  2.upto(maxN) do |i| 
    if ( x % i == 0 )
      return false
    end
  end
  
  return true
end

def primeFact(x)
  a = []
  i = 2
  while i <= x
    if ( x % i == 0)
      x /= i
      if ( prime(i) )
        a.push(i)
      end
    end
    
    i += 1
  end
  return a
end

puts "answer: #{primeFact(600851475143)[-1]}"
