Warden::Strategies.add(:password) do
  def authenticate!
    user = User.find_by(name: params['name'])

    if user.nil?
      throw(:warden, message: 'The username you entered does not exist.')
    elsif user.authenticate(params['password'])
      success!(user)
    else
      throw(:warden, message: 'The username and password combination does not match')
    end
  end
end
