def find_max(arr)
    max = arr[0]
    arr.each do |num|
        max = num if num > max
    end
    return max
end

def radix_sort(arr)
    max = find_max(arr)
    exp = 1
    while max / exp > 0
        counting_sort(arr, exp)
        exp *= 10
    end
    return arr
end

def counting_sort(arr, exp)
    n = arr.length
    output = Array.new(n)
    count = Array.new(10, 0)

    arr.each do |num|
        count[(num / exp) % 10] += 1
    end

    (1...10).each do |i|
        count[i] += count[i - 1]
    end

    i = n - 1
    while i >= 0
        output[count[(arr[i] / exp) % 10] - 1] = arr[i]
        count[(arr[i] / exp) % 10] -= 1
        i -= 1
    end

    (0...n).each do |i|
        arr[i] = output[i]
    end
end
