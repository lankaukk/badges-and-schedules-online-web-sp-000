def badge_maker(name)
  return "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  list_of_badge_messages = []
  attendees.each do |name|
    list_of_badge_messages << badge_maker(name) 
  end
  list_of_badge_messages
end

def assign_rooms(attendees)
  list_of_welcome_messages =  []
  room = 1
  attendees.each do |attendee|
    list_of_welcome_messages << "Hello, #{attendee}! You'll be assigned to room #{room}!"
    room += 1
  end
  list_of_welcome_messages
end

def printer(attendees)
  batch_badge_creator(attendees).each do |y|
    puts y
  end
  assign_rooms(attendees).each do |x|
    puts x
  end

end
