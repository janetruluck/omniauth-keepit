require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Keepit < OmniAuth::Strategies::OAuth2
      option :name, :keepit

      option :client_options, {
        :site => "http://keepitapp.herokuapp.com",
        :authorize_url => "/oauth/authorize"
      }

      uid { raw_info["id"] }

      info do
        {
          :email => raw_info["email"],
          :token => raw_info["token"],
        }
      end

      def raw_info
        @raw_info ||= access_token.get('user').parsed
      end
    end
  end
end
