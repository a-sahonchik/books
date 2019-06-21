class Product < ApplicationRecord
  validates :title, :description, :author, :origtitle, :serie, :publisher, :year, :binding, :page, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :title, uniqueness: true

  has_many :line_items

  has_many_attached :previews

  before_destroy :ensure_not_referenced_by_any_line_item

  def self.search(query)
  __elasticsearch__.search(
    {
      query: {
        multi_match: {
          query: query,
          fields: ['title', 'author']
        }
      }
    }
  )
end

  private
  def ensure_not_referenced_by_any_line_item
    unless line_items.empty?
      errors.add(:base, 'Line Items present')
      throw :abort
    end
  end

end
