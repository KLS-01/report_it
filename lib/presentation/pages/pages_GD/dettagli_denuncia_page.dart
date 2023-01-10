import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:report_it/domain/entity/entity_GA/super_utente.dart';
import 'package:report_it/domain/entity/entity_GA/tipo_utente.dart';
import '../../../domain/entity/entity_GD/denuncia_entity.dart';
import '../../../../domain/repository/denuncia_controller.dart';
import 'inoltro_denuncia_page.dart';

class DettagliDenunciaRebecca extends StatefulWidget {
  const DettagliDenunciaRebecca({super.key, required this.denunciaId, required this.utente});
  final String denunciaId;
  final SuperUtente utente;

  @override
  State<DettagliDenunciaRebecca> createState() => _DettagliDenunciaRebeccaState(denunciaId: denunciaId, utente: utente);
}

class _DettagliDenunciaRebeccaState extends State<DettagliDenunciaRebecca> {
  late Future<Denuncia?> denuncia;
  String denunciaId;
  SuperUtente utente;

  _DettagliDenunciaRebeccaState({required this.denunciaId,required this.utente});

  @override
  void initState() {
    super.initState();
    denuncia= DenunciaController().visualizzaDenunciaById(denunciaId, utente);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Column(
        children: [
          ElevatedButton(onPressed: ()=>Navigator.pop(context), child: Text("indietro")),

          FutureBuilder<Denuncia?>(
            future: denuncia,
            builder:(BuildContext context, AsyncSnapshot<Denuncia?> snapshot){
              if(snapshot.data==null){
                return const Text("Errore denuncia non trovata");
              }else{
                String? descrizione= snapshot.data?.descrizione;
                return Column(
                  children: [
                    Text("Ecco i dettagli della denuncia:"+ descrizione!),
                  ],
                );
              }
            }
          )
        ],
      ),
    );
  }
}


