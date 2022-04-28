RSpec.describe Tweet do
  describe 'associations' do
    it { should belong_to(:user).conditions(active: true).order('name desc') }
  end
end
