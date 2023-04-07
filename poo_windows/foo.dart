class Media {
  // Clase base para medios de comunicación
  // ...
}

class Audio extends Media with Reproducible {
  // Clase derivada para archivos de audio
  // ...
}

class Video extends Media with Reproducible {
  // Clase derivada para archivos de video
  // ...
}

class Foto extends Media with Reproducible {
  // Clase derivada para archivos de foto
  // ...
}

mixin Reproducible {
  // Mixin para funcionalidad reproducible
  void reproducir() {
    print('Reproduciendo...');
  }

  void pausar() {
    print('Pausando...');
  }

  void detener() {
    print('Deteniendo...');
  }
}

void main() {
  Audio miAudio = Audio();
  Video miVideo = Video();
  Foto miFoto = Foto();

  miAudio.reproducir(); // Utilizando la funcionalidad de Reproducible en Audio
  miVideo.pausar(); // Utilizando la funcionalidad de Reproducible en Video
  miFoto.detener(); // Utilizando la funcionalidad de Reproducible en Foto
}
