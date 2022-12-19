
json.array! @parties do |party| 
    json.name party.name 
    json.location party.location
    json.guests party.guests.map {|guest| guest.name} 
end 