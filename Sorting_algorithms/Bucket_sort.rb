def bucket_sort(arr)
    min_val = arr.min
    max_val = arr.max
    
    bucket_size = 5
    bucket_count = ((max_val - min_val) / bucket_size).floor + 1
    buckets = Array.new(bucket_count) { [] }
    
    arr.each do |num|
        bucket_index = ((num - min_val) / bucket_size).floor
        buckets[bucket_index] << num
    end
    
    buckets.each { |bucket| bucket.sort! }
    
    sorted_arr = buckets.flatten
    
    return sorted_arr
end
