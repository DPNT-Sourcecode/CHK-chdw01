# noinspection RubyUnusedLocalVariable
class Checkout
  SKUS = {
    'A' => 50,
    'B' => 30,
    'C' => 20,
    'D' => 15
  }

  def checkout(skus)
    return -1 unless !skus[/[[:lower:]]|[[:alpha]]/] 
    return 0 if skus.empty?

    skus.each_char.map do |sku|
      SKUS.fetch(sku)
    end.reduce(:+)
  end
end


# | Item | Price | Special offers |
# +------+-------+----------------+
# | A    | 50    | 3A for 130     |
# | B    | 30    | 2B for 45      |
# | C    | 20    |                |
# | D    | 15    |


