function fibonacci() {
  let a = 0,
      b = 1,
      c;
  while (true) {
    c = a + b;
    a = b;
    b = c;
  }
  return b;
}