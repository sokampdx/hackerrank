#!/usr/bin/ruby

def merge_sort(arr, size)
  merge_recursive(arr, [], 0, size - 1)
end

def merge_recursive(arr, temp, left, right)
  count = 0
  if right > left
    mid = (left + right) / 2
    count = merge_recursive(arr, temp, left, mid)
    count += merge_recursive(arr, temp, mid + 1, right)
    count += merge(arr, temp, left, mid + 1, right)
  end
  count
end

def merge(arr, temp, left, mid, right)
  count = 0
  i, j, k = left, mid, left
  while i <= mid - 1 && j <= right
    if arr[i] <= arr[j]
      temp[k] = arr[i]
      i += 1
    else
      temp[k] = arr[j]
      j += 1
      count += mid - i 
    end
    k += 1
  end

  while i <= mid - 1
    temp[k] = arr[i]
    k += 1
    i += 1
  end

  while j <= right
    temp[k] = arr[j]
    k += 1
    j += 1
  end

  (left..right).each { |i| arr[i] = temp[i] }

  count
end

test = gets.chomp.to_i

(1..test).each do 
  num = gets.chomp.to_i
  array = gets.strip.split(" ").map(&:to_i)
  chaos = false
  parity = 0

  (0...num).each do |i|
    position = i + 1

    if array[i] - position > 2
      chaos = true
      break
    end

=begin
    value = array[i] - 1
    (0...i).each { |j| value -= 1 if array[j] < array[i] }
    parity += value
=end
  end

  parity = merge_sort(array, num)

  puts chaos ? 'Too chaotic' : parity
end
