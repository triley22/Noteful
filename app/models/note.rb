class Note < ActiveRecord::Base
  belongs_to :user
  
  def preview 
    self.content.slice(0..100).concat('...(read more)')
  end

  validates :title, presence: true
  validates :content, presence: true

  scope :sorted, lambda { order('created_at DESC') }

end




