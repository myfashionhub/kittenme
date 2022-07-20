root = Pathname.new( 
  File.expand_path('..', File.dirname( __FILE__ )) 
)

Dir.glob(root.join('models/**/*.rb')) do |file|
  require file
end
