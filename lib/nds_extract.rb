require 'directors_database'
require 'pp'
# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  dir_gross = 0
  dir_index = 0 
  while dir_index < nds.length do 
    dir = nds[dir_index]
    dir_gross += gross_for_director(dir)
    dir_index += 1 
  end 
  dir_gross
end

# Find a way to accumulate the :worldwide_grosses and return that Integer  
# using director_data as input

def gross_for_director(director_data)
  total = 0
  mov_index = 0 
  
  while mov_index < director_data[:movies].length do 
    total += director_data[:movies][mov_index][:worldwide_gross]
    mov_index += 1 
  end 
  total
end









