module Api
  module V1

    module ErrorRenderer
      def render_error(code_symbol, **options)
        code = Rack::Utils::SYMBOL_TO_STATUS_CODE[code_symbol]
        render_errors([JSONAPI::Error.new({
          id: request.uuid,
          status: code_symbol,
          title: Rack::Utils::HTTP_STATUS_CODES[code]
        }.merge(options))])
      end

      def render_errors(errors)
        errors = errors.map do |error|
          {
            detail: error.detail,
            title: error.title,
            status: error.status,
            id: request.uuid
          }.compact
        end

        render status: errors[0][:status], json: { errors: errors }
      end
    end

  end
end
