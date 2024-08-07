class Noticia {
  final int id;
  final String image;
  final String titulo;
  final List<String> tipos;
  final String data;
  final String autor;
  final String fonte;
  final String corpo;

  Noticia({
    required this.id,
    required this.image,
    required this.titulo,
    required this.tipos,
    required this.data,
    required this.autor,
    required this.fonte,
    required this.corpo,
  });
}

List<Noticia> noticias = [
  Noticia(
    id: 1,
    image: 'noticia-1.png',
    titulo: 'Rússia pode entrar em falência técnica em abril',
    tipos: ['Política', 'Economia'],
    data: '2024-08-07',
    autor: 'João Silva',
    fonte: 'BBC',
    corpo:
        'Texto longo da notícia sobre a possível falência técnica da Rússia...',
  ),
  Noticia(
    id: 2,
    image: 'noticia-2.png',
    titulo: '“Se tocarem nos países da Otan, vamos responder”',
    tipos: ['Política', 'Segurança'],
    data: '2024-08-06',
    autor: 'Maria Oliveira',
    fonte: 'CNN',
    corpo: 'Texto longo da notícia sobre a resposta da Otan...',
  ),
  Noticia(
    id: 3,
    image: 'noticia-2.png',
    titulo: '“Se tocarem nos países da Otan, vamos responder”',
    tipos: ['Política', 'Segurança'],
    data: '2024-08-06',
    autor: 'Maria Oliveira',
    fonte: 'CNN',
    corpo: 'Texto longo da notícia sobre a resposta da Otan...',
  ),
];
