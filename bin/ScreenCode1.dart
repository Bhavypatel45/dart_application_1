//import 'package:chalkdart/chalk.dart';

const maxRows = 7;
const maxColumns = 7;
const alphabet = 26;
var alphabets =
    List.generate(alphabet, (index) => String.fromCharCode(index + 65));
var listOfElement = List.generate(maxRows, (_) => List.filled(maxRows, ''));
var firstcharacter = "Y";
var secondCharacter = "Z";
var thirdCharacter = "AA";

void main() {
  addElementInList();

  print("initial Matrix of Element: ");
  for (int i = 0; i < maxRows; i++) {
    print(
        ' ${listOfElement[i][0]}  ${listOfElement[i][1]}  ${listOfElement[i][2]}  ${listOfElement[i][3]}  ${listOfElement[i][4]}  ${listOfElement[i][5]}  ${listOfElement[i][6]}  ');
  }
  print(" ");
  print("----------Grid of 3*3----------");
  screenDisplayGrid();
  matchingFunction();
  print("-------------------------------------------------");
  print("Swipe after 3rd Column Down: ");
  clickFunctionSwipeDownFirstColumn();
  print(" ");
  print("----------Grid of 3*3----------");
  screenDisplayGrid();
  matchingFunction();
  print("-------------------------------------------------");
  print("Swipe after 4th Column Down: ");
  clickFunctionSwipeDownSecondColumn();
  print(" ");
  print("----------Grid of 3*3----------");
  screenDisplayGrid();
  matchingFunction();
  print("-------------------------------------------------");
  print("Swipe after 5th Column Down: ");
  clickFunctionSwipeDownThirdColumn();
  print(" ");
  print("----------Grid of 3*3----------");
  screenDisplayGrid();
  matchingFunction();
  print("-------------------------------------------------");
  print("Swipe after 3rd Column Up: ");
  clickFunctionSwipeUpFirstColumn();
  print(" ");
  print("----------Grid of 3*3----------");
  screenDisplayGrid();
  matchingFunction();
  print("-------------------------------------------------");
  print("Swipe after 4th Column Up: ");
  clickFunctionSwipeUpSecondColumn();
  print(" ");
  print("----------Grid of 3*3----------");
  screenDisplayGrid();
  matchingFunction();
  print("-------------------------------------------------");
  print("Swipe after 5th Column Up: ");
  clickFunctionSwipeUpThirdColumn();
  print(" ");
  print("----------Grid of 3*3----------");
  screenDisplayGrid();
  matchingFunction();
  print("-------------------------------------------------");
  print("Swipe after 3rd Row Left: ");
  clickFunctionSwipeLeftFirstRow();
  print(" ");
  print("----------Grid of 3*3----------");
  screenDisplayGrid();
  matchingFunction();
  print("-------------------------------------------------");
  print("Swipe after 4th Row Left: ");
  clickFunctionSwipeLeftSecondRow();
  print(" ");
  print("----------Grid of 3*3----------");
  screenDisplayGrid();
  matchingFunction();
  print("-------------------------------------------------");
  print("Swipe after 5th Row Left: ");
  clickFunctionSwipeLeftThirdRow();
  print(" ");
  print("----------Grid of 3*3----------");
  screenDisplayGrid();
  matchingFunction();
  print("-------------------------------------------------");
  print("Swipe after 3rd Row Right: ");
  clickFunctionSwipeRightFirstRow();
  print(" ");
  print("----------Grid of 3*3----------");
  screenDisplayGrid();
  matchingFunction();
  print("-------------------------------------------------");
  print("Swipe after 4th Row Right: ");
  clickFunctionSwipeRightSecondRow();
  print(" ");
  print("----------Grid of 3*3----------");
  screenDisplayGrid();
  matchingFunction();
  print("-------------------------------------------------");
  print("Swipe after 5th Row Right: ");
  clickFunctionSwipeRightThirdRow();
  print(" ");
  print("----------Grid of 3*3----------");
  screenDisplayGrid();
  matchingFunction();
  print("-------------------------------------------------");
}

// Add element into a List

