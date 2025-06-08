```crystal
algorithm bubble_sort {
  input: array;
  output: array;

  when:
    (array ≠ empty);

  then:
    let i = 0;
    let j = 1;

    while (j < length(array));
      if (array[j] < array[j - 1]);
        swap(array, j, j - 1);
        j += 1;
      else
        j += 1;
    end

    return array;
}
```