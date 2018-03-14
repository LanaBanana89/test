require_relative 'test.rb'
require_relative 'result_printer.rb'

name = ARGV[0]

if Gem.win_platform? && ARGV[0]
  name = name.encode("UTF-8")
end

test = Test.new
puts "Тест на уровень общительности. Вам необходимо ответить на #{test.questions.count} впоросов.\n\n"

test.scoring_points

result = ResultPrinter.new
result.print_result(test.points, name)
