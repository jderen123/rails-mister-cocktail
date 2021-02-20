module CocktailsHelper
  def cocktail_image(cocktail)
    if cocktail.photo.attached?
    cl_image_path(cocktail.photo.key)
  else
    asset_path('cocktail_default.png')
  end
end
end
