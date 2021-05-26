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

  # OTHER OPTION FROM REVIEW
  # def total_salary
  #   @doctors.sum do |doctor|
  #     doctor.salary
  #   end
  # end
  #
  # WHAT I DID
  # def lowest_paid_doctor
  #   salary_array = @doctors.sort_by do |doctor|
  #     doctor.salary
  #   end
  #   salary_array[0].name
  # end

  # USING EACH
  # def lowest_paid_doctor
  #   lowest_doctor = @doctors[0]
  #   @doctors.each do |doctor|
  #     if doctor.salary < lowest_doctor.salary
  #     lowest_doctor = doctor
  #     end
  #   end
  #   lowest_doctor.name
  # end

  # BEST OPTION
  def lowest_paid_doctor
    lowest_doctor = @doctors.min_by do |doctor|
      doctor.salary
    end
      lowest_doctor.name
  end

  # WHAT I DID
  # def specialties
  #   specialties_array = []
  #   @doctors.each do |doctor|
  #     specialties_array << doctor.specialty
  #   end
  #   specialties_array
  # end

  # USING MAP
  def specialties
    @doctors.map do |doctor|
      doctor.specialty
    end
  end

  # ADDED THIS METHOD FOR NETWORK CLASS
  def highest_paid
    doctor_array_by_salary = @doctors.sort_by do |doctor|
      doctor.salary
    end
    doctor_array_by_salary.last
  end

end
