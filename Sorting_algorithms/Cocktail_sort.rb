def cocktail_sort(arr)
    n = arr.length
    swapped = true
    start_index = 0
    end_index = n - 1

    while swapped
        swapped = false

        (start_index...end_index).each do |i|
            if arr[i] > arr[i + 1]
                arr[i], arr[i + 1] = arr[i + 1], arr[i]
                swapped = true
            end
        end

        break unless swapped

        swapped = false
        end_index -= 1

        (end_index.downto(start_index + 1)).each do |i|
            if arr[i] < arr[i - 1]
                arr[i], arr[i - 1] = arr[i - 1], arr[i]
                swapped = true
            end
        end

        start_index += 1
    end

    arr
end
