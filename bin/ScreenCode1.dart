import "dart:math";

const maxRows = 7;
const maxColumns = 7;
const alphabet = 26;
var alphabets =
    List.generate(alphabet, (index) => String.fromCharCode(index + 65));
var listOfElement = List.generate(maxRows, (_) => List.filled(maxRows, ''));
Set resultSet = {"Y", "S", "AA"};

var swipeSelection = [
  clickFunctionSwipeDownColumns(2),
  clickFunctionSwipeDownColumns(3),
  clickFunctionSwipeDownColumns(4),
  clickFunctionSwipeUpColumns(2),
  clickFunctionSwipeUpColumns(3),
  clickFunctionSwipeUpColumns(4),
  clickFunctionSwipeLeftRows(2),
  clickFunctionSwipeLeftRows(3),
  clickFunctionSwipeLeftRows(4),
  clickFunctionSwipeRightRows(2),
  clickFunctionSwipeRightRows(3),
  clickFunctionSwipeRightRows(4)
];

Random rnd = new Random();

void main() {
  initialList();

  print("initial Matrix of Element: ");
  for (int i = 0; i < maxRows; i++) {
    print(
        ' ${listOfElement[i][0]}  ${listOfElement[i][1]}  ${listOfElement[i][2]}  ${listOfElement[i][3]}  ${listOfElement[i][4]}  ${listOfElement[i][5]}  ${listOfElement[i][6]}  ');
  }

  screenDisplayGrid();

  swipeSelection[rnd.nextInt(swipeSelection.length)];
}

// Add element into a List

void initialList() {
  var twoLetterCombinations = List.generate(alphabet * alphabet, (index) {
    int firstLetterIndex = (index ~/ alphabet);
    int secondLetterIndex = (index % alphabet);

    return '${alphabets[firstLetterIndex]}${alphabets[secondLetterIndex]}';
  });

  int index = 0;
  for (int i = 0; i < maxRows; i++) {
    for (int j = 0; j < maxRows; j++) {
      if (index < alphabet) {
        listOfElement[i][j] = alphabets[index];
      } else {
        listOfElement[i][j] = twoLetterCombinations[index - alphabet];
      }
      index++;
    }
  }
}

// Swape Down Columns and test their old value with new value

void clickFunctionSwipeDownColumns(int index) {
  var oldValueOf1stColumn = listOfElement[0][index];
  var oldValueOf2ndColumn = listOfElement[1][index];
  var oldValueOf3rdColumn = listOfElement[2][index];
  listOfElement = swipeDownFunction(listOfElement, maxColumns, index);
  print("-------------------------------------------------");
  print("Swipe after ${index + 1} Column Down: ");
  testcaseSwipeDown(index, listOfElement, oldValueOf1stColumn,
      oldValueOf2ndColumn, oldValueOf3rdColumn);
  for (int i = 0; i < maxRows; i++) {
    print(
        ' ${listOfElement[i][0]}  ${listOfElement[i][1]}  ${listOfElement[i][2]}  ${listOfElement[i][3]}  ${listOfElement[i][4]}  ${listOfElement[i][5]}  ${listOfElement[i][6]}  ');
  }
  screenDisplayGrid();
}

List<List<String>> swipeDownFunction(
    var listOfElement, int maxColumns, int index) {
  var lastElement = listOfElement[6][index];
  for (int i = maxColumns - 2; i >= 0; i--) {
    listOfElement[i + 1][index] = listOfElement[(i) % maxColumns][index];
  }
  listOfElement[0][index] = lastElement;
  return listOfElement;
}

