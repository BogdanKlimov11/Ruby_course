def heapify(arr, n, i)
    largest = i
    l = 2 * i + 1
    r = 2 * i + 2
  
    largest = l if l < n && arr[l] > arr[largest]
    largest = r if r < n && arr[r] > arr[largest]
  
    if largest != i
        arr[i], arr[largest] = arr[largest], arr[i]
        heapify(arr, n, largest)
    end
end
  
def heap_sort(arr)
    n = arr.length
  
    (n / 2 - 1).downto(0) do |i|
        heapify(arr, n, i)
    end
  
    (n - 1).downto(1) do |i|
        arr[0], arr[i] = arr[i], arr[0]
        heapify(arr, i, 0)
    end
end
