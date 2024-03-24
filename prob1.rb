def parse_log_entry(log)
  pattern = /^(INFO|WARN|ERROR): (.+)$/
  match = log.match(pattern)
  [match[1], match[2]] if match
end

log_entry = "ERROR: Disk space low"
puts parse_log_entry(log_entry).inspect
