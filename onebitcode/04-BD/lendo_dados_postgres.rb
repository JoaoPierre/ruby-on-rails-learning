require 'pg'

conn = PG.connect(
  dbname: 'acervo_jumpstart_development',
  user: 'joaopierre',
  password: '20344996@',
  host: 'localhost',
  port: 5432
  )

query = 'SELECT * FROM companies'

begin
  result = conn.exec(query)
  puts result[0]
  puts result[0].keys

  result.each do |row|
    puts "ID: #{row['id']}"
  end
ensure
  conn.close if conn
end
