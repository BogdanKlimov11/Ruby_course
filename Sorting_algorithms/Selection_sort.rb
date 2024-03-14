def selection_sort(arr)
    len = arr.length
    for i in 0..len-2
        min_index = i
        for j in (i+1)...len
            min_index = j if arr[j] < arr[min_index]
        end
        arr[i], arr[min_index] = arr[min_index], arr[i] if i != min_index
    end
    arr
end
