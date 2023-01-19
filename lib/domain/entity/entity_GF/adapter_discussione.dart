import 'package:report_it/domain/entity/adapter.dart';
import 'package:report_it/domain/entity/entity_GF/discussione_entity.dart';

class AdapterDiscussione implements Adapter {
  @override
  fromJson(Map<String, dynamic> json) {
    var u = Discussione(
      json["Categoria"],
      json["DataOraCreazione"].toDate(),
      json["IDCreatore"],
      json["Punteggio"],
      json["Testo"],
      json["Titolo"],
      json["Stato"],
      json["ListaCommenti"],
      json["TipoUtente"],
      pathImmagine: json["pathImmagine"],
    );
    u.id = json["ID"];

    return u;
  }

  @override
  fromMap(map) {
    var u = Discussione(
      map["Categoria"],
      map["DataOraCreazione"].toDate(),
      map["IDCreatore"],
      map["Punteggio"],
      map["Testo"],
      map["Titolo"],
      map["Stato"],
      map["ListaCommenti"],
      map["TipoUtente"],
      pathImmagine: map["pathImmagine"],
    );
    u.id = map["ID"];

    return u;
  }

  @override
  toMap(object) {
    return {
      "Categoria": object.categoria,
      "DataOraCreazione": object.dataCreazione,
      "IDCreatore": object.idCreatore,
      "Punteggio": object.punteggio,
      "Testo": object.testo,
      "Titolo": object.titolo,
      "Stato": object.stato,
      "pathImmagine": object.pathImmagine,
      "ListaCommenti": object.listaSostegno,
      "TipoUtente": object.tipoUtente,
    };
  }
}
