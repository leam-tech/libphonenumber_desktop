use std::str::FromStr;

use anyhow::{Ok, Result};
use core::result;
use phonenumber::{self, Mode};

pub fn is_valid_number(phone_number: String, region: String) -> Result<bool> {
    if let result::Result::Ok(number) = phonenumber::parse(
        phonenumber::country::Id::from_str(&region).ok(),
        phone_number,
    ) {
        Ok(number.is_valid())
    } else {
        Ok(false)
    }
}

pub fn normalize_phone_number(phone_number: String, region: String) -> Result<String> {
    let phone_number = phonenumber::parse(
        phonenumber::country::Id::from_str(&region).ok(),
        phone_number,
    )?;

    Ok(phone_number.format().mode(Mode::E164).to_string())
}
