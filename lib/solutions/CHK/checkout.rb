# noinspection RubyUnusedLocalVariable
class Checkout
  SKUS = {
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

    a_count = skus.count('A')
    a_promos = a_count / 3
    a_normal = a_count % 3

    total += PROMOS['AAA'] * a_promos
    total += SKUS['A'] * a_normal

    b_count = skus.count('B')
    b_promos = b_count / 2
    b_normal = b_count % 2

    total += PROMOS['BB'] * b_promos
    total += SKUS['B'] * b_normal

    total
  end
end


# | Item | Price | Special offers |
# +------+-------+----------------+
# | A    | 50    | 3A for 130     |
# | B    | 30    | 2B for 45      |
# | C    | 20    |                |
# | D    | 15    |



