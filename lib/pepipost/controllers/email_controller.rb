module Pepipost
  class Email
    @@instance = Email.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # `Sending Mails` – This API is used for sending emails. Pepipost supports REST as well JSON formats for the input
    # @param [String] api_key Required parameter: Your API Key
    # @param [String] content Required parameter: Email body in html (to use attributes to display dynamic values such as name, account number, etc. for ex. [% NAME %] for ATT_NAME , [% AGE %] for ATT_AGE etc.)
    # @param [String] from Required parameter: From email address
    # @param [String] recipients Required parameter: Email addresses for recipients (multiple values allowed)
    # @param [String] subject Required parameter: Subject of the Email
    # @param [String] att_name Optional parameter: Specify attributes followed by ATT_ for recipient to personalized email for ex. ATT_NAME for name, ATT_AGE for age etc. (Multiple attributes are allowed)
    # @param [String] attachmentid Optional parameter: specify uploaded attachments id (Multiple attachments are allowed)
    # @param [String] bcc Optional parameter: Email address for bcc
    # @param [Boolean] clicktrack Optional parameter: set ‘0’ or ‘1’ in-order to disable or enable the click-track
    # @param [Boolean] footer Optional parameter: Set '0' or '1' in order to include footer or not
    # @param [String] fromname Optional parameter: Email Sender name
    # @param [Boolean] opentrack Optional parameter: set open-track value to ‘0’ or ‘1’ in-order to disable or enable
    # @param [String] replytoid Optional parameter: Reply to email address
    # @param [String] tags Optional parameter: To relate each message. Useful for reports.
    # @param [Numeric] template Optional parameter: Email template ID
    # @param [String] x_apiheader Optional parameter: Your defined unique identifier
    # @return mixed response from the API call
    def get_api_web_send_rest(api_key, content, from, recipients, subject, att_name = nil, attachmentid = nil, bcc = nil, clicktrack = true, footer = true, fromname = nil, opentrack = true, replytoid = nil, tags = nil, template = nil, x_apiheader = nil)
      # the base uri for api requests
      query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      query_builder << '/api/web.send.rest'

      # process optional query parameters
      query_builder = APIHelper.append_url_with_query_parameters query_builder, {
        'api_key' => api_key,
        'content' => content,
        'from' => from,
        'recipients' => recipients,
        'subject' => subject,
        'ATT_NAME' => att_name,
        'attachmentid' => attachmentid,
        'bcc' => bcc,
        'clicktrack' => if clicktrack.nil? then true else clicktrack end,
        'footer' => if footer.nil? then true else footer end,
        'fromname' => fromname,
        'opentrack' => if opentrack.nil? then true else opentrack end,
        'replytoid' => replytoid,
        'tags' => tags,
        'template' => template,
        'X-APIHEADER' => x_apiheader
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        'user-agent' => 'APIMATIC 2.0',
        'accept' => 'application/json'
      }

      # invoke the API call request to fetch the response
      response = Unirest.get query_url, headers: headers

      #Error handling using HTTP status codes
      if !response.code.between?(200, 206) # [200,206] = HTTP OK
        raise APIException.new 'HTTP Response Not OK', response.code, response.raw_body
      end

      response.body
    end

    # This is a common function send email using Pepipost API
    def send(data)
        response = self.create_api_web_send_json(data)
        return response
    end

    # `Sending Mails` – This API is used for sending emails. Pepipost supports REST as well JSON formats for the input. This is JSON API.
    # @param [Emailv1] data Required parameter: Data in JSON format
    # @return mixed response from the API call
    def create_api_web_send_json(data)
      # the base uri for api requests
      query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      query_builder << '/api/web.send.json'

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        'user-agent' => 'APIMATIC 2.0',
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # invoke the API call request to fetch the response
      response = Unirest.post query_url, headers: headers, parameters: data.to_json

      #Error handling using HTTP status codes
      if !response.code.between?(200, 206) # [200,206] = HTTP OK
        raise APIException.new 'HTTP Response Not OK', response.code, response.raw_body
      end

      response.body
    end
  end
end
