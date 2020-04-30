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
    print("Rendering $data!");
    return const Widget();
  }
}

// Dentro do seu Widget...
class MyWidget extends StatelessWidget {
  @override
  Widget build() {
    // (1) Problema semântico
    final String texto = textoDeOutroLugar();

    // (2) Slow fail
    return Text(texto);

    // (3) Ad-hoc error handling
    // Opção 1: checar o null
    // Opção 2: null-coalesce operator
  }
}














































void main() {
  (MyWidget().build() as StatelessWidget).build();
}

String textoDeOutroLugar() {
  return null;
}

class Widget {
  const Widget();
}

abstract class StatelessWidget extends  Widget{
  const StatelessWidget();

  Widget build();
}
