def counting_sort(array)
    max = array.max
    counts = Array.new(max + 1, 0)

    array.each { |num| counts[num] += 1 }

    sorted_array = []
    counts.each_with_index do |count, num|
        count.times { sorted_array << num }
    end

    sorted_array
end
