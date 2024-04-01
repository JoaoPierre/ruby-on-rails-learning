require 'activerecord'

ActiveRecord::Base.estabilish_connection(
  adapter: 'postgresql',
  host: 'localhost',
  username: 'joaopierre',
  password: '20344996@',
  database: 'acervo_jumpstart_development'
  )

  ActiveRecord::Schema.define do
    crete_table :users do |t|
      t.string :nome
      t.string :email
    end
  end

  class User < ActiveRecord::Base
  end

  user = User.new(hash)
