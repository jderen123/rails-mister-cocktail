module CocktailsHelper
  def cocktail_image(cocktail)
    if cocktail.photo.attached?
    cl_image_path(cocktail.photo.key)
  else
    cl_image_tag('hqeon9m03r0tvq6cl84uc41qezvq')
  end
end
end
