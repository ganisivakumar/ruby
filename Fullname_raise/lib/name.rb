class Name
  
  def initialize(firstname, lastname)
    begin 
      raise RuntimeError, "First_name cannot be empty" if firstname.empty?
      raise RuntimeError, "first letter of First_name should be capital" if (firstname != firstname.capitalize)
      raise RuntimeError, "Last_name cannot be empty" if lastname.empty?
    end 
    @first_name = firstname
    @last_name = lastname
  end

  def to_s
    "Entered name is: #{@first_name} #{@last_name} "
  end

end

