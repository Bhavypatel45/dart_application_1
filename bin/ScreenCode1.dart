void main() {
  const maxRows = 7;
  const maxColumns = 7;
  var index1 = 2;
  var index2 = 2;

  var vec = [
    for (var row = 0; row < maxRows; row += 1)
      [
        for (var column = 0; column < maxColumns; column += 1)
          1 + row + column * maxRows
      ],
  ];

  List<List<int>> tmp = [
    for (var row = index1; row < index1 + 3; row += 1)
      [
        for (var column = index2; column < index2 + 3; column += 1)
          vec[row % maxRows][column % maxColumns]
      ],
  ];

  List<List<int>> functionColumn(
      var vec, int maxRows, int maxColumns, int index1, int index2, int value) {
    index2 = index2 + value;
    var i = 0;
    for (var row = index1; row < index1 + 3; row += 1) {
      tmp[i % 3][value] = vec[row % maxRows][index2 % maxColumns];
      i++;
    }
    return tmp;
  }

  List<List<int>> functionRow(
      var vec, int maxRows, int maxColumns, int index1, int index2, int value) {
    index1 = index1 + value;
    var i = 0;
    for (var column = index2; column < index2 + 3; column += 1) {
      tmp[value][i % 3] = vec[index1 % maxRows][column % maxColumns];
      i++;
    }
    return tmp;
  }

  print(tmp);
  void clickFunctionA1() {
    var value = 0;
    tmp = functionColumn(vec, maxRows, maxColumns, --index1, index2, value);
    print("---swipe 1ST column down---");
    print(tmp);
  }

  void clickFunctionA2() {
    var value = 1;
    tmp = functionColumn(vec, maxRows, maxColumns, --index1, index2, value);
    print("---swipe 2ND column down---");
    print(tmp);
  }

  void clickFunctionA3() {
    var value = 2;
    tmp = functionColumn(vec, maxRows, maxColumns, --index1, index2, value);
    print("---swipe 3RD column down---");
    print(tmp);
  }

  void clickFunctionB1() {
    var value = 0;
    tmp = functionColumn(vec, maxRows, maxColumns, ++index1, index2, value);
    print("---swipe 1ST column up---");
    print(tmp);
  }

  void clickFunctionB2() {
    var value = 1;
    tmp = functionColumn(vec, maxRows, maxColumns, ++index1, index2, value);
    print("---swipe 2ND column up---");
    print(tmp);
  }

  void clickFunctionB3() {
    var value = 2;
    tmp = functionColumn(vec, maxRows, maxColumns, ++index1, index2, value);
    print("---swipe 3RD column up---");
    print(tmp);
  }

  void clickFunctionC1() {
    var value = 0;
    tmp = functionRow(vec, maxRows, maxColumns, index1, ++index2, value);
    print("---swipe 1ST column left---");
    print(tmp);
  }

  void clickFunctionC2() {
    var value = 1;
    tmp = functionRow(vec, maxRows, maxColumns, index1, ++index2, value);
    print("---swipe 2ND column left---");
    print(tmp);
  }

  void clickFunctionC3() {
    var value = 2;
    tmp = functionRow(vec, maxRows, maxColumns, index1, ++index2, value);
    print("---swipe 3RD column left---");
    print(tmp);
  }

  void clickFunctionD1() {
    var value = 0;
    tmp = functionRow(vec, maxRows, maxColumns, index1, --index2, value);
    print("---swipe 1ST column right---");
    print(tmp);
  }

  void clickFunctionD2() {
    var value = 1;
    tmp = functionRow(vec, maxRows, maxColumns, index1, --index2, value);
    print("---swipe 2ND column right---");
    print(tmp);
  }

  void clickFunctionD3() {
    var value = 2;
    tmp = functionRow(vec, maxRows, maxColumns, index1, --index2, value);
    print("---swipe 3RD column right---");
    print(tmp);
  }

  clickFunctionA1();
  clickFunctionA2();
  clickFunctionA3();
  clickFunctionB1();
  clickFunctionB2();
  clickFunctionB3();
  clickFunctionC1();
  clickFunctionC2();
  clickFunctionC3();
  clickFunctionD1();
  clickFunctionD2();
  clickFunctionD3();
}
