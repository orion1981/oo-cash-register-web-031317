class CashRegister

	attr_accessor :discount, :total, :items

	def initialize(discount = 0)
		@total = 0
		@discount = discount
		@items = []
		@last_trans=0
	end

	def add_item(item, total, quantity = 1)
		self.total += (total * quantity)
		quantity.times do
		@items << item
		end
		@last_trans = total
	end

	def apply_discount
		if @discount == 0
			return "There is no discount to apply."
		end
		@total *= (100.0-discount)/100
		return "After the discount, the total comes to $#{@total.round}."
	end

	def void_last_transaction
		@total -= @last_trans
	end
end
