void main() {
  const maxRows = 7;
  const maxColumns = 7;
  var displayNumber = [];

  var fullListOfNumber = [
    for (var row = 0; row < maxRows; row += 1)
      [
        for (var column = 0; column < maxColumns; column += 1)
          1 + row + column * maxRows
      ],
  ];

  print("All the element of the matrix");
  print(fullListOfNumber);

  int index1 = 0;
  int index2 = 0;

  print("Displyed 3*3 matrix");
  displayNumber =
      updateMatrix(fullListOfNumber, maxRows, maxColumns, index1, index2);
  print(displayNumber);
  print("");
  print("after swap up the matrix is: ");
  displayNumber =
      updateMatrix(fullListOfNumber, maxRows, maxColumns, ++index1, index2);
  print(displayNumber);
  print("");
  print("after swap down the matrix is: ");
  displayNumber =
      updateMatrix(fullListOfNumber, maxRows, maxColumns, --index1, index2);
  print(displayNumber);
  print("");
  print("after swap left the matrix is: ");
  displayNumber =
      updateMatrix(fullListOfNumber, maxRows, maxColumns, index1, ++index2);
  print(displayNumber);
  print("");
  print("after swap left the matrix is: ");
  displayNumber =
      updateMatrix(fullListOfNumber, maxRows, maxColumns, index1, ++index2);
  print(displayNumber);
  print("");
  print("after swap up the matrix is: ");
  displayNumber =
      updateMatrix(fullListOfNumber, maxRows, maxColumns, ++index1, index2);
  print(displayNumber);
  print("");
  print("after swap right the matrix is: ");
  displayNumber =
      updateMatrix(fullListOfNumber, maxRows, maxColumns, index1, --index2);
  print(displayNumber);
}

List updateMatrix(
    var fullListOfNumber, int maxRows, int maxColumns, int index1, int index2) {
  var displayNumber = [
    for (var row = index1; row < index1 + 3; row += 1)
      [
        for (var column = index2; column < index2 + 3; column += 1)
          fullListOfNumber[row % maxRows][column % maxColumns]
      ],
  ];
  return displayNumber;
}
