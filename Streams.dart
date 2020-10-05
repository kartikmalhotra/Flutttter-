Stream<int> makeStream(int max) async* {
  // Creating a Stream of integers from 1 to 5
    for (int i = 1; i <= max; i++) {
        yield i;
    }
}

void loopStream(Stream<int> stream) async {
  int sum = 0;
  // Loop over to all the elements of the Stream to calculate sum
  await for(var i in stream)
  {
    sum+=i;
  }
  print(sum);
}
void main() async
{
  Stream<int> i= await makeStream(5);
  loopStream(i);
  
  //print(i);
}
