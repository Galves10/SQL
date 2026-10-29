CREATE TABLE clientes(
	id_cliente INT PRIMARY KEY,
	nome VARCHAR(80) NOT NULL
)
CREATE TABLE categorias(
	id_categoria INT PRIMARY KEY,
	nome VARCHAR(40) NOT NULL
)
CREATE TABLE produtos(
	id_produto INT PRIMARY KEY,
	nome VARCHAR(80) NOT NULL,
	preco DECIMAL(8,2) NOT NULL,
	id_categoria INT NOT NULL,
		CONSTRAINT fk_categoria_produto
			FOREIGN KEY (id_categoria) REFERENCES categorias (id_categoria)			
)
CREATE TABLE pedidos(
	id_pedido INT PRIMARY KEY,
	data_pedido DATE NOT NULL,
	id_cliente INT NOT NULL,
		CONSTRAINT fk_cliente_pedido
			FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente)
)
CREATE TABLE item_pedidos(
	id_pedido INT PRIMARY KEY,
	id_produto INT NOT NULL,
	quantidade INT NOT NULL,
		CONSTRAINT fk_pedido_item
			FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido),
		CONSTRAINT fk_produto_item
			FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
)