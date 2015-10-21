Dir['../lib/*.rb'].each {|f| require_relative(f)}

name = ARGV[0].to_s 
ARGV.shift

input = InputParser.new(name, ARGV)
versions = VersionFinder.new(name)
output = Parser.new(versions.vget, input.operators)
output.output
