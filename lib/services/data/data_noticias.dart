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
    image: 'noticia-3.jpg',
    titulo: 'Aneth Silva seleccionada no programa de mobilidade artística da África Austral',
    tipos: ['Cultura'],
    data: '11H46',
    autor: 'Maria Hengo',
    fonte: 'Jornal De Angola',
    corpo: 'A coreógrafa Aneth Silva é a artista seleccionada para representar Angola no programa de mobilidade cultural “Goethe Mobiarts 2024”, que lhe vai permitir apresentar-se com quatro artistas africanos nas cidades de Lomé, capital do Togo, Ouagadougou, capital do Burkina Faso, Windhoek, capital da Namíbia e Luanda, capital angolana, onde vai encerrar a digressão.',
  ),
  Noticia(
    id: 4,
    image: 'noticia-4.jpg',
    titulo: 'João Rosa Santos apresenta nova obra literária em Brasília',
    tipos: ['Cultura'],
    data: '02/09/2024',
    autor: 'JA Online',
    fonte: 'Jornal De Angola',
    corpo: 'O escritor e jornalista angolano, João Rosa Santos, lançou, na última sexta-feira, o mais recente livro intitulado "Perdidos e Achados - Crónicas ao Acaso", durante um evento, no Espaço Cultural da Embaixada de Angola no Brasil, em Brasília.',
  ),
  Noticia(
    id: 5,
    image: 'noticia-5.jpg',
    titulo: 'Artes Cênicas aborda comportamentos negativos de alunos nas escolas',
    tipos: ['Cultura'],
    data: '02/09/2024',
    autor: 'Victória Ferreira',
    fonte: 'Jornal De Angola',
    corpo: 'A Companhia Artes Cênicas apresentou, no sábado, no Museu de História Natural, em Luanda, a peça teatral “Escola encantada”, cujo conteúdo chama à reflexão sobre o comportamento negativo dos alunos nos estabelecimentos de ensino.',
  ),
  Noticia(
    id: 6,
    image: 'noticia-6.jpg',
    titulo: 'Palancas Negras reconhecem a relva do estádio “Baba Yara”',
    tipos: ['Desporto'],
    data: '02/09/2024',
    autor: '',
    fonte: '',
    corpo: '',
  ),
  Noticia(
    id: 7,
    image: 'noticia-7.jpg',
    titulo: 'Jogos Paralímpicos: Juliana Moko melhora a marca pessoal na prova',
    tipos: ['Desporto'],
    data: '02/09/2024',
    autor: '',
    fonte: '',
    corpo: '',
  ),
  Noticia(
    id: 8,
    image: 'noticia-8.jpg',
    titulo: 'Angola continua livre da varíola dos macacos',
    tipos: ['Saúde'],
    data: '02/09/2024',
    autor: '',
    fonte: '',
    corpo: '',
  ),
  Noticia(
    id: 9,
    image: 'noticia-9.jpg',
    titulo: 'Conheça o SUV elétrico que recarrega em apenas 15 minutos',
    tipos: ['Tecnologia'],
    data: '02/09/2024',
    autor: '',
    fonte: '',
    corpo: '',
  ),
  Noticia(
    id: 10,
    image: 'noticia-10.jpg',
    titulo: 'Ataque hacker atinge família de Alexandre de Moraes, STF, PF e Anatel',
    tipos: ['Tecnologia'],
    data: '02/09/2024',
    autor: '',
    fonte: '',
    corpo: '',
  ),
];

