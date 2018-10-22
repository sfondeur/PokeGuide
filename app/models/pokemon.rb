class Pokemon < ApplicationRecord
    belongs_to :generation, optional: true
end
