module ProductsHelper
	def display_count(products, message = 'Count')
		content_tag :h2, "#{message} #{products.count}"		
	end
end