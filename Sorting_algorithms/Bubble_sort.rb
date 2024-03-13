def bubble_sort(arr)
    n = arr.length
    for i in 0..n-2
        swapped = false
        for j in 0..n-i-2
            if arr[j] > arr[j + 1]
                arr[j], arr[j + 1] = arr[j + 1], arr[j]
                swapped = true
            end
        end
        break unless swapped
    end
    arr
end
