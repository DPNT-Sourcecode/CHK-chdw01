# noinspection RubyUnusedLocalVariable
class Checkout
  SKUS = {
    'A' => 50,
    'B' => 30,
    'C' => 20,
    'D' => 15
  }

  PROMOS = {
    'AAA' = 130,
    'BB' = 45
  }

  def checkout(skus)
    return -1 unless !skus.match(/[^A-Z]/)
    return 0 if skus.empty?

    total = 0

    a_count = skus.count('A')
    b_count = skus.count('B')

    PROMOS.each do |promo, discount|
      ordered_skus.coun
      if ordered_skus.include?(promo)
        total += discount
        ordered_skus.sub!(promo, '')
      e
    end


    step 1 count all the letters.

    step 2 apply the rule
  end
end


# | Item | Price | Special offers |
# +------+-------+----------------+
# | A    | 50    | 3A for 130     |
# | B    | 30    | 2B for 45      |
# | C    | 20    |                |
# | D    | 15    |

