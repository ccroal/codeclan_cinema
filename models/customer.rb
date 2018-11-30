require_relative('../db/sql_runner.rb')

def Customer

  attr_reader :id
  attr_accessor :name, :funds

  def initalize(options)
    @id = options['id'].to_i if ['id']
    @name = options['name']
    @funds = options['funds'].to_i
  end

end
