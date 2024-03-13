def insertion_sort(arr)
    n = arr.length
    (1...n).each do |i|
        key = arr[i]
        j = i - 1
        while j >= 0 && arr[j] > key
            arr[j + 1] = arr[j]
            j -= 1
        end
        arr[j + 1] = key
    end
end
