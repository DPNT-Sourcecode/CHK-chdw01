# noinspection RubyUnusedLocalVariable
class Checkout
  # SKUS = ['A', 'B', 'C', 'D']

  PRICES = {
    'A' => 50,
    'B' => 30,
    'C' => 20,
    'D' => 15
  }

  PROMOS = {
    'AAA' => 130,
    'BB' => 45
  }

  def checkout(skus)
    return -1 unless !skus.match(/[^A-Z]/)
    return 0 if skus.empty?

    total = 0

    sku_counts = skus.each_char.each_with_object(Hash.new(0)) do |sku, hash|
      hash[sku] += 1
    end

    sku_counts.map do |sku, count|
      if sku == 'A'
        a_promos = count / 3
        a_normal = count % 3

        PROMOS['AAA'] * a_promos + PRICES[sku] * a_normal
      elsif sku == 'B'
        b_promos = count / 2
        b_normal = count % 2
        PROMOS['BB'] * b_promos + PRICES[sku] * b_normal
      else
        PRICES[sku] * count
      end

    end.reduce(:+)
  end
end


# | Item | Price | Special offers |
# +------+-------+----------------+
# | A    | 50    | 3A for 130     |
# | B    | 30    | 2B for 45      |
# | C    | 20    |                |
# | D    | 15    |
