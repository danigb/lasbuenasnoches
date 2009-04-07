class Content < ActiveRecord::Base
  def self.content_of(page, name)
    c = Content.find_by_page_and_name(page, name)
    return c.nil? ? Content.new : c
  end
end
