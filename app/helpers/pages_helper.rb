module PagesHelper
  def custom_url_path page
  	return '/' + page.url if path_exists?(page.url)
    return page_path(page)
  end

  def custom_url_by_code_link(code, text) 
    page = Page.where(code: code).first
    if page
      # Rails.logger.info("sfasdf #{page.url}")
      return link_to(text, page) if page.url.blank?
      # Rails.logger.info("path_exists?(page.url) #{path_exists?(page.url)}")
      return link_to(text, '/' + page.url) if path_exists?(page.url)
      return link_to(text, page)
    end
    return link_to(text, '#')
  end

  private
  def path_exists?(path)
	begin
	  Rails.application.routes.recognize_path(path)
	rescue
	  return false
	end
	true
  end
end
