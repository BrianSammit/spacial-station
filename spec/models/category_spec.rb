require 'rails_helper'

RSpec.describe Category, :type => :model do

  subject {
    described_class.new(name: 'Nave tripulada') }
  
  describe "validations" do
    it { should validate_presence_of :name }
  end

  describe 'relationships' do
    it {should have_many :rockets}
  end

  it "is valid with valid attributes" do 
    expect(subject).to be_valid
  end

  it "is not valid without a name" do 
    subject.name = nil
    expect(subject).to_not be_valid
  end

end
