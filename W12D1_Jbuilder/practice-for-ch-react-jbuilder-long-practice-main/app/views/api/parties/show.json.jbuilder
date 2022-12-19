json.extract! @party, :name, :location
json.guests @party.guests.map do |guest|
    json.name guest.name 
    json.gifts guest.gifts.map {|gift| gift.title}
end 