require 'user'

describe User do
  describe '.new' do
    it 'has an id, name, email and password' do
      expect(subject).to respond_to(:id)
      expect(subject).to respond_to(:name)
      expect(subject).to respond_to(:email)
      expect(subject).to respond_to(:password_digest)
    end
  end
  
  context 'with valid input' do
    describe '#self.create' do
      it 'returns a new user' do
        test_sign_up = described_class.create(name: 'Catty', email: 'McCat@face.com', password_digest: 'P@s2word123')
        expect(test_sign_up).to be_a(User)
        expect(test_sign_up.name).to eq 'Catty'
        expect(test_sign_up.email).to eq 'McCat@face.com'
      end
    end
  end
end
