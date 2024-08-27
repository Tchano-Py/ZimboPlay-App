import 'package:flutter/material.dart';

class MyCardPerfil extends StatefulWidget {
  final String nome;
  final String funcao;
  final String programa;
  final String foto;

  const MyCardPerfil(
      {super.key,
      required this.nome,
      required this.funcao,
      required this.programa,
      required this.foto});

  @override
  State<MyCardPerfil> createState() => _MyCardPerfilState();
}

class _MyCardPerfilState extends State<MyCardPerfil> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Rosto da Zimbo",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 22,
            color: Color.fromRGBO(115, 117, 84, 1),
          ),
        ),
        const SizedBox(height: 8.0),
        Row(
          children: [
            SizedBox(
              width: 99.0,
              height: 99.0,
              child: Card(
                clipBehavior: Clip.antiAlias,
                elevation: 8,
                child: Image.asset(
                  widget.foto,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 10.0),
            Expanded(
              child: SizedBox(
                height: 99.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.nome,
                          style: const TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            color: Color.fromRGBO(196, 144, 33, 1),
                          ),
                        ),
                        Row(
                          children: [
                            const Text(
                              "Função:",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 12,
                                color: Color.fromRGBO(34, 34, 34, 0.3),
                              ),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              widget.funcao,
                              style: const TextStyle(
                                fontSize: 12,
                                color: Color.fromRGBO(34, 34, 34, 0.3),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              "Programa:",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 12,
                                color: Color.fromRGBO(34, 34, 34, 0.3),
                              ),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              widget.programa,
                              style: const TextStyle(
                                fontSize: 12,
                                color: Color.fromRGBO(34, 34, 34, 0.3),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 26.0,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor:
                                  const Color.fromRGBO(196, 144, 33, 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                            child: const Text(
                              "Perfil",
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 7),
                        SizedBox(
                          height: 26.0,
                          child: OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              elevation: 0,
                              side: const BorderSide(
                                color: Color.fromRGBO(196, 144, 33, 1),
                                width: 1.0,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                            child: const Text(
                              "Deixar de seguir",
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 12,
                                color: Color.fromRGBO(196, 144, 33, 1),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
