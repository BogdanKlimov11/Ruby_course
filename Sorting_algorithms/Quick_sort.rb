def quick_sort(array)
    return array if array.length <= 1
    
    pivot = array.delete_at(rand(array.length))
    less_than_pivot = []
    greater_than_pivot = []
    
    array.each do |element|
        if element <= pivot
            less_than_pivot << element
        else
            greater_than_pivot << element
        end
    end
    
    return *quick_sort(less_than_pivot), pivot, *quick_sort(greater_than_pivot)
end
