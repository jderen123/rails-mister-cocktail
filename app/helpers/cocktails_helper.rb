module CocktailsHelper
  def cocktail_image(cocktail)
    if cocktail.photo.attached?
    cl_image_path(cocktail.photo.key)
  else
    cl_image_path('cdelish-halloween-cocktails-risen-from-grave_yl6q0v.png')
  end
end
end
