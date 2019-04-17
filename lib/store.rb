class Store < ActiveRecord::Base
    has_many :employees

    validates :name, 
      presence: true,
      length: { minimum: 3 }


    validates :annual_revenue,
      presence: true,
      numericality: { only_integer: true, greater_than_or_equal_to: 0}

    # validate :men_or_womens_apparel

    # def men_or_womens_apparel
    #   if :mens_apparel == false && :womens_apparel == false 
    #     errors.add("Must sell men or womens apparel")
    #   end
    # end

end


#   * BONUS: Stores must carry at least one of the men's or women's apparel (hint: use a [custom validation method](http://guides.rubyonrails.org/active_record_validations.html#custom-methods) - **don't** use a `Validator` class)