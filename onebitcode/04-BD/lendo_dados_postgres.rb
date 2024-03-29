require 'pg'

conn = PG.connect (
  dbname: 'fliperama',
  user: 'joaopierre',
  password: '20344996@',
  host: 'localhost'
  port: 5432
)

query = 'SELECT * FROM acervo_jumpstart_development'

begin
  result = conn.exec(query)
end
