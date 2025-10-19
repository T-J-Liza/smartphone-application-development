int maxNumber(int a, int b, int c) {
  int max;
  if(a>b) max = a;
  else max = b;
  if(max<c) max = c;

  return max;
}

void main() {
  print(maxNumber(10, 25, 15));
}