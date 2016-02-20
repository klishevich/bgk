module PagesHelper
  def custom_url_path page
    return '/' if page.menu_order == 1
  	return '/' + page.url if path_exists?(page.url)
    return page_path(page)
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
