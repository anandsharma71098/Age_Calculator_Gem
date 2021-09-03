# frozen_string_literal: true

require_relative "agecalci/version"
require 'date'

module Agecalci
  class Error < StandardError; end
  # Your code goes here...
  def age_calculator(date)
    
    current = ((Date.today).to_s).split("-")
    current_date=current[2].to_i
    current_month=current[1].to_i
    current_year=current[0].to_i
    s=date.split("/")
    birth_date=s[0].to_i
    birth_month=s[1].to_i
    birth_year=s[2].to_i
    month =[31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    if birth_date > current_date
        current_month = current_month - 1
        current_date = current_date + month[birth_month-1]
    end
         
    if birth_month > current_month        
        current_year = current_year - 1
        current_month = current_month + 12
    end
         
    calculated_date = current_date - birth_date;
    calculated_month = current_month - birth_month;
    calculated_year = current_year - birth_year;
     
    puts "Years: #{calculated_year}, Months: #{calculated_month}, Days: #{calculated_date}"
  end
end

class Object
  include Agecalci
end