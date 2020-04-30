// Código extraído e adaptado do source do Flutter

class Text extends StatelessWidget {
  /// The text to display.
  final String data;
  
  const Text(
    this.data, 
    // ... outros parâmetros ...
  ) : assert(
         data != null,
         'A non-null String must be provided to a Text widget.',
       );

  @override
  Widget build() {
    return const Widget();
  }
}

// Dentro do seu Widget...
class MyWidget extends StatelessWidget {
  @override
  Widget build() {
    // 1. Remover o assert
    // 2. Tratar o caso
    final String texto = textoDeOutroLugar();
    return Text(texto);
  }
}




















































void main() {
  (MyWidget().build() as StatelessWidget).build();
}

String? textoDeOutroLugar() {
  return null;
}

class Widget {
  const Widget();
}

abstract class StatelessWidget extends  Widget{
  const StatelessWidget();

  Widget build();
}
