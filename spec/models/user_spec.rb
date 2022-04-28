RSpec.describe User do
  describe 'associations' do
    subject { User.new }

    it { should have_many(:tweets) } # expect(subject).to
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:email) }
    it { should allow_values('alex@toptal.com', 'rodrigo@toptal.com').for(:email) }
  end
end
