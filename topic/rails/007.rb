DateTime.current

# solution
Returns Time.zone.now.to_datetime when Time.zone or config.time_zone are set, otherwise returns Time.now.to_datetime.
