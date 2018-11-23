module ApplicationHelper
	def MostrarEmails(id)
	    e = []
	    emails = Email.where(fornecedor_id: id)
	    emails.each do |email| 
	      e << " #{email.email}"
	    end
	    e.join(", ")
  	end

  	def MostrarTelefones(id)
	    tel = []
	    telefones = Telefone.where(fornecedor_id: id)
	    telefones.each do |telefone| 
	      tel << "(#{(telefone.ddd)})#{telefone.numero}"
	    end
	    tel.join(", ")
  	end

  	def MostrarProdutoNome(id)
	    i = []
	    pedidos = Item.where(pedido_id: id)
	    pedidos.each do |pedido| 
	      i << " #{pedido.produto.nome}"
	    end
	    i.join(", ")
    end

end
