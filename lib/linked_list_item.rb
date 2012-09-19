class LinkedListItem
  attr_reader :next_list_item
  attr_reader :payload

  def initialize( payload )
    @payload = payload
  end

  def next_list_item= (linked_list_item)
    raise ArgumentError if linked_list_item == self
    @next_list_item = linked_list_item
  end

  def last?
    @next_list_item.nil?
    # or:
    # !@next_list_item
    # or:
    # @next_list_item ? false : true
    # or:
    # if @next_list_item
    #   false
    # else
    #   true
    # end
  end
end