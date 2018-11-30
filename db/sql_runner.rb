require('pg')

class SqlRunner()

  def run(sql, values = [])
    begin
      db = PG.connect(dbname: 'codeclan_cinema', dbhost: 'localhost')
      db.prepare("query", sql)
      db.exec_prepared("query", values)
    ensure
      db.close
    end
  end

end
