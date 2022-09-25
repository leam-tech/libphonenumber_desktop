use std::str::FromStr;

use anyhow::{Ok, Result};
use core::result;
use phonenumber::{self, Mode};

pub struct RegionInfo {
    pub country_code: u32,
    pub formatted_phone_number: String,
}

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

pub fn get_region_info(phone_number: String, region: String) -> Result<RegionInfo> {
    let id = phonenumber::country::Id::from_str(&region).ok();
    let phone_number = phonenumber::parse(id, phone_number)?;

    Ok(RegionInfo {
        country_code: phone_number.code().value().into(),
        formatted_phone_number: phone_number.format().mode(Mode::National).to_string(),
    })
}
