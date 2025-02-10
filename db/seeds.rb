
Restaurant.destroy_all

restaurants = [
  { name: "Le Petit Bistrot", address: "23 Rue de la Paix, Paris", phone_number: "+33145678901", category: "french" },
  { name: "La Bella Vita", address: "45 Avenue des Champs-Élysées, Paris", phone_number: "+33156789012", category: "italian" },
  { name: "Sushi Ko", address: "12 Place Vendôme, Paris", phone_number: "+33167890123", category: "japanese" },
  { name: "Le Café Belge", address: "78 Boulevard Saint-Germain, Paris", phone_number: "+33178901234", category: "belgian" },
  { name: "Dragon d'Or", address: "34 Rue du Faubourg Saint-Honoré, Paris", phone_number: "+33189012345", category: "chinese" }
].map { |attrs| Restaurant.create!(attrs) }

reviews_data = [
  [5, "Une expérience gastronomique exceptionnelle", 4, "Service impeccable", 3, "Bon rapport qualité-prix"],
  [4, "Ambiance chaleureuse", 5, "Cuisine raffinée", 4, "À refaire", 3, "Correct sans plus", 5, "Excellent !"],
  [3, "Cuisine traditionnelle bien exécutée", 4, "Belle carte des vins"],
  [5, "Une vraie découverte", 4, "Très belle présentation", 4, "Service attentionné", 5, "Extraordinaire"],
  [4, "Belle surprise", 3, "Peut mieux faire", 5, "Un régal"]
]

restaurants.each_with_index do |restaurant, idx|
  reviews_data[idx].each_slice(2) do |rating, content|
    restaurant.reviews.create!(rating: rating, content: content)
  end
end
