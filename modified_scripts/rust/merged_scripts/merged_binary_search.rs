
# gemma_7b CODE

fn binary_search(arr: &[i32], target: i32) -> usize {
    let mut low = 0usize;
    let mut high = arr.len() - 1usize;

    while low <= high {
        let mid = (low + high) / 2usize;

        if arr[mid] == target {
            return mid;
        } else if arr[mid] < target {
            low = mid + 1usize;
        } else {
            high = mid - 1usize;
        }
    }

    -1usize
}

# deepseek-coder_6_7b CODE

pub fn binary_search<T: Ord>(arr: &[T], target: T) -> Option<usize> {
    let mut start = 0;
    let mut end = arr.len();
    
    while start < end {
        let mid = (start + end) / 2;
        
        match arr[mid].cmp(&target) {
            std::cmp::Ordering::Equal => return Some(mid),
            std::cmp::Ordering::Less => start = mid + 1,
            std::cmp::Ordering::Greater => end = mid,
        }
    }
    
    None
}

# qwen2_5-coder_3b CODE

fn binary_search(arr: &[i32], target: i32) -> Option<usize> {
    let mut left = 0;
    let mut right = arr.len() - 1;

    while left <= right {
        let mid = (left + right) / 2;
        if arr[mid] == target {
            return Some(mid);
        } else if arr[mid] < target {
            left = mid + 1;
        } else {
            right = mid - 1;
        }
    }

    None
}

# deepseek-coder_1_3b CODE

fn binary_search(mut list: Vec<i32>, target: i32) -> Option<usize> {    
    let mut start = 0; 
    let mut end = list.len() as isize - 1;   
            
    while (start + 1) < &end{         
        if target == list[(((list.len())as i32/2 + start)/(&mut '0))] {           return Some ((&('a'..='_ as char)).collect::<Vec<_>>().into());    }            
         let mid = (start+end) / 2;       
'_ as char)).collect().into()]{1}))   mid...end = (start + end) / 2;       }        return None;}     if list[mid] == target {         
}
# qwen3_1_7b CODE
fn binary_search<T: PartialEq>(mut arr: Vec<T>, mut l: usize, mut r: usize) -> Option<usize> {
    while l <= r {
        let m = (l + r) / 2;
        if arr[m] < arr[l] {
            r = m - 1;
        } else if arr[m] > arr[r] {
            l = m + 1;
        } else {
            return Some(m);
        }
    }
    None
}
# qwen2_5-coder_7b CODE

fn binary_search<T: Ord>(arr: &[T], target: &T) -> Option<usize> {
    let mut left = 0;
    let mut right = arr.len() - 1;
    
    while left <= right {
        let mid = left + (right - left) / 2;
        
        if arr[mid] == *target {
            return Some(mid);
        } else if arr[mid] < *target {
            left = mid + 1;
        } else {
            right = mid - 1;
        }
    }
    
    None
}

# qwen3_8b CODE
fn binary_search(arr: &[i32], target: i32) -> Option<usize> {
    let mut left = 0;
    let mut right = arr.len() as i32 - 1;
    while left <= right {
        let mid = (left + right) / 2;
        if arr[mid as usize] == target {
            return Some(mid as usize);
        } else if arr[mid as usize] < target {
            left = mid + 1;
        } else {
            right = mid - 1;
        }
    }
    None
}
# gemma_2b CODE

fn binary_search(target: u32, arr: &[u32]) -> i32 {
    let low = 0;
    let high = arr.len();

    while low <= high {
        let mid = (low + high) / 2;
        if arr[mid] == target {
            return mid;
        } else if arr[mid] < target {
            low = mid + 1;
        } else {
            high = mid - 1;
        }
    }

    -1
}
