class Quote < ApplicationRecord
  validates :saying, presence: true, length: { maximum: 140, minimum: 3 }
  validates :author, presence: true, length: { maximum: 50, minimum: 3 }
end

def create
  @quote = Quote.create(quote_params)
  if @quote.invalid?
    flash[:error] = '<strong>Could not save</strong> the data you entered is invalid.'
  end
  redirect_to root_path
end