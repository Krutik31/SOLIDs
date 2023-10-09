# This states that high level module should not depend on low level module, instead both should depend on an abstraction.

class UserReader
  def get
    puts 'NotImplemented'
  end
end

class PostgresUserReader < UserReader
  def get
    puts 'Code to read the data from postgres.'
  end
end

class PayslipGenerator
  def initialize(datasource)
    @datasource = datasource
  end

  def generate
    # Code to generate payslip
    data = datasource.get
  end
end

ds = PostgresUserReader.new
PayslipGenerator.new(ds)