void addElementInList() {
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

void clickFunctionSwipeDownFirstColumn() {
  var index = 2;
  var oldValueOf1stColumn = listOfElement[0][index];
  var oldValueOf2ndColumn = listOfElement[1][index];
  var oldValueOf3rdColumn = listOfElement[2][index];
  listOfElement = swipeDownFunction(listOfElement, maxColumns, index);
  testcaseSwipeDown(index, listOfElement, oldValueOf1stColumn,
      oldValueOf2ndColumn, oldValueOf3rdColumn);
  for (int i = 0; i < maxRows; i++) {
    print(
        ' ${listOfElement[i][0]}  ${listOfElement[i][1]}  ${listOfElement[i][2]}  ${listOfElement[i][3]}  ${listOfElement[i][4]}  ${listOfElement[i][5]}  ${listOfElement[i][6]}  ');
  }
}

void clickFunctionSwipeDownSecondColumn() {
  var index = 3;
  var oldValueOf1stColumn = listOfElement[0][index];
  var oldValueOf2ndColumn = listOfElement[1][index];
  var oldValueOf3rdColumn = listOfElement[2][index];
  listOfElement = swipeDownFunction(listOfElement, maxColumns, index);
  testcaseSwipeDown(index, listOfElement, oldValueOf1stColumn,
      oldValueOf2ndColumn, oldValueOf3rdColumn);
  for (int i = 0; i < maxRows; i++) {
    print(
        ' ${listOfElement[i][0]}  ${listOfElement[i][1]}  ${listOfElement[i][2]}  ${listOfElement[i][3]}  ${listOfElement[i][4]}  ${listOfElement[i][5]}  ${listOfElement[i][6]}  ');
  }
}

void clickFunctionSwipeDownThirdColumn() {
  var index = 4;
  var oldValueOf1stColumn = listOfElement[0][index];
  var oldValueOf2ndColumn = listOfElement[1][index];
  var oldValueOf3rdColumn = listOfElement[2][index];
  listOfElement = swipeDownFunction(listOfElement, maxColumns, index);
  testcaseSwipeDown(index, listOfElement, oldValueOf1stColumn,
      oldValueOf2ndColumn, oldValueOf3rdColumn);
  for (int i = 0; i < maxRows; i++) {
    print(
        ' ${listOfElement[i][0]}  ${listOfElement[i][1]}  ${listOfElement[i][2]}  ${listOfElement[i][3]}  ${listOfElement[i][4]}  ${listOfElement[i][5]}  ${listOfElement[i][6]}  ');
  }
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

void clickFunctionSwipeUpFirstColumn() {
  var index = 2;
  var oldValueOf1stColumn = listOfElement[1][index];
  var oldValueOf2ndColumn = listOfElement[2][index];
  var oldValueOf3rdColumn = listOfElement[3][index];
  listOfElement = swipeUpFunction(listOfElement, maxColumns, index);
  testcaseSwipeUp(index, listOfElement, oldValueOf1stColumn,
      oldValueOf2ndColumn, oldValueOf3rdColumn);
  for (int i = 0; i < maxRows; i++) {
    print(
        ' ${listOfElement[i][0]}  ${listOfElement[i][1]}  ${listOfElement[i][2]}  ${listOfElement[i][3]}  ${listOfElement[i][4]}  ${listOfElement[i][5]}  ${listOfElement[i][6]}  ');
  }
}

void clickFunctionSwipeUpSecondColumn() {
  var index = 3;
  var oldValueOf1stColumn = listOfElement[1][index];
  var oldValueOf2ndColumn = listOfElement[2][index];
  var oldValueOf3rdColumn = listOfElement[3][index];
  listOfElement = swipeUpFunction(listOfElement, maxColumns, index);
  testcaseSwipeUp(index, listOfElement, oldValueOf1stColumn,
      oldValueOf2ndColumn, oldValueOf3rdColumn);
  for (int i = 0; i < maxRows; i++) {
    print(
        ' ${listOfElement[i][0]}  ${listOfElement[i][1]}  ${listOfElement[i][2]}  ${listOfElement[i][3]}  ${listOfElement[i][4]}  ${listOfElement[i][5]}  ${listOfElement[i][6]}  ');
  }
}

void clickFunctionSwipeUpThirdColumn() {
  var index = 4;
  var oldValueOf1stColumn = listOfElement[1][index];
  var oldValueOf2ndColumn = listOfElement[2][index];
  var oldValueOf3rdColumn = listOfElement[3][index];
  listOfElement = swipeUpFunction(listOfElement, maxColumns, index);
  testcaseSwipeUp(index, listOfElement, oldValueOf1stColumn,
      oldValueOf2ndColumn, oldValueOf3rdColumn);
  for (int i = 0; i < maxRows; i++) {
    print(
        ' ${listOfElement[i][0]}  ${listOfElement[i][1]}  ${listOfElement[i][2]}  ${listOfElement[i][3]}  ${listOfElement[i][4]}  ${listOfElement[i][5]}  ${listOfElement[i][6]}  ');
  }
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

void clickFunctionSwipeLeftFirstRow() {
  var index = 2;
  var oldValueOf1stRow = listOfElement[index][1];
  var oldValueOf2ndRow = listOfElement[index][2];
  var oldValueOf3rdRow = listOfElement[index][3];
  listOfElement = swipeLeftFunction(listOfElement, maxRows, index);
  testcaseSwipeLeft(index, listOfElement, oldValueOf1stRow, oldValueOf2ndRow,
      oldValueOf3rdRow);
  for (int i = 0; i < maxRows; i++) {
    print(
        ' ${listOfElement[i][0]}  ${listOfElement[i][1]}  ${listOfElement[i][2]}  ${listOfElement[i][3]}  ${listOfElement[i][4]}  ${listOfElement[i][5]}  ${listOfElement[i][6]}  ');
  }
}

void clickFunctionSwipeLeftSecondRow() {
  var index = 3;
  var oldValueOf1stRow = listOfElement[index][1];
  var oldValueOf2ndRow = listOfElement[index][2];
  var oldValueOf3rdRow = listOfElement[index][3];
  listOfElement = swipeLeftFunction(listOfElement, maxRows, index);
  testcaseSwipeLeft(index, listOfElement, oldValueOf1stRow, oldValueOf2ndRow,
      oldValueOf3rdRow);
  for (int i = 0; i < maxRows; i++) {
    print(
        ' ${listOfElement[i][0]}  ${listOfElement[i][1]}  ${listOfElement[i][2]}  ${listOfElement[i][3]}  ${listOfElement[i][4]}  ${listOfElement[i][5]}  ${listOfElement[i][6]}  ');
  }
}

void clickFunctionSwipeLeftThirdRow() {
  var index = 4;
  var oldValueOf1stRow = listOfElement[index][1];
  var oldValueOf2ndRow = listOfElement[index][2];
  var oldValueOf3rdRow = listOfElement[index][3];
  listOfElement = swipeLeftFunction(listOfElement, maxRows, index);
  testcaseSwipeLeft(index, listOfElement, oldValueOf1stRow, oldValueOf2ndRow,
      oldValueOf3rdRow);
  for (int i = 0; i < maxRows; i++) {
    print(
        ' ${listOfElement[i][0]}  ${listOfElement[i][1]}  ${listOfElement[i][2]}  ${listOfElement[i][3]}  ${listOfElement[i][4]}  ${listOfElement[i][5]}  ${listOfElement[i][6]}  ');
  }
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

void clickFunctionSwipeRightFirstRow() {
  var index = 2;
  var oldValueOf1stRow = listOfElement[index][1];
  var oldValueOf2ndRow = listOfElement[index][2];
  var oldValueOf3rdRow = listOfElement[index][3];
  listOfElement = swipeRightFunction(listOfElement, maxRows, index);
  testcaseSwipeRight(index, listOfElement, oldValueOf1stRow, oldValueOf2ndRow,
      oldValueOf3rdRow);
  for (int i = 0; i < maxRows; i++) {
    print(
        ' ${listOfElement[i][0]}  ${listOfElement[i][1]}  ${listOfElement[i][2]}  ${listOfElement[i][3]}  ${listOfElement[i][4]}  ${listOfElement[i][5]}  ${listOfElement[i][6]}  ');
  }
}

void clickFunctionSwipeRightSecondRow() {
  var index = 3;
  var oldValueOf1stRow = listOfElement[index][1];
  var oldValueOf2ndRow = listOfElement[index][2];
  var oldValueOf3rdRow = listOfElement[index][3];
  listOfElement = swipeRightFunction(listOfElement, maxRows, index);
  testcaseSwipeRight(index, listOfElement, oldValueOf1stRow, oldValueOf2ndRow,
      oldValueOf3rdRow);
  for (int i = 0; i < maxRows; i++) {
    print(
        ' ${listOfElement[i][0]}  ${listOfElement[i][1]}  ${listOfElement[i][2]}  ${listOfElement[i][3]}  ${listOfElement[i][4]}  ${listOfElement[i][5]}  ${listOfElement[i][6]}  ');
  }
}

void clickFunctionSwipeRightThirdRow() {
  var index = 4;
  var oldValueOf1stRow = listOfElement[index][1];
  var oldValueOf2ndRow = listOfElement[index][2];
  var oldValueOf3rdRow = listOfElement[index][3];
  listOfElement = swipeRightFunction(listOfElement, maxRows, index);
  testcaseSwipeRight(index, listOfElement, oldValueOf1stRow, oldValueOf2ndRow,
      oldValueOf3rdRow);
  for (int i = 0; i < maxRows; i++) {
    print(
        ' ${listOfElement[i][0]}  ${listOfElement[i][1]}  ${listOfElement[i][2]}  ${listOfElement[i][3]}  ${listOfElement[i][4]}  ${listOfElement[i][5]}  ${listOfElement[i][6]}  ');
  }
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
  for (int i = 2; i < 5; i++) {
    print(
        ' ${listOfElement[i][2]}  ${listOfElement[i][3]}  ${listOfElement[i][4]} ');
  }
}

void matchingFunction() {
  if (listOfElement[3][2] == firstcharacter ||
      listOfElement[3][2] == secondCharacter ||
      listOfElement[3][2] == thirdCharacter) {
    print("Match Character");
  } else {
    print("Not Match Character");
  }

  if (listOfElement[3][3] == firstcharacter ||
      listOfElement[3][3] == secondCharacter ||
      listOfElement[3][3] == thirdCharacter) {
    print("Match Character");
  } else {
    print("Not Match Character");
  }

  if (listOfElement[3][4] == firstcharacter ||
      listOfElement[3][4] == secondCharacter ||
      listOfElement[3][4] == thirdCharacter) {
    print('Match Character');
  } else {
    print('Not Match Character');
  }
}
