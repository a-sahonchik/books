class Product < ApplicationRecord
  validates :title, :description, :author, :publisher, :year, :binding, :page, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :title, uniqueness: true

  has_many :line_items

  enum category: {
    "Бестселлеры" => 0,
    "Фэнтези" => 1,
    "Комиксы" => 2,
    "Обучение" => 3,
    "Бизнес" => 4,
    "Кулинария" => 5,
    "Иностранные языки" => 6,
    "Поэзия" => 7,
    "Наука" => 8,

  }

  has_many_attached :previews

  before_destroy :ensure_not_referenced_by_any_line_item

  private
  def ensure_not_referenced_by_any_line_item
    unless line_items.empty?
      errors.add(:base, 'Line Items present')
      throw :abort
    end
  end

end
