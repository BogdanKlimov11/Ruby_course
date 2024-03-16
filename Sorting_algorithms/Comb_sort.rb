def comb_sort(arr)
    gap = arr.length
    shrink_factor = 1.3
    sorted = false
  
    while !sorted
        gap = (gap / shrink_factor).to_i
        gap = 1 if gap < 1
        sorted = true
    
        (0..(arr.length - gap - 1)).each do |i|
            if arr[i] > arr[i + gap]
                arr[i], arr[i + gap] = arr[i + gap], arr[i]
                sorted = false
            end
        end
    end
  
    return arr
end
