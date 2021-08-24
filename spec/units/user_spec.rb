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
end
