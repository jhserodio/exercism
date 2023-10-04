use time::{PrimitiveDateTime as DateTime, Duration, offset::Utc};

// Returns a DateTime one billion seconds after start.
pub fn after(start: DateTime) -> DateTime {
    let start_milli = start.millisecond();
    let now_milli = DateTime::now().millisecond();

    let duration = Duration::from_millis(now_milli - start_milli);
    
    PrimitiveDateTime::from_unix_duration(duration)
}
