def insertion_sort(arr, left, right)
    for i in left+1..right
        key = arr[i]
        j = i - 1
        while j >= left && arr[j] > key
            arr[j + 1] = arr[j]
            j -= 1
        end
        arr[j + 1] = key
    end
end

def merge(arr, l, m, r)
    len1 = m - l + 1
    len2 = r - m
    left = Array.new(len1)
    right = Array.new(len2)
    
    for i in 0..len1-1
        left[i] = arr[l + i]
    end
    for i in 0..len2-1
        right[i] = arr[m + 1 + i]
    end
  
    i = 0
    j = 0
    k = l
    
    while i < len1 && j < len2
        if left[i] <= right[j]
            arr[k] = left[i]
            i += 1
        else
            arr[k] = right[j]
            j += 1
        end
        k += 1
    end
  
    while i < len1
        arr[k] = left[i]
        i += 1
        k += 1
    end
  
    while j < len2
        arr[k] = right[j]
        j += 1
        k += 1
    end
end

def calculate_min_run(n)
    r = 0
    while n >= 64
        r |= n & 1
        n >>= 1
    end
    return n + r
end

def timsort(arr)
    n = arr.length
    min_run = calculate_min_run(n)
  
    for i in 0..n-1..min_run
        insertion_sort(arr, i, [i + min_run - 1, n - 1].min)
    end
  
    size = min_run
    while size < n
        for left in 0..n-1..2*size
            mid = left + size - 1
            right = [left + 2*size - 1, n-1].min
            merge(arr, left, mid, right)
        end
        size *= 2
    end
end
