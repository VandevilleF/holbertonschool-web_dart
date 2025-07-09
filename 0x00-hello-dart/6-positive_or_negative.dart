void main(List<String> args) {
  /*
  Write Your code below
   */
   var n = int.parse(args[0]);
   if (n > 0) {
	print('$n is positive');
   } else if (n == 0) {
	print('$n is zero');
   } else {
	print('$n is negative');
   }
}
