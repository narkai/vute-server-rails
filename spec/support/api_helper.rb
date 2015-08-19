module ApiHelper

    def json
      @json ||= JSON.parse(response.body)
    end

    # def getToken(user)
    #
    #   p "---"
    #   p user.email
    #   p user.password
    #   p user.password_confirmation
    #   p user.password_digest
    #   p "---"
    #
    #   res = Net::HTTP.post_form URI('localhost:4000/oauth/token'), { "grant_type" => "password", "email" => user.email, "password" => user.password }
    #   p res.body
    # end

end
