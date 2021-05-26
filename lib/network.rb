
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

  def highest_paid_doctor
    doctors_array = []
    @hospitals.each do |hospital|
      doctors_array << hospital.highest_paid
    end
    doctors_array.sort_by do |doctor|
      doctor.salary
    end
    doctors_array.last
  end

  def doctors_by_hospital
    doctors_hash = Hash.new { |hash, key| hash[key] = [] }
    @hospitals.select do |hospital|
      hospital.doctors.select do |doctor|
        doctors_hash[hospital] << doctor.name
      end
    end
    doctors_hash
  end
end
