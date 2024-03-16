def shell_sort(arr)
    n = arr.length
    gap = n / 2
  
    while gap > 0
        for i in gap...n
            temp = arr[i]
            j = i
      
            while j >= gap && arr[j - gap] > temp
                arr[j] = arr[j - gap]
                j -= gap
            end
      
            arr[j] = temp
        end
    
        gap /= 2
    end
  
    return arr
end
