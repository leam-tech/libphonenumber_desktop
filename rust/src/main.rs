mod api;
use api::is_valid_number;

fn main() -> () {
    println!(
        "It should be true; Is it? -> {}",
        is_valid_number("01400460446".to_string(), "BD".to_string()).unwrap()
    );
}
