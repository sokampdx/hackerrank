def word_search(string, num)
  return (0..(string.length - num)).map { |i| string[i, num] }.uniq.select { |w| w !~ /([a-z]).*\1/ }
end

string = 'jhafeymdldyeoqnxdrisjah6dkmnmnmnmnmnetakepaiujhegafkdmyu'
n = 4
puts '-------------------'
puts word_search(string, n)

string = 'abcd'
n = 3
puts '-------------------'
puts word_search(string, n)
