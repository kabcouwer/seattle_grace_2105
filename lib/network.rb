
class Network
  attr_reader :name,
              :hospitals

  def initialize(name)
    @name = name
    @hospitals = []
  end

  def add_hospital(hospital)
    @hospitals << hospital
  end

  # HOW I DID IT
  # def highest_paid_doctor
  #   doctors_array = []
  #   @hospitals.each do |hospital|
  #     doctors_array << hospital.highest_paid
  #   end
  #   doctors_array.sort_by do |doctor|
  #     doctor.salary
  #   end
  #   doctors_array.last
  # end

  def highest_paid_doctor
    all_doctors = @hospital.map do |hospital|
      hospital.doctors
    end.flatten
    all_doctors.max_by do |doctor|
      doctor.salary
    end
  end

  # WHAT I DID
  # def doctors_by_hospital
  #   doctors_hash = Hash.new { |hash, key| hash[key] = [] }
  #   @hospitals.select do |hospital|
  #     hospital.doctors.select do |doctor|
  #       doctors_hash[hospital] << doctor.name
  #     end
  #   end
  #   doctors_hash
  # end

  # REVIEW
  def doctors_by_hospital
    result = {}
    @hospitals.each do |hospital|
      result[hospital] = hospital.doctors.map do |doctor|
        doctor.name
      end
    end
  result
  end

end
