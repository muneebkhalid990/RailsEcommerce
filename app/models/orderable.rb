class Orderable < ApplicationRecord
  # before_action :sign_in_user, only: %i[index show new create]
  belongs_to :product
  belongs_to :cart


  def total
    product.price * quantity
  end
end
