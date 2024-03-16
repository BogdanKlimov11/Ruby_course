def sift_down(array, start, count)
    root = start
  
    loop do
        child = 2 * root + 1
        break if child >= count
    
        child += 1 if child + 1 < count && array[child] < array[child + 1]
    
        if array[root] < array[child]
            array[root], array[child] = array[child], array[root]
            root = child
        else
            break
        end
    end
end

def smooth_sort(array)
    count = array.length
  
    (count - 1).downto(0) do |i|
        sift_down(array, i, count)
    end
  
    (count - 1).downto(1) do |i|
        array[0], array[i] = array[i], array[0]
        sift_down(array, 0, i)
    end
  
    array
end
