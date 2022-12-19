json.partial! @guest, partial: 'guest', as: :guest 


json.gifts @guest.gifts do |gift|
    json.title gift.title
    json.description gift.description
    json.party gift.party 
end 
