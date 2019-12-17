=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'uri'

module CyberSource
  class ReportDownloadsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default, config)
      @api_client = api_client
	  @api_client.set_configuration(config)
    end
    # Download a report
    # Download a report using the unique report name and date. 
    # @param report_date Valid date on which to download the report in **ISO 8601 format** Please refer the following link to know more about ISO 8601 format.[Rfc Date Format](https://xml2rfc.tools.ietf.org/public/rfc/html/rfc3339.html#anchor14)  **Example date format:**   - yyyy-MM-dd 
    # @param report_name Name of the report to download
    # @param [Hash] opts the optional parameters
    # @option opts [String] :organization_id Valid Cybersource Organization Id
    # @option opts [String] :report_time Valid time on which to download the report in **ISO 8601 format** Please refer the following link to know more about ISO 8601 format.[Rfc Date Time Format](https://xml2rfc.tools.ietf.org/public/rfc/html/rfc3339.html#anchor14)  **Example time format:**   - hh:mm:ss±hh:mm 
    # @return [nil]
    def download_report(report_date, report_name, opts = {})
      data, status_code, headers = download_report_with_http_info(report_date, report_name, opts)
      return data, status_code, headers
    end

    # Download a report
    # Download a report using the unique report name and date. 
    # @param report_date Valid date on which to download the report in **ISO 8601 format** Please refer the following link to know more about ISO 8601 format.[Rfc Date Format](https://xml2rfc.tools.ietf.org/public/rfc/html/rfc3339.html#anchor14)  **Example date format:**   - yyyy-MM-dd 
    # @param report_name Name of the report to download
    # @param [Hash] opts the optional parameters
    # @option opts [String] :organization_id Valid Cybersource Organization Id
    # @option opts [String] :report_time Valid time on which to download the report in **ISO 8601 format** Please refer the following link to know more about ISO 8601 format.[Rfc Date Time Format](https://xml2rfc.tools.ietf.org/public/rfc/html/rfc3339.html#anchor14)  **Example time format:**   - hh:mm:ss±hh:mm 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def download_report_with_http_info(report_date, report_name, opts = {})
      
	  if @api_client.config.debugging
	  	begin
			raise
				@api_client.config.logger.debug 'Calling API: ReportDownloadsApi.download_report ...'
			rescue
				puts 'Cannot write to log'
			end
      end
      # verify the required parameter 'report_date' is set
      if @api_client.config.client_side_validation && report_date.nil?
        fail ArgumentError, "Missing the required parameter 'report_date' when calling ReportDownloadsApi.download_report"
      end
      # verify the required parameter 'report_name' is set
      if @api_client.config.client_side_validation && report_name.nil?
        fail ArgumentError, "Missing the required parameter 'report_name' when calling ReportDownloadsApi.download_report"
      end
      if @api_client.config.client_side_validation && !opts[:'organization_id'].nil? && opts[:'organization_id'].to_s.length > 32
        fail ArgumentError, 'invalid value for "opts[:"organization_id"]" when calling ReportDownloadsApi.download_report, the character length must be smaller than or equal to 32.'
      end

      if @api_client.config.client_side_validation && !opts[:'organization_id'].nil? && opts[:'organization_id'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"organization_id"]" when calling ReportDownloadsApi.download_report, the character length must be great than or equal to 1.'
      end

      #if @api_client.config.client_side_validation && !opts[:'organization_id'].nil? && opts[:'organization_id'] !~ Regexp.new(/[a-zA-Z0-9-_]+/)
        #fail ArgumentError, "invalid value for 'opts[:\"organization_id\"]' when calling ReportDownloadsApi.download_report, must conform to the pattern /[a-zA-Z0-9-_]+/."
      #end

      # resource path
      local_var_path = 'reporting/v3/report-downloads'

      # query parameters
      query_params = {}
      query_params[:'reportDate'] = report_date
      query_params[:'reportName'] = report_name
      query_params[:'organizationId'] = opts[:'organization_id'] if !opts[:'organization_id'].nil?
      query_params[:'reportTime'] = opts[:'report_time'] if !opts[:'report_time'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'text/csv'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=utf-8'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
		begin
		raise
			@api_client.config.logger.debug "API called: ReportDownloadsApi#download_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
		rescue
			puts 'Cannot write to log'
		end
	  end
      return data, status_code, headers
    end
  end
end
