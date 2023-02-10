import 'dart:developer';
import "dart:math";

Random rnd = new Random();

enum number { one, two, three, four, five }


String select_element(var alphabet,var currentLearn)
    {
		    Set random = {'alphabat','current_learn'};
			  var pick;
        if(currentLearn.length > 5 && alphabet.length != 0) {
            pick = random.elementAt(rnd.nextInt(random.length));
        } else if(alphabet.length == 0) {
            pick = currentLearn;
        } else {
            pick = 'alphabet';
        }
        if(pick == 'alphabet') {
            return alphabet.elementAt(rnd.nextInt(alphabet.length));
        } else {
            return currentLearn.elementAt(rnd.nextInt(currentLearn.length));
        }
    }
 
void check_element_learnOrNot(var completed, var currentLearn, var element, var n)
    {
        if(n == number.five) {
            completed.add(element);

            // ----------- check if element pick form currentLearn so remove from them -----------
            for(int i=0; i<currentLearn.length; i++) {
                if(element == currentLearn.elementAt(i)) {
                    currentLearn.remove(element);
                }
            }
        } else {
            currentLearn.add(element);
        }
    }
    
void main() {
  // ----------- Declaration -----------
  Set alphabet = {'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'};
    Set  currentLearn = {};
    Set completed = {};
    //var number = ['1','2','3','4','5'];
    var element ;
    Map ForCount = {};

      // ----------- Condition Check -----------
    while(currentLearn.length != 0 || alphabet.length != 0)
    {
      // ----------- Element Pick -----------

        element = select_element(alphabet,currentLearn);
        print(element);

      // ----------- Map & Set Update -----------  
        ForCount.update(
                 '$element',
                 (value) => 1 + value,
                 ifAbsent: () => 1,
             );

        alphabet.remove(element);

      // ----------- Number Select -----------
        // var n = number[rnd.nextInt(number.length)];
        // print(n);

        var num = number.values;
        var randomnumer = num[rnd.nextInt(num.length)];
        print(randomnumer);

      // ----------- Function call to check Element learn or not -----------
        check_element_learnOrNot(completed, currentLearn, element, randomnumer);

      // ----------- Output Print -----------

        print("--- learn list ---");
        print(alphabet);
        print("--- current learn list ---");
        print(currentLearn);
        print("--- complated list ---");
        print(completed);
        print("----------------------------------------------------------------------");
        print(ForCount);

    }
} 