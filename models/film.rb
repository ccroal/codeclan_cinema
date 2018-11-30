require_relative('../db/sql_runner.rb')

class Film

  attr_reader :id
  attr_accessor :title, :price

  def initalize(options)
    @id = options['id'].to_i if ['id']
    @title = options['title']
    @price = options['price'].to_i
  end

end
