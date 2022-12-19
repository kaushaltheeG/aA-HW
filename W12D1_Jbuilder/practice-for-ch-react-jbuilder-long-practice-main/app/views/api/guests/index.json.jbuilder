# json.array! @guests, :name, :age, :favorite_color
#partial: 'guest', as: :guest 
json.array! @guest do |guest|
    next unless guest.age.between?(40,50)
    json.partial! "api/guests/guest", guest: guest
end 