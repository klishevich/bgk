class Page < ActiveRecord::Base
  validates :title, presence: true
  validates :h1, presence: true
  validates :menu_order, presence: true
  validate :no_other_home_page

  def no_other_home_page
    if Page.where(menu_order: 1).count == 1 and self.menu_order == 1
      errors.add(:menu_order, :home_page_exists)
    end
  end  
end
