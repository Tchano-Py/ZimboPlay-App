import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:animate_do/animate_do.dart';
import 'package:zimbo_play/views/widget/bg_blur.dart';

class PageLogin extends StatefulWidget {
  const PageLogin({super.key});

  @override
  State<PageLogin> createState() => _PageLoginState();
}

class _PageLoginState extends State<PageLogin> {
  final _formKey = GlobalKey<FormState>();
  bool animate = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlurredBackground(
        backgroundImage: "assets/image/background.png",
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: MediaQuery.of(context).size.height * .15),
              FadeInUp(
                animate: animate,
                duration: const Duration(milliseconds: 500),
                delay: const Duration(seconds: 0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    color: Color.fromRGBO(255, 255, 255, .95),
                  ),
                  child: Column(
                    children: <Widget>[
                      FadeInDown(
                        animate: animate,
                        duration: const Duration(milliseconds: 700),
                        delay: const Duration(seconds: 1),
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * .06,
                            bottom: 23,
                          ),
                          child: Image.asset(
                              "assets/image/vivaplay-logotipo-login.png"),
                        ),
                      ),
                      FadeInDown(
                        animate: animate,
                        duration: const Duration(milliseconds: 800),
                        delay: const Duration(seconds: 1),
                        child: const Text(
                          "Acesse a sua conta para desfrutar do melhor que há!",
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 22,
                            color: Color.fromRGBO(115, 117, 84, 1),
                            height: 1,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      FadeInDown(
                        animate: animate,
                        duration: const Duration(milliseconds: 900),
                        delay: const Duration(seconds: 1),
                        child: const Padding(
                          padding: EdgeInsets.only(
                            top: 30,
                            bottom: 15,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Divider(
                                  height: 1,
                                  color: Color.fromRGBO(34, 34, 34, .3),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(
                                  "continuar com",
                                  style: TextStyle(
                                    color: Color.fromRGBO(34, 34, 34, .3),
                                    fontSize: 13.5,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Divider(
                                  height: 1,
                                  color: Color.fromRGBO(34, 34, 34, .3),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      FadeInDown(
                        animate: animate,
                        duration: const Duration(milliseconds: 1000),
                        delay: const Duration(seconds: 1),
                        child: Row(
                          children: [
                            Expanded(
                              child: ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor:
                                      const Color.fromRGBO(242, 242, 242, 1),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  minimumSize: Size(
                                      MediaQuery.of(context).size.width, 45),
                                ),
                                onPressed: () {},
                                icon: Image.asset("assets/image/facebook.png"),
                                label: const Text(
                                  'Facebook',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,
                                    color: Color.fromRGBO(121, 121, 121, 1),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor:
                                      const Color.fromRGBO(242, 242, 242, 1),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  minimumSize: Size(
                                      MediaQuery.of(context).size.width, 45),
                                ),
                                onPressed: () {},
                                icon:
                                    Image.asset("assets/image/Google-APP.png"),
                                label: const Text(
                                  'Google',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,
                                    color: Color.fromRGBO(121, 121, 121, 1),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      FadeInDown(
                        animate: animate,
                        duration: const Duration(milliseconds: 1100),
                        delay: const Duration(seconds: 1),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              TextFormField(
                                textInputAction: TextInputAction.next,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Por favor, insira um e-mail ou número de telefone válido.';
                                  }
                                  return null;
                                },
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color.fromRGBO(0, 0, 0, .12),
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                  ),
                                  labelText: 'E-mail ou telefone',
                                  labelStyle: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Color.fromRGBO(0, 0, 0, .3),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 14,
                              ),
                              TextFormField(
                                obscureText: true,
                                keyboardType: TextInputType.visiblePassword,
                                textInputAction: TextInputAction.go,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Por favor, insira sua senha.';
                                  }
                                  return null;
                                },
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color.fromRGBO(0, 0, 0, .12),
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                  ),
                                  labelText: 'Senha',
                                  labelStyle: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Color.fromRGBO(0, 0, 0, .3),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 34,
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor:
                                      const Color.fromRGBO(196, 144, 33, 1),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  minimumSize: Size(
                                      MediaQuery.of(context).size.width, 50),
                                ),
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    context.goNamed('layout_main');
                                  }
                                },
                                child: const Text(
                                  'Entrar',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      const Text(
                        'Não possui uma conta?',
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, .5),
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
