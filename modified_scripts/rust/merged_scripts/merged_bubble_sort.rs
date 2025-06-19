
# gemma_7b CODE

fn bubble_sort(arr: &mut [i32]) {
    for i in 0..(arr.len() - 1) {
        for j in 0..(arr.len() - i - 1) {
            if arr[j] > arr[j + 1] {
                arr.swap(j, j + 1);
            }
        }
    }
}

# deepseek-coder_6_7b CODE

pub fn bubble_sort<T: Ord>(arr: &mut [T]) {
    let n = arr.len();
    for _ in 0..n {
        let mut swapped = false;
        for i in 1..n {
            if arr[i - 1] > arr[i] {
                arr.swap(i - 1, i);
                swapped = true;
            }
        }
        if !swapped {
            break;
        }
    }
}

# qwen2_5-coder_3b CODE

fn bubble_sort(arr: &mut [i32]) {
    let mut swapped = true;
    while swapped {
        swapped = false;
        for i in 0..arr.len() - 1 {
            if arr[i] > arr[i + 1] {
                arr.swap(i, i + 1);
                swapped = true;
            }
        }
    }
}

# deepseek-coder_1_3b CODE

pub fn bubble_sort<T: Ord>(arr: &mut [T]) {
    let len = arr.len();
     for i in (0..len).rev() { 
         for j in 1..=i {   
              if !arr[j - 1].gt(&arr[j]) { 
                  arr.swap(j - 1, j); 
              }  
         } 
     }   
}      
# qwen3_1_7b CODE
fn bubble_sort(mut arr: Vec<i32>) {  
    let n = arr.len();  
    for i in 0..n {  
        for j in 0..(n - i - 1) {  
            if arr[j] > arr[j + 1] {  
                arr.swap(j, j + 1);  
            }  
        }  
    }  
}
# qwen2_5-coder_7b CODE

fn bubble_sort(arr: &mut [i32]) {
    let n = arr.len();
    for i in 0..n {
        for j in 0..(n-i-1) {
            if arr[j] > arr[j+1] {
                arr.swap(j, j+1);
            }
        }
    }
}

# qwen3_8b CODE
fn bubble_sort(arr: &mut [i32]) {
    let n = arr.len();
    for i in 0..n {
        for j in 0..n - i - 1 {
            if arr[j] > arr[j + 1] {
                let temp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = temp;
            }
        }
    }
}
# gemma_2b CODE

fn bubble_sort(nums: &mut [i32]) {
    for i in 0..(nums.len() - 1) {
        for j in 0..(nums.len() - i - 1) {
            if nums[j] > nums[j + 1] {
                swap(&mut nums[j], &mut nums[j + 1]);
            }
        }
    }
}
