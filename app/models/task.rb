class Task < ApplicationRecord
    validates :title, presence: true,
                    length: { minimum: 3 },
                    uniqueness: { case_sensitive: false }
end
