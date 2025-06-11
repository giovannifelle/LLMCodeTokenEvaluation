
function fibonacci(n) {
    if (n <= 2) return 1;
    var prev = 1, next = 1;
    for (var i = 3; i <= n; i++) {
        var temp = prev + next;
        prev = next;
        next = temp;
    }
    return next;
}
