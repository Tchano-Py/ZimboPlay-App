import 'package:flutter/material.dart';
import 'package:zimbo_play/views/ao_vivo_page/page.dart';
import 'package:zimbo_play/views/exclusivo_page/page.dart';
import 'package:zimbo_play/views/home_page/page.dart';
import 'package:zimbo_play/views/noticia_page/page.dart';
import 'package:zimbo_play/views/pesquisa_page/page.dart';
import 'package:zimbo_play/views/widget/bg_blur.dart';
import 'package:zimbo_play/views/widget/my_app_bar.dart';

class LayoutMain extends StatefulWidget {
  const LayoutMain({super.key});

  @override
  State<LayoutMain> createState() => _LayoutMainState();
}

class _LayoutMainState extends State<LayoutMain> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetpage = <Widget>[
    PageHome(),
    PageNoticia(),
    PageAoVivo(),
    PagePesquisa(),
    PageExclusivo(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlurredBackground(
        backgroundImage: "assets/image/background.png",
        child: Stack(
          children: <Widget>[
            _widgetpage[_selectedIndex],
            Positioned(
              top: MediaQuery.of(context).size.height * .05,
              left: 0,
              right: 0,
              child: const MyAppBar(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: _selectedIndex == 0
                ? Image.asset(
                    'assets/image/home-solid.png',
                    width: 20,
                    height: 20,
                  )
                : Image.asset(
                    'assets/image/home.png',
                    width: 20,
                    height: 20,
                  ),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 1
                ? Image.asset(
                    'assets/image/noticias-solid.png',
                    width: 20,
                    height: 20,
                  )
                : Image.asset(
                    'assets/image/noticias.png',
                    width: 20,
                    height: 20,
                  ),
            label: 'Notícias',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/image/zimbo-btn.png'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 3
                ? Image.asset(
                    'assets/image/procurar-solid.png',
                    width: 20,
                    height: 20,
                  )
                : Image.asset(
                    'assets/image/procurar.png',
                    width: 20,
                    height: 20,
                  ),
            label: 'Pesquisar',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 4
                ? Image.asset(
                    'assets/image/coroa-solid.png',
                    width: 20,
                    height: 20,
                  )
                : Image.asset(
                    'assets/image/coroa.png',
                    width: 20,
                    height: 20,
                  ),
            label: 'Exclusivo',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 6,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        fixedColor: const Color.fromRGBO(115, 117, 84, 1),
        unselectedItemColor: const Color.fromRGBO(115, 117, 84, 1),
        unselectedLabelStyle: const TextStyle(
          color: Color.fromRGBO(115, 117, 84, 1),
          fontSize: 12,
        ),
      ),
    );
  }
}
