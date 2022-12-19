
    json.gifts @gifts do |gift|
        json.set! gift.id do 
            json.extract! gift, :id, :title, :description
            # json.partyId, :guestId
        end 

    end 
