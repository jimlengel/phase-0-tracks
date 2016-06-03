def add_to_array(param1, param2)
 param1 << param2
end

p add_to_array(["b", "c", "d", 1, 2,3], "a")

def mammals(forest, beach, desert)
 geo = [forest, beach, desert]
 geo
end
p mammals("bear", false, 5)

clothing = []
 p clothing
clothing = ["jeans", "skirt", "socks", "hat", "shoes"]
 p clothing
clothing.delete_at(2)
 p clothing
clothing.insert(2, "scarf")
 p clothing
clothing.delete("jeans")
 p clothing
contain_skirt = clothing.include?("skirt")
 p "This is true, so #{contain_skirt}."

electronics = ["speakers", "TV", "computer"]

sarahroom = clothing + electronics
p sarahroom