class Block < ApplicationRecord
    has_many :block_components
    has_many :components, through: :block_components
end
