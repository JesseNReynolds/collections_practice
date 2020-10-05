def sort_array_asc(array)
    return array.sort
end

def sort_array_desc(array)
    array.sort_by do |item|
    -item
    end
end

def sort_array_char_count(array)
    array.sort do |item1, item2|
        item1.length <=> item2.length
    end
end

def swap_elements(array)
    a1 = array[1]
    a2 = array[2]
    array[1] = a2
    array[2] = a1
    return array
end

def reverse_array(array)
    reversed = []
    i = 1
    while i - 1 < array.length
        reversed << array[-i]
        i = i + 1
    end

    return reversed
end
# for above: i is set to 1 so that it correctly captures array[-1] on the first pass.
# this means we need to adjust the loop comparison condition.
#
#   i = 0
# while i < array.length
#     reversed << array[-i - 1]
#     i = i + 1
# end
#
# also works

def kesha_maker(array)
    array.each do |word|
        word[2] = "$"
    end
end

def find_a(array)
    array.find_all do |word|
        word[0] == "a" ||  word[0] == "A"
    end
end

def sum_array(array)
    array.inject(:+)
end

def add_s(array)
    i = 0
    while i < array.length
        if i == 1
            i = i + 1
        else
            array[i] = array[i] << "s"
            i = i + 1
        end
    end
    return array
end
