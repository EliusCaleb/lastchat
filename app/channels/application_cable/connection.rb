module ApplicationCable
  class Connection < ActionCable::Connection::Base

    identified_by :current_user
    
    def connect
      self.current_user = find_verified_user
    end

    private
      def find_verified_user
        if verified_user = User.find_by(id: cookies.encrypted['_session_id']['user_id'])
          verified_user
        else
          reject_unauthorized_connection
        end
      end
  end
  end
end