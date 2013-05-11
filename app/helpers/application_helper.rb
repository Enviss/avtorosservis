# coding: utf-8
module ApplicationHelper

  def valid_title(page_title)
    base_title = "Автосервис в Самаре | АвтоРосСервис"
    if page_title.empty?
      base_title
    else
      " #{page_title} | АвтоРосСервис"
    end
  end

end

