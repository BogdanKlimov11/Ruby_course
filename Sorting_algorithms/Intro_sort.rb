def intro_sort(array, depth_limit = Math.log(array.length, 2))
    intro_sort_recursive(array, 0, array.length - 1, depth_limit)
end

def intro_sort_recursive(array, low, high, depth_limit)
    if low < high
        if depth_limit == 0
            heap_sort(array, low, high)
            return
        end
    
        pivot_index = partition(array, low, high)
        intro_sort_recursive(array, low, pivot_index, depth_limit - 1)
        intro_sort_recursive(array, pivot_index + 1, high, depth_limit - 1)
    end
end

def partition(array, low, high)
    pivot = array[high]
    i = low - 1
  
    for j in low..high-1
        if array[j] <= pivot
            i += 1
            array[i], array[j] = array[j], array[i]
        end
    end
  
    array[i+1], array[high] = array[high], array[i+1]
    return i + 1
end

def heap_sort(array, low, high)
    build_max_heap(array, low, high)
    i = high
  
    while i > low
        array[low], array[i] = array[i], array[low]
        max_heapify(array, low, i - 1, 0)
        i -= 1
    end
end

def build_max_heap(array, low, high)
    i = (high - low + 1) / 2 - 1
  
    while i >= 0
        max_heapify(array, low, high, i)
        i -= 1
    end
end

def max_heapify(array, low, high, i)
    left = 2 * i + 1
    right = 2 * i + 2
    largest = i
  
    if left <= high && array[left] > array[largest]
        largest = left
    end
  
    if right <= high && array[right] > array[largest]
        largest = right
    end
  
    if largest != i
        array[i], array[largest] = array[largest], array[i]
        max_heapify(array, low, high, largest)
    end
end
