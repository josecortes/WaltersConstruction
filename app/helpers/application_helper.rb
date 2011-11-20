module ApplicationHelper

#Return at least a base title for each page to use
def title
  base_title = "Walters Construction"
  if @title.nil?
    base_title
  else
    "#{base_title} - #{@title}"
  end
end
end
