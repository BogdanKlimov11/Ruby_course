def merge(arr, left, mid, right)
    n1 = mid - left + 1
    n2 = right - mid

    L = arr[left..mid]
    R = arr[mid+1..right]

    i = 0
    j = 0
    k = left

    while i < n1 && j < n2 do
        if L[i] <= R[j]
            arr[k] = L[i]
            i += 1
        else
            arr[k] = R[j]
            j += 1
        end
        k += 1
    end

    while i < n1 do
        arr[k] = L[i]
        i += 1
        k += 1
    end

    while j < n2 do
        arr[k] = R[j]
        j += 1
        k += 1
    end
end

def merge_sort(arr, left, right)
    if left < right
        mid = (left + right) / 2
        merge_sort(arr, left, mid)
        merge_sort(arr, mid + 1, right)
        merge(arr, left, mid, right)
    end
end
