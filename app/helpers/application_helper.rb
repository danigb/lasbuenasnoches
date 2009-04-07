# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def spacer
    '<div style="clear: both; width: 1px; height: 1px; font-size: 1px">&nbsp;</div>'
  end

  def timage(name)
    image_tag("web/t_#{name}.gif")
  end

  def fecha(date)
    date.strftime("%d/%m/%Y")
  end
  
end
