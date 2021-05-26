class Hospital
  attr_reader :name,
              :chief_of_surgery,
              :doctors

  def initialize(name, chief_of_surgery, doctors)
    @name = name
    @chief_of_surgery = chief_of_surgery
    @doctors = doctors
  end

  def total_salary
    salaries = 0
    @doctors.each do |doctor|
      salaries += doctor.salary
    end
    salaries
  end

  def lowest_paid_doctor
    salary_array = @doctors.sort_by do |doctor|
      doctor.salary
    end
    salary_array[0].name
  end

  def specialties
    specialties_array = []
    @doctors.each do |doctor|
      specialties_array << doctor.specialty
    end
    specialties_array
  end

end
