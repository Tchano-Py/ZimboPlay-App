import 'package:flutter/material.dart';

class PageExclusivo extends StatefulWidget {
  const PageExclusivo({super.key});

  @override
  State<PageExclusivo> createState() => _PageExclusivoState();
}

class _PageExclusivoState extends State<PageExclusivo> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(18.0),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Uma nova fase\nestá a chegar...",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 35,
                color: Colors.white,
                height: 1.2,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 17),
            const Text(
              "Estamos a trabalhar para\nlevar o melhor conteúdo para si.\n100% exclusivo à Zimbo Play.",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: Colors.white,
                height: 1.2,
              ),
              textAlign: TextAlign.center,
            ),
                const SizedBox(height: 40.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .25,
                  height: MediaQuery.of(context).size.height * .15,
                  child: Opacity(
                    opacity: .3,
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      child: Image.asset(
                        'assets/image/vitrine.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 7.0),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .26,
                  height: MediaQuery.of(context).size.height * .16,
                  child: Opacity(
                    opacity: .6,
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      child: Image.asset(
                        'assets/image/jornal_2.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 7.0),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .25,
                  height: MediaQuery.of(context).size.height * .15,
                  child: Opacity(
                    opacity: .3,
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      child: Image.asset(
                        'assets/image/made_in_angola_1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
