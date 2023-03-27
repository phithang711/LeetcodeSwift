class Solution {
    public int findKthPositive(int[] arr, int k) {
        int startIndex = 0;
        int kIndex = 0;
        int index = 0;

        int sizeArr = arr.length;
        
        while (kIndex < k) {
            index += 1;
            if ((startIndex < sizeArr) && (arr[startIndex] == index)) {
                startIndex += 1;
                continue;
            }

            kIndex += 1;
            if (kIndex == k) {
                return index;
            }
        }

        return index;
    }
}