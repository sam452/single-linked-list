require 'linked_list_item'

class LinkedList
  attr_reader :first_item
  attr_reader :size

  def initialize *args
    @size = 0
  end

  def add_item(payload)
    @size += 1
    if @first_item.nil?
      @first_item = LinkedListItem.new(payload)
    else
      last_item = @first_item
      while !last_item.last?
        last_item = last_item.next_list_item
      end
      last_item.next_list_item = LinkedListItem.new(payload)
    end
  end

  def get(n)
    i = 0
    item = @first_item
    while i < n
      raise IndexError if item.nil?
      item = item.next_list_item
      i += 1
    end
    item.payload
  end

  def last
    if size == 0
      return nil
    end
    last_item = @first_item # last_item = nil
    until last_item.last?
      last_item = last_item.next_list_item
    end
    last_item.payload
  end

  def to_s
    if size == 0
      "| |"
    else
      items = []
      item = @first_item
      while item
       items << item.payload
         item = item.next_list_item
      end
      output = "| "
     output += items.join(", ")
      output += " |"
    end
  end
  
  def index(term)
    i = 0
    item = @first_item
    matches = []
    while item
      raise IndexError if item.nil?
     # else
        matches << i if item.payload == term
        item = item.next_list_item
        i += 1
    #  end # if
    end # while
    if matches.length > 1
    matches
    else
    matches[0]
    end
  end 
 
  def sort!
    list_length = self.size
    loop do
      0.upto(list_length) do |i|
      my_array = []
      self.payload[i] >> my_array
       end #do
    end #loop
    my_array
  end
 


  # ========= Bonus ========== #

  def [](payload)
  end

  def []=(n, payload)
  end

  def remove(n)
  end

end
