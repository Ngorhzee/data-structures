

import 'package:data_structures/stack.dart';

void main() {
  challengeOne();
  challengeTwo();
}

/// Challenge 1: Reverse a List
///
/// Create a function that prints the contents of a list in reverse order.
void challengeOne() {
  const list = ['d', 'r', 'a', 'w', 'e', 'r'];
  printInReverse(list);

  print(list.reversed);
}

void printInReverse<E>(List<E> list) {
  var stack = Stack<E>();

  for (E value in list) {
    stack.push(value);
  }

  
  for(int value=list.length-1; value>=0; value--){
    print(stack.pop());
  }
}

/// Challenge 2: Balance the parentheses
///
/// Check for balanced parentheses. Given a string, check if there are `(`
/// and `)` characters, and return `true` if the parentheses in the string
/// are balanced. For example:
///
/// h((e))llo(world)()  // balanced parentheses
/// (hello world        // unbalanced parentheses
void challengeTwo() {
  print(checkParentheses('h((e))llo(world)()'));
  print(checkParentheses('(hello world'));
  print(checkParentheses('hello)(world'));
}

bool checkParentheses(String text) {
  var openstack = Stack<String>();
  var closeStack=Stack<String>();

  final open = '(';
  final close = ')';
   List<String>textList=text.split('');

  for (String char in textList) {
    if (char == open) {
      openstack.push(char);
    } else if (char == close) {
      closeStack.push(char);
     
    }
  }
  if(closeStack.isNotEmpty&&openstack.isNotEmpty&&openstack.stackLength==closeStack.stackLength){
    return true;
  }
  return false;
}
