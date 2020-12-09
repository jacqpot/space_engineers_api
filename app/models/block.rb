class Block < ApplicationRecord
    has_many :block_components
    has_many :components, through: :block_components

    scope :small, -> {self.where(size: "Small")}
    scope :large, -> {self.where(size: "Large")}
    scope :either, -> {self.where(size: "Either")}
end
