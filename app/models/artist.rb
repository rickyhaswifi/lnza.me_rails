class Artist < ApplicationRecord
    has_one_attached :cover
    # extend FriendlyId
    # friendly_id :one_link, use: :slugged
end
