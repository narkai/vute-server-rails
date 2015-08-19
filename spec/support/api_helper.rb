module ApiHelper

    def json
      @json ||= JSON.parse(response.body)
    end

    def authHeaderValue(user_id)
      # p "---"
      # p user.email
      # p user.password
      # p user.password_confirmation
      # p user.password_digest
      # p "---"

      # res = Net::HTTP.post_form URI('/oauth/token'), { "grant_type" => "password", "email" => user.email, "password" => user.password }
      # p res.body

      token = Doorkeeper::AccessToken.find_or_create_for(nil, user_id, '', 10.minutes.from_now, nil).token
      header_value = "Bearer " + token
    end

end
