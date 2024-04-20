def parse_invoices(invoice_data)
  invoice_data.each_line do |invoice|
    match_data = invoice.match(/(\d{4}-\d{2}-\d{2}) - ([\w\d]+) - ([\w\s]+) - (\$\d+(\.\d+)?)/)
    puts "Date: #{match_data[1]}, Invoice Number: #{match_data[2]}, Client: #{match_data[3]}, Amount: #{match_data[4]}"
  end
end

invoice_entries = <<-INVOICES
2023-03-01 - INV001 - Acme Corp - $1000
2023-03-02 - INV002 - Beta LLC - $2050
2023-03-03 - INV003 - Gamma Inc - $3500
INVOICES

parse_invoices(invoice_entries)
