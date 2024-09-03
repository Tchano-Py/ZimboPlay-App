import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:zimbo_play/views/pesquisa_page/component/my_card_perfil.dart';
import 'package:zimbo_play/views/pesquisa_page/component/lista_itens.dart';

class PagePesquisa extends StatefulWidget {
  const PagePesquisa({super.key});

  @override
  State<PagePesquisa> createState() => _PagePesquisaState();
}

class _PagePesquisaState extends State<PagePesquisa> {
  bool animate = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 120.0),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .85,
              padding: const EdgeInsets.all(18.0),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Colors.white,
              ),
              child: FadeInUp(
                animate: animate,
                duration: const Duration(milliseconds: 500),
                delay: const Duration(seconds: 0),
                child: Column(
                  children: <Widget>[
                    FadeInDown(
                      animate: animate,
                      duration: const Duration(milliseconds: 600),
                      delay: const Duration(seconds: 0),
                      child: SizedBox(
                        height: 40.0,
                        child: SearchAnchor(
                          viewBackgroundColor: Colors.white,
                          isFullScreen: false,
                          builder: (BuildContext context,
                              SearchController controller) {
                            return SearchBar(
                              controller: controller,
                              padding: const WidgetStatePropertyAll<EdgeInsets>(
                                EdgeInsets.symmetric(horizontal: 16.0),
                              ),
                              elevation:
                                  const WidgetStatePropertyAll<double>(0.0),
                              backgroundColor:
                                  const WidgetStatePropertyAll<Color>(
                                      Color.fromRGBO(34, 34, 34, 0.1)),
                              shape:
                                  WidgetStatePropertyAll<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                              ),
                              onTap: () {
                                controller.openView();
                              },
                              onChanged: (_) {
                                controller.openView();
                              },
                              leading: Image.asset("assets/image/procurar_2.png"),
                              trailing: <Widget>[
                                Image.asset(
                                    "assets/image/settings_sliders_1.png"),
                              ],
                            );
                          },
                          suggestionsBuilder: (BuildContext context,
                              SearchController controller) {
                            final List<String> programasZimbo = [
                              'Sexto Sentido',
                              'Jornal da Zimbo',
                              'Grande Entrevista',
                              'Conexões Zimbo',
                              'Zimbo Debate',
                              'Hora Quente',
                              'Janela Aberta',
                              'Revista Zimbo',
                              'Fala Angola',
                              'Bom Dia Angola',
                              'Viva a Noite',
                              'Especial Zimbo',
                              'Zimbo no seu Bairro',
                              'Conversas ao Sul',
                              'Alerta Geral',
                              'Angola ao Vivo',
                            ];
                            return List<ListTile>.generate(programasZimbo.length,
                                (int index) {
                              final String item = programasZimbo[index];
                              return ListTile(
                                title: Text(item),
                                onTap: () {
                                  setState(() {
                                    controller.closeView(item);
                                  });
                                },
                              );
                            });
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    const MyCardPerfil(
                      nome: "Marcelina Gonçalves",
                      funcao: "Apresentadora",
                      programa: "Jornal da Hora",
                      foto: "assets/image/jornal_1.png",
                    ),
                    const SizedBox(height: 24),
                    const ListaItens(
                      timeAnimation: 700,
                      titulo: "Programas relacionados",
                      imagens: [
                        'debate_livre.png',
                        'defesa_consumidor.jpeg',
                        'direito_ao_ponto.jpeg',
                        'esta_na_hora.jpg',
                        'Jornal_zimbo.jpeg',
                        'fala_angola_1.jpeg',
                      ],
                    ),
                    const SizedBox(height: 24),
                    const ListaItens(
                      timeAnimation: 800,
                      titulo: "Outras pessoas viram",
                      imagens: [
                        'made_in_angola_0.webp',
                        'tarde_nossa.jpeg',
                        'turma.png',
                        'sexto_sentido.jpeg',
                        'desafio_zimbo.jpeg',
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
