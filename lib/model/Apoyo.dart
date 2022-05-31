class Apoyo {
  int? habitacion;
  bool? apoyoBrindado;

  Apoyo();

  // sending data to our server
  Map<String, dynamic> toJson() => {
        'habitacion': habitacion,
        'apoyoBrindado': apoyoBrindado,};

  Apoyo.fromSnapshot(snapshot)
      : habitacion = snapshot.data()['habitacion'],
        apoyoBrindado = snapshot.data()['apoyoBrindado'];
}
