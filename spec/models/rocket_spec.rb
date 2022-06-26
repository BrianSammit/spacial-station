require 'rails_helper'

RSpec.describe Rocket, :type => :model do

  Category.create(name: 'nave category')

  subject {
    described_class.new(name: 'Saturno V', fuel: 'H(liq)+O(liq)', country: 'EE.UU', activity: '1967-1973', category_id: 1 , img_url: 'https://upload.wikimedia.org/wikipedia/commons/9/9e/Apollo_4_Saturn_V%2C_s67-50531.jpg') }
  
  describe "validations" do
    it { should validate_presence_of :name }
  end

  describe 'relationships' do
    it {should belong_to :category}
  end

  it "is valid with valid attributes" do 
    expect(subject).to be_valid
  end

  it "is not valid without a name" do 
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a fuel" do
    subject.fuel = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a country" do
    subject.country = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a activity" do
    subject.activity = nil
    expect(subject).to_not be_valid
  end
  
  it "is not valid without a category_id" do
    subject.category_id = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a img_url" do
    subject.img_url = nil
    expect(subject).to_not be_valid
  end

end
