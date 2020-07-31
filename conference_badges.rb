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
  assign_rooms(attendees).each do |x|
    puts x
  list_of_badges_and_room_assignments = []
  list_of_welcome_messages.each do |w_message|
    list_of_badges_and_room_assignments << batch_badge_creator(attendees)
    list_of_badges_and_room_assignments << assign_rooms(attendees)
  end
  puts list_of_badges_and_room_assignments
end
