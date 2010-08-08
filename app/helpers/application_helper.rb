module ApplicationHelper
  
  def tab_link(name, url)
    css_class = 'active' if current_page?(url)
    content_tag(:li, link_to(name, url, :class => css_class))
  end
end
