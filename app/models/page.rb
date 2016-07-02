class Page < ActiveRecord::Base
  validates :title, presence: true
  validates :h1, presence: true
  validates_uniqueness_of :code, allow_nil: true
  mount_uploaders :pageimgs, PageimgUploader

end
