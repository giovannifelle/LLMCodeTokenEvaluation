#include <algorithm>

template <typename Iter>
void binary_search(Iter first, Iter last, typename std::iterator_traits<Iter>::value_type value) {
    while (first < last) {
        Iter mid = first + (last - first) / 2;
        if (*mid < value) {
            first = mid + 1;
        } else {
            last = mid;
        }
    }
    if (*first < value) {
        first = last;
    }
}