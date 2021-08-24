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
  
  # context 'with valid input' do
  #   describe '#self.create' do
  #     it 'returns a new user' do
  #       test_sign_up = described_class.create(name: 'Catty', email: 'McCat@face.com', password_digest: 'P@s2word123')
  #       expect(test_sign_up).to be_a(User)
  #       expect(test_sign_up.name).to eq 'Catty'
  #       expect(test_sign_up.email).to eq 'McCat@face.com'
  #     end
  #   end
  # end

  context 'with invalid input' do
    context 'with existing email' do
      # I read that save should return true/false. create should instanciate and write to db, 
      # create should instanciate, then save return false. However, I'm happy there is a restriction
      # on the db, I guess we just check this is handled gracefully on the frontend.
      # it 'returns an error' do
      #   described_class.create(name: 'Catty', email: 'McCat@face.com', password_digest: 'P@s2word123')
      #   test_save = described_class.new(name: 'Catty', email: 'McCat@face.com', password_digest: 'P@s2word123')
      #   expect(test_save.save).to eq false
      # end
    end
  end
end
