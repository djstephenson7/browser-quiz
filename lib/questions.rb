require 'pg'

class Questions
  def self.all
    connect = PG.connect(dbname: 'quizqestions')
    result = connect.exec("SELECT questions FROM questions;")
    result.map { |question| question['questions'] }
  end
end
