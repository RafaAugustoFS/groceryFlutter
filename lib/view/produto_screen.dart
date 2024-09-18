import 'package:first_app/models/produto_model.dart';
import 'package:flutter/material.dart';
 
class ProdutoScreen extends StatelessWidget {
  final ProdutoModel produto;
  const ProdutoScreen({
    super.key,
    required this.produto,
  });
 
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child:
                    Image.asset(produto.imagem, height: 200, fit: BoxFit.fill),
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Text(
                    produto.titulo,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.favorite_border)
                ],
              ),
              Text('1kg, Price', style: TextStyle(color: Colors.grey)),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.remove),
                        onPressed: () {
                          // Lógica para diminuir a quantidade
                        },
                      ),
                      Text('1', style: TextStyle(fontSize: 18)),
                      IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () {
                          // Lógica para aumentar a quantidade
                        },
                      ),
                    ],
                  ),
                  Text(
                    produto.preco.toString(),
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              ElevatedButton(
                onPressed: () {
                  // Lógica para adicionar ao carrinho
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  backgroundColor: Colors.green,
                ),
                child: Text('Adicionar ao carrinho'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
 