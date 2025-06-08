public class BubbleSort {
    public static void main(String[] args) {
        // Example usage
        int[] array = {5, 3, 8, 4, 2};
        bubbleSort(array);
        System.out.println("Sorted array: " + Arrays.toString(array));
    }

    public static void bubbleSort(int[] array) {
        int n = array.length;
        for (int i = 0; i < n - 1; i++) {
            for (int j = 0; j < n - i - 1; j++) {
                if (array[j] > array[j + 1]) {
                    int temp = array[j];
                    array[j] = array[j + 1];
                    array[j + 1] = temp;
                }
            }
        }
    }
}