module PagesHelper
  def custom_url_path page
  	return page.url if path_exists?(page.url)
    page_path(page)
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
