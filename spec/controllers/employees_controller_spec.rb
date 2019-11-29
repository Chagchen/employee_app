require 'rails_helper'

RSpec.describe EmployeesController, type: :controller do

    # This should return the minimal set of attributes required to create a valid
    # Employee. As you add validations to Employee, be sure to adjust the attributes here as well.
    let(:valid_attributes) {
        { :name => "Test name!", :email => "test@test.com", :position => "theBoss", :phone_number => "604-555-5555", :date_hired => "Apr 3, 2017"  }
    }

    let(:valid_session) { {} }

end