void testcaseSwipeDown(var index, var listOfElement, var oldValueOf1stColumn,
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

// Swape Up Columns and test their old value with new value

void clickFunctionSwipeUpColumns(int index) {
  var oldValueOf1stColumn = listOfElement[1][index];
  var oldValueOf2ndColumn = listOfElement[2][index];
  var oldValueOf3rdColumn = listOfElement[3][index];
  listOfElement = swipeUpFunction(listOfElement, maxColumns, index);
  print("-------------------------------------------------");
  print("Swipe after ${index + 1} Column Up: ");
  testcaseSwipeUp(index, listOfElement, oldValueOf1stColumn,
      oldValueOf2ndColumn, oldValueOf3rdColumn);
  for (int i = 0; i < maxRows; i++) {
    print(
        ' ${listOfElement[i][0]}  ${listOfElement[i][1]}  ${listOfElement[i][2]}  ${listOfElement[i][3]}  ${listOfElement[i][4]}  ${listOfElement[i][5]}  ${listOfElement[i][6]}  ');
  }
  screenDisplayGrid();
}

List<List<String>> swipeUpFunction(
    var listOfElement, int maxColumns, int index) {
  var firstElement = listOfElement[0][index];
  for (int i = 0; i < maxRows; i++) {
    listOfElement[i][index] = listOfElement[(i + 1) % maxColumns][index];
  }
  listOfElement[6][index] = firstElement;
  return listOfElement;
}

void testcaseSwipeUp(var index, var listOfElement, var oldValueOf1stRow,
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

// Swape Left Rows and test their old value with new value

void clickFunctionSwipeLeftRows(int index) {
  var oldValueOf1stRow = listOfElement[index][1];
  var oldValueOf2ndRow = listOfElement[index][2];
  var oldValueOf3rdRow = listOfElement[index][3];
  listOfElement = swipeLeftFunction(listOfElement, maxRows, index);
  print("-------------------------------------------------");
  print("Swipe after ${index + 1} Row Left: ");
  testcaseSwipeLeft(index, listOfElement, oldValueOf1stRow, oldValueOf2ndRow,
      oldValueOf3rdRow);
  for (int i = 0; i < maxRows; i++) {
    print(
        ' ${listOfElement[i][0]}  ${listOfElement[i][1]}  ${listOfElement[i][2]}  ${listOfElement[i][3]}  ${listOfElement[i][4]}  ${listOfElement[i][5]}  ${listOfElement[i][6]}  ');
  }
  screenDisplayGrid();
}

List<List<String>> swipeLeftFunction(
    var listOfElement, int maxRows, int index) {
  var a = listOfElement[index][0];
  for (int i = 0; i < maxRows; i++) {
    listOfElement[index][i] = listOfElement[index][(i + 1) % maxRows];
  }
  listOfElement[index][6] = a;
  return listOfElement;
}

void testcaseSwipeLeft(var index, var listOfElement, var oldValueOf1stRow,
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

// Swape Right Rows and test their old value with new value

void clickFunctionSwipeRightRows(int index) {
  var oldValueOf1stRow = listOfElement[index][1];
  var oldValueOf2ndRow = listOfElement[index][2];
  var oldValueOf3rdRow = listOfElement[index][3];
  listOfElement = swipeRightFunction(listOfElement, maxRows, index);
  print("-------------------------------------------------");
  print("Swipe after ${index + 1} Row Right: ");
  testcaseSwipeRight(index, listOfElement, oldValueOf1stRow, oldValueOf2ndRow,
      oldValueOf3rdRow);
  for (int i = 0; i < maxRows; i++) {
    print(
        ' ${listOfElement[i][0]}  ${listOfElement[i][1]}  ${listOfElement[i][2]}  ${listOfElement[i][3]}  ${listOfElement[i][4]}  ${listOfElement[i][5]}  ${listOfElement[i][6]}  ');
  }
  screenDisplayGrid();
}

List<List<String>> swipeRightFunction(
    var listOfElement, int maxColumns, int index) {
  var a = listOfElement[index][6];
  for (int i = maxRows - 2; i >= 0; i--) {
    listOfElement[index][i + 1] = listOfElement[index][(i) % maxColumns];
  }
  listOfElement[index][0] = a;
  return listOfElement;
}

void testcaseSwipeRight(var index, var listOfElement, var oldValueOf1stColumn,
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

void screenDisplayGrid() {
  print(" ");
  print("----------Grid of 3*3----------");
  for (int i = 2; i < 5; i++) {
    print(
        ' ${listOfElement[i][2]}  ${listOfElement[i][3]}  ${listOfElement[i][4]} ');
  }
  matchingFunction();
}

void matchingFunction() {
  if (listOfElement[3][2] == resultSet.elementAt(0) ||
      listOfElement[3][2] == resultSet.elementAt(1) ||
      listOfElement[3][2] == resultSet.elementAt(2)) {
    print("Match Character");
  } else {
    print("Not Match Character");
  }

  if (listOfElement[3][3] == resultSet.elementAt(0) ||
      listOfElement[3][3] == resultSet.elementAt(1) ||
      listOfElement[3][3] == resultSet.elementAt(2)) {
    print("Match Character");
  } else {
    print("Not Match Character");
  }

  if (listOfElement[3][4] == resultSet.elementAt(0) ||
      listOfElement[3][4] == resultSet.elementAt(1) ||
      listOfElement[3][4] == resultSet.elementAt(2)) {
    print('Match Character');
  } else {
    print('Not Match Character');
  }
}
