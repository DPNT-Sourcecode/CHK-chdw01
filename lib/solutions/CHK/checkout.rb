# noinspection RubyUnusedLocalVariable
class Checkout
  SKUS = {
    'A' => 50,
    'B' => 30,
    'C' => 20,
    'D' => 15
  }

  def checkout(skus)
    return -1 unless skus.is_a?(String)

    skus.each_char.map do |sku|
      SKUS.fetch(sku, -1)
    end.reduce(:+)
  end
end


# | Item | Price | Special offers |
# +------+-------+----------------+
# | A    | 50    | 3A for 130     |
# | B    | 30    | 2B for 45      |
# | C    | 20    |                |
# | D    | 15    |



