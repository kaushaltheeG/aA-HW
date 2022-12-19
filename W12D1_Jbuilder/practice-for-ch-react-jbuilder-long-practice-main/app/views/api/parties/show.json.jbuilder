json.partial! "api/parties/party", party: @party 
json.guests @party.guests do |guest|
    json.name guest.name 
    json.gifts guest.gifts.select {|gift| gift.title if gift.party_id == @party.id }
end 