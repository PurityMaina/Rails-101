# a stack is a group of elemnts presented inorder of operations

#Basic Operations 
def initialize(size)
	@size = size
	@data = Array.new(@size)
	@head = -1
end

#1.Push 
def push element
	if isFull? or element.nil?
		nil
	else
		@data << a
		@head = +1 
		@data[@head] = element
	end
end

#2. Pop
def pop element
	if isEmpty?
		nil
	else
		@popped = @data[@head]
		@head -= 1
		@popped
	end
end

#3. Peak/Top
def top
	@data[@head]
end

def size
	@size
end

private
#4. isFull
def isFull?
	@head == (@size - 1)

end
#5. isEmpty
def isEmpty?
  @head == -1
end