root = Pathname.new( 
  File.expand_path('..', File.dirname( __FILE__ )) 
)

Dir.glob(root.join('models/**/*.rb')) do |file|
	require file
end

db_url = ENV['DATABASE_URL'] || 
        'postgres://nessa:postgres@localhost/kitten_me_development'
db = URI.parse(db_url)

ActiveRecord::Base.establish_connection(
  :adapter  => 'postgresql',
  :host     => db.host,
  :username => db.user,
  :password => db.password,
  :database => db.path[1..-1],
  :encoding => 'utf8'
)
