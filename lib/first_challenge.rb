def first_challenge
  contacts = {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we", 
      favorite_icecream_flavors: ["chocolate", "vanilla", "mint chip"],
      knows: nil
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_icecream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }

  contacts["Jon Snow"][:favorite_icecream_flavors] << "mint chip"
  contacts["Jon Snow"][:address] = "The Lord Commander's Rooms, The Wall, Westeros"
  
  contacts["Freddy Mercury"].each do |attribute, value|
      if attribute == :favorite_icecream_flavors
        value.delete_if do |flavor|
          flavor == "strawberry"
        end
      end
    end
    contacts
  #your code here


  #remember to return your newly altered contacts hash!
  contacts
end

