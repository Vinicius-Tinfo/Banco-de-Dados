Create database trabalho;
use  trabalho;
Create table Funcionarios(
Id_Funcionario int not null auto_increment primary key,
Nome varchar (60),
cpf int ,
Fk_loja int
);
Create table Lojas(
Id_loja int not null auto_increment primary key,
Nome varchar (50) not null,
Telefone int not null,
Endereco varchar(60) not null 
);
Create table Fornecedores(
Id_Fornecedor int not null auto_increment primary key,
Nome varchar (50) not null,
Telefone int
);
Create table Produtos(
Id_Produto int not null auto_increment primary key,
Nome varchar (40) not null,
Preco double
);
Create table Vendas(
Id_venda int not null auto_increment primary key,
Data date
);
Create table Produtos_fornecedores(
Fk_Produto int,
Fk_Fornecedor int,
primary key (Fk_Produto,Fk_Fornecedor)
);
Create table lojas_vendas(
Fk_loja int,
FK_venda int,
primary key (Fk_loja,FK_venda)
);
Create table Produtos_vendas(
Fk_Produto int,
FK_venda int,
Quantidade int,
primary key (Fk_Produto,Fk_venda)
);
Create table Produtos_loja(
Fk_Produto int,
FK_loja int,
primary key (Fk_Produto,Fk_loja)
);
ALTER TABLE funcionarios
add foreign key (Fk_loja) references lojas(id_loja);
alter table Produtos_loja
add foreign key (Fk_Produto) references Produtos(id_Produto),
add foreign key (Fk_loja) references lojas(id_loja);
alter table produtos_vendas
add foreign key (Fk_Produto) references Produtos(id_Produto),
add foreign key (Fk_venda) references vendas(id_venda);
alter table lojas_vendas
add foreign key (Fk_loja) references lojas(id_loja),
add foreign key (Fk_venda) references vendas(id_venda);
alter table Produtos_fornecedores
add foreign key (Fk_Produto) references Produtos(id_Produto),
add foreign key (Fk_Fornecedor) references Fornecedores(id_Fornecedor);
INSERT INTO funcionarios (Nome,cpf)
values('jose','01234567890');
INSERT INTO funcionarios (cpf,nome)
values(01234567891,"Andre Nascimento");
INSERT INTO funcionarios (cpf,nome)
values(01234567892,"Maria Eduarda");
INSERT INTO lojas (nome,telefone,endereco)
values("Software New",123456789,"Rua Dagmar Jr, 1850");
INSERT INTO lojas (nome,telefone,endereco)
values("Hardware New",987654321,"Rua Edgar Romero, 150");
INSERT INTO lojas (nome,telefone,endereco)
values("Infor New",012345678,"Rua 25 de agosto,25");
INSERT INTO fornecedores (Nome,Telefone)
values("Julia peças",012121212);
INSERT INTO fornecedores (Nome,Telefone)
values("Cristian Hds ",034343434);
INSERT INTO Produtos (Nome,Preco)
values("Capas",1.00);
INSERT INTO Produtos (Nome,Preco)
values("Hd",30.00);
INSERT INTO Produtos (Nome,Preco)
values("Memoria Ram",40.00);
INSERT INTO Produtos (Nome,Preco)
values("Cabos",0.50);
INSERT INTO Produtos (Nome,Preco)
values("adaptador",2.00);
/* FEITO POR ARYANNA E VINICIUS*/