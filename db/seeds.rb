User.create!(email: "abc@gmail.com", password: "azerty", firstname:"Landers", lastname:"Franck", telephone:"66882020")

(1..5).each do |x|
    User.create!(email: "abc#{x}@gmail.com", password: "azerty#{x}", firstname:"Firstname#{x}", lastname:"Lastname#{x}", telephone:"6688202#{x}")

    Salle.create(name: "Salle#{x}")

    Material.create(name: "Material#{x}")

    Formation.create(libelle: "Formation#{x}", user_id: User.last.id)

    Planning.create(user_id: User.last.id, salle_id: Salle.last.id, formation_id: Formation.last.id, material_id: Material.last.id)
end
