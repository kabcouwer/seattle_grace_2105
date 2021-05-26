class Doctor
  attr_reader :doctor,
              :name,
              :specialty,
              :education,
              :salary

  def initialize(attributes)
    @name = attributes[:name]
    @specialty = attributes[:specialty]
    @education = attributes[:education]
    @salary = attributes[:salary]
  end
end
