import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro/components/components.dart';
import 'package:provider/provider.dart';

import '../store/store.dart';

class Cronometro extends StatelessWidget {
  const Cronometro({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);
    return Observer(
      builder: (context) => Container(
        color: store.estaTrabalhando() ? Colors.red : Colors.green,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              store.estaTrabalhando()
                  ? 'Hora de Trabalhar'
                  : 'Hora de Descansar',
              style: const TextStyle(
                fontSize: 40,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              '${store.minutos.toString().padLeft(2, '0')}:${store.segundos.toString().padLeft(2, '0')}',
              style: const TextStyle(
                fontSize: 120,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (!store.iniciado)
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: CronometroBotao(
                      icone: Icons.play_arrow,
                      texto: 'Iniciar',
                      click: store.iniciar,
                    ),
                  ),
                if (store.iniciado)
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: CronometroBotao(
                      icone: Icons.stop,
                      texto: 'Parar',
                      click: store.parar,
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: CronometroBotao(
                    icone: Icons.refresh,
                    texto: 'Reiniciar',
                    click: store.reiniciar,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
