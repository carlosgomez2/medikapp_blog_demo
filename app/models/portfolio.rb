class Portfolio < ApplicationRecord
  has_many :technologies
  has_many_attached :images
  accepts_nested_attributes_for :technologies,
                                allow_destroy: true,
                                reject_if: lambda { |attrs| attrs['name'].blank? }

  include Placeholder
  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.angular_items
    where(subtitle: 'Angular')
  end

  scope :ruby_on_rails_items, -> { where(subtitle: 'Ruby on Rails') } 

  scope :by_position, -> { order("position ASC") }

  after_initialize :set_defaults

  def set_defaults
    self.main_image  ||= Placeholder.image_generator(height: '600', width: '400')
    self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')
  end
end
