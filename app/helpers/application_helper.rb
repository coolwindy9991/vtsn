module ApplicationHelper
  def full_title(page_title = '')
    base_title = "TTPVHK Cac Hang - Bao cao Phuc vu bay"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
  
  def my_formatted_date date_v
    date_v.strftime("%d/%m/%Y") unless date_v.nil?
  end
end
