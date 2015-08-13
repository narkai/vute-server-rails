module Helpers
    def json
      @json ||= JSON.parse(response.body)
    end

    # def token
    #   @token ||= @json["access_token"]
    #   # "9b439a086e73c9b05026c1eb901ce7c5098da559ccfb456bca3527c669879659"
    # end
end
