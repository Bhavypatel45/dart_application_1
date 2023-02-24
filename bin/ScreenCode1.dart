void main() {
  const maxRows = 7;
  const maxColumns = 7;

  var alphabets = List.generate(26, (index) => String.fromCharCode(index + 65));

  var twoLetterCombinations = List.generate(26 * 26, (index) {
    int firstLetterIndex = (index ~/ 26);
    int secondLetterIndex = (index % 26);

    return '${alphabets[firstLetterIndex]}${alphabets[secondLetterIndex]}';
  });

  var listOfElement =
      List.generate(7, (_) => List.filled(7, '')); // generates a 7x7 matrix

  int index = 0;
  for (int i = 0; i < 7; i++) {
    for (int j = 0; j < 7; j++) {
      if (index < 26) {
        listOfElement[i][j] = alphabets[index];
      } else {
        listOfElement[i][j] = twoLetterCombinations[index - 26];
      }
      index++;
    }
  }

  List<List<String>> swipeUpFunction(
      var listOfElement, int maxColumns, int index) {
    var firstElement = listOfElement[0][index];
    for (int i = 0; i < 7; i++) {
      listOfElement[i][index] = listOfElement[(i + 1) % maxColumns][index];
    }
    listOfElement[6][index] = firstElement;
    return listOfElement;
  }

  List<List<String>> swipeDownFunction(
      var listOfElement, int maxColumns, int index) {
    var lastElement = listOfElement[6][index];
    for (int i = 5; i >= 0; i--) {
      listOfElement[i + 1][index] = listOfElement[(i) % maxColumns][index];
    }
    listOfElement[0][index] = lastElement;
    return listOfElement;
  }

  List<List<String>> swipeLeftFunction(
      var listOfElement, int maxRows, int index) {
    var a = listOfElement[index][0];
    for (int i = 0; i < 7; i++) {
      listOfElement[index][i] = listOfElement[index][(i + 1) % maxRows];
    }
    listOfElement[index][6] = a;
    return listOfElement;
  }

  List<List<String>> swipeRightFunction(
      var listOfElement, int maxColumns, int index) {
    var a = listOfElement[index][6];
    for (int i = 5; i >= 0; i--) {
      listOfElement[index][i + 1] = listOfElement[index][(i) % maxColumns];
    }
    listOfElement[index][0] = a;
    return listOfElement;
  }

  void testcaseA(var index, var listOfElement, var oldValueOf1stColumn,
      var oldValueOf2ndColumn, var oldValueOf3rdColumn) {
    if (listOfElement[1][index] == oldValueOf1stColumn) {
      print("Successfully Swipe");
    } else {
      print("Some Error When Swipe");
    }
    if (listOfElement[2][index] == oldValueOf2ndColumn) {
      print("Successfully Swipe");
    } else {
      print("Some Error When Swipe");
    }
    if (listOfElement[3][index] == oldValueOf3rdColumn) {
      print("Successfully Swipe");
    } else {
      print("Some Error When Swipe");
    }
  }

  void testcaseB(var index, var listOfElement, var oldValueOf1stRow,
      var oldValueOf2ndRow, var oldValueOf3rdRow) {
    if (listOfElement[0][index] == oldValueOf1stRow) {
      print("Successfully Swipe");
    } else {
      print("Some Error When Swipe");
    }
    if (listOfElement[1][index] == oldValueOf2ndRow) {
      print("Successfully Swipe");
    } else {
      print("Some Error When Swipe");
    }
    if (listOfElement[2][index] == oldValueOf3rdRow) {
      print("Successfully Swipe");
    } else {
      print("Some Error When Swipe");
    }
  }

  void testcaseC(var index, var listOfElement, var oldValueOf1stRow,
      var oldValueOf2ndRow, var oldValueOf3rdRow) {
    if (listOfElement[index][0] == oldValueOf1stRow) {
      print("Successfully Swipe");
    } else {
      print("Some Error When Swipe");
    }
    if (listOfElement[index][1] == oldValueOf2ndRow) {
      print("Successfully Swipe");
    } else {
      print("Some Error When Swipe");
    }
    if (listOfElement[index][2] == oldValueOf3rdRow) {
      print("Successfully Swipe");
    } else {
      print("Some Error When Swipe");
    }
  }

  void testcaseD(var index, var listOfElement, var oldValueOf1stColumn,
      var oldValueOf2ndColumn, var oldValueOf3rdColumn) {
    if (listOfElement[index][2] == oldValueOf1stColumn) {
      print("Successfully Swipe");
    } else {
      print("Some Error When Swipe");
    }
    if (listOfElement[index][3] == oldValueOf2ndColumn) {
      print("Successfully Swipe");
    } else {
      print("Some Error When Swipe");
    }
    if (listOfElement[index][4] == oldValueOf3rdColumn) {
      print("Successfully Swipe");
    } else {
      print("Some Error When Swipe");
    }
  }

  void clickFunctionA1() {
    var index = 0;
    var oldValueOf1stColumn = listOfElement[0][index];
    var oldValueOf2ndColumn = listOfElement[1][index];
    var oldValueOf3rdColumn = listOfElement[2][index];
    listOfElement = swipeDownFunction(listOfElement, maxColumns, index);
    testcaseA(index, listOfElement, oldValueOf1stColumn, oldValueOf2ndColumn,
        oldValueOf3rdColumn);
    print(listOfElement);
  }

  void clickFunctionA2() {
    var index = 1;
    var oldValueOf1stColumn = listOfElement[0][index];
    var oldValueOf2ndColumn = listOfElement[1][index];
    var oldValueOf3rdColumn = listOfElement[2][index];
    listOfElement = swipeDownFunction(listOfElement, maxColumns, index);
    testcaseA(index, listOfElement, oldValueOf1stColumn, oldValueOf2ndColumn,
        oldValueOf3rdColumn);
    print(listOfElement);
  }

  void clickFunctionA3() {
    var index = 2;
    var oldValueOf1stColumn = listOfElement[0][index];
    var oldValueOf2ndColumn = listOfElement[1][index];
    var oldValueOf3rdColumn = listOfElement[2][index];
    listOfElement = swipeDownFunction(listOfElement, maxColumns, index);
    testcaseA(index, listOfElement, oldValueOf1stColumn, oldValueOf2ndColumn,
        oldValueOf3rdColumn);
    print(listOfElement);
  }

  void clickFunctionB1() {
    var index = 0;
    var oldValueOf1stColumn = listOfElement[1][index];
    var oldValueOf2ndColumn = listOfElement[2][index];
    var oldValueOf3rdColumn = listOfElement[3][index];
    listOfElement = swipeUpFunction(listOfElement, maxColumns, index);
    testcaseB(index, listOfElement, oldValueOf1stColumn, oldValueOf2ndColumn,
        oldValueOf3rdColumn);
    print(listOfElement);
  }

  void clickFunctionB2() {
    var index = 1;
    var oldValueOf1stColumn = listOfElement[1][index];
    var oldValueOf2ndColumn = listOfElement[2][index];
    var oldValueOf3rdColumn = listOfElement[3][index];
    listOfElement = swipeUpFunction(listOfElement, maxColumns, index);
    testcaseB(index, listOfElement, oldValueOf1stColumn, oldValueOf2ndColumn,
        oldValueOf3rdColumn);
    print(listOfElement);
  }

  void clickFunctionB3() {
    var index = 2;
    var oldValueOf1stColumn = listOfElement[1][index];
    var oldValueOf2ndColumn = listOfElement[2][index];
    var oldValueOf3rdColumn = listOfElement[3][index];
    listOfElement = swipeUpFunction(listOfElement, maxColumns, index);
    testcaseB(index, listOfElement, oldValueOf1stColumn, oldValueOf2ndColumn,
        oldValueOf3rdColumn);
    print(listOfElement);
  }

  void clickFunctionC1() {
    var index = 0;
    var oldValueOf1stRow = listOfElement[index][1];
    var oldValueOf2ndRow = listOfElement[index][2];
    var oldValueOf3rdRow = listOfElement[index][3];
    listOfElement = swipeLeftFunction(listOfElement, maxRows, index);
    testcaseC(index, listOfElement, oldValueOf1stRow, oldValueOf2ndRow,
        oldValueOf3rdRow);
    print(listOfElement);
  }

  void clickFunctionC2() {
    var index = 1;
    var oldValueOf1stRow = listOfElement[index][1];
    var oldValueOf2ndRow = listOfElement[index][2];
    var oldValueOf3rdRow = listOfElement[index][3];
    listOfElement = swipeLeftFunction(listOfElement, maxRows, index);
    testcaseC(index, listOfElement, oldValueOf1stRow, oldValueOf2ndRow,
        oldValueOf3rdRow);
    print(listOfElement);
  }

  void clickFunctionC3() {
    var index = 2;
    var oldValueOf1stRow = listOfElement[index][1];
    var oldValueOf2ndRow = listOfElement[index][2];
    var oldValueOf3rdRow = listOfElement[index][3];
    listOfElement = swipeLeftFunction(listOfElement, maxRows, index);
    testcaseC(index, listOfElement, oldValueOf1stRow, oldValueOf2ndRow,
        oldValueOf3rdRow);
    print(listOfElement);
  }

  void clickFunctionD1() {
    var index = 0;
    var oldValueOf1stRow = listOfElement[index][1];
    var oldValueOf2ndRow = listOfElement[index][2];
    var oldValueOf3rdRow = listOfElement[index][3];
    listOfElement = swipeRightFunction(listOfElement, maxRows, index);
    testcaseD(index, listOfElement, oldValueOf1stRow, oldValueOf2ndRow,
        oldValueOf3rdRow);
    print(listOfElement);
  }

  void clickFunctionD2() {
    var index = 1;
    var oldValueOf1stRow = listOfElement[index][1];
    var oldValueOf2ndRow = listOfElement[index][2];
    var oldValueOf3rdRow = listOfElement[index][3];
    listOfElement = swipeRightFunction(listOfElement, maxRows, index);
    testcaseD(index, listOfElement, oldValueOf1stRow, oldValueOf2ndRow,
        oldValueOf3rdRow);
    print(listOfElement);
  }

  void clickFunctionD3() {
    var index = 2;
    var oldValueOf1stRow = listOfElement[index][1];
    var oldValueOf2ndRow = listOfElement[index][2];
    var oldValueOf3rdRow = listOfElement[index][3];
    listOfElement = swipeRightFunction(listOfElement, maxRows, index);
    testcaseD(index, listOfElement, oldValueOf1stRow, oldValueOf2ndRow,
        oldValueOf3rdRow);
    print(listOfElement);
  }

  print("initial Matrix of Element: ");
  print(listOfElement);
  print("-------------------------------------------------");
  print("Swipe after 1st Column Down: ");
  clickFunctionA1();
  print("-------------------------------------------------");
  print("Swipe after 2nd Column Down: ");
  clickFunctionA2();
  print("-------------------------------------------------");
  print("Swipe after 3rd Column Down: ");
  clickFunctionA3();
  print("-------------------------------------------------");
  print("Swipe after 1st Column Up: ");
  clickFunctionB1();
  print("-------------------------------------------------");
  print("Swipe after 2nd Column Up: ");
  clickFunctionB2();
  print("-------------------------------------------------");
  print("Swipe after 3rd Column Up: ");
  clickFunctionB3();
  print("-------------------------------------------------");
  print("Swipe after 1st Column Left: ");
  clickFunctionC1();
  print("-------------------------------------------------");
  print("Swipe after 2nd Column Left: ");
  clickFunctionC2();
  print("-------------------------------------------------");
  print("Swipe after 3rd Column Left: ");
  clickFunctionC3();
  print("-------------------------------------------------");
  print("Swipe after 1st Column Right: ");
  clickFunctionD1();
  print("-------------------------------------------------");
  print("Swipe after 2nd Column Right: ");
  clickFunctionD2();
  print("-------------------------------------------------");
  print("Swipe after 3rd Column Right: ");
  clickFunctionD3();
  print("-------------------------------------------------");
}
