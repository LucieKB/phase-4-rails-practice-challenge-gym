class Client < ApplicationRecord
    has_many :gyms
    has_many :memberships, through: :gyms

    validates :gym, uniqueness:true
end
