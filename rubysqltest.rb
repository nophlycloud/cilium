require 'active_record'
require 'models/restaurant'

def show(event:, context:)
  ActiveRecord::Base.establish_connection(
    adapter: 'mysql2',
    host: ENV['RDS_HOST'],
    username: ENV['RDS_USERNAME'],
    password: ENV['RDS_PASSWORD'],
    database: ENV['RDS_DATABASE']
  )

  # Use a parameterized query
  query = "SELECT * FROM customers INNER JOIN orders ON customers.id = :id"
  # Execute the query with proper binding
  # Avoid SQL injection by using proper binding rather than string interpolation
  result = Platform.find_by_sql([query, { id: event["id"] }])

  # Additional example using parameterized query
  result2 = Smth.find_by_sql(["SELECT * FROM customers INNER JOIN orders ON customers.id = :id", { id: event["id"] }])
  
  {
    body: [result, result2]
  }
end
