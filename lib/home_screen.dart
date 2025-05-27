
void equalPressed() {
  String finaluserinput = userInput.replaceAll('x', '*');

  try {
    Parser p = Parser();
    Expression exp = p.parse(finaluserinput);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);

    // Rounding the result to 2 decimal places
    answer = eval.toStringAsFixed(2);
  } catch (e) {
    answer = 'Error';
  }
  
  setState(() {});
}
