class Component < ApplicationRecord
    has_many :block_components
    has_many :blocks, through: :block_components
end
