module ProductsHelper

  def product_code_achor(product) 
    code = product.code
    if !code.blank?
    	code_id = 'code_' + code.to_s
    	return content_tag(:div, nil, id: code_id)
    end
  end

  def product_code_link(text, code)
  	mylink = '/products#code_' + code
    return link_to(text, mylink)
  end

end
