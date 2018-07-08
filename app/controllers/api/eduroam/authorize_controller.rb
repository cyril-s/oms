module Api
  module Eduroam
    class AuthorizeController < ApiController
      rescue_from EduroamAuthorize::NotFoundError, with: :not_found

      def show
        data = EduroamAuthorize.authorize!(params[:login])
        render json: data
      end

      def not_found
        head 404
      end
    end
  end
end