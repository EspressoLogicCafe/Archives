# This file was automatically generated by APIMATIC BETA v2.0 on 09/17/2014

module Customers
  class APIController

    # Get zero or more objects from table Customers
    # @param [String] filter Optional parameter: Arbitrary search criteria
    # @return CustomersModel response from the API call
    def _get_customers filter: nil
      # prepare query string for API call
      query_builder = Configuration::BASE_URI + "/Customers"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_query_parameters query_builder, {
        :filter => filter,
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "User-Agent" => "APIMATIC 2.0",
        "Accept" => "application/json"
      }

      # invoke the API call request to fetch the response
      response = Unirest.get query_url, headers:headers

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code
      end

      response.body
    end
        
    # Insert one or more objects
    # @return CustomersModel response from the API call
    def post_insert_customers
      # prepare query string for API call
      query_builder = Configuration::BASE_URI + "/Customers"

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "User-Agent" => "APIMATIC 2.0",
        "Accept" => "application/json"
      }

      # invoke the API call request to fetch the response
      response = Unirest.post query_url, headers:headers

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code
      end

      response.body
    end
        
    # Update one or more objects
    # @return CustomersModel response from the API call
    def put_update_customers
      # prepare query string for API call
      query_builder = Configuration::BASE_URI + "/Customers"

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "User-Agent" => "APIMATIC 2.0",
        "Accept" => "application/json"
      }

      # invoke the API call request to fetch the response
      response = Unirest.put query_url, headers:headers

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code
      end

      response.body
    end
        
    # Get one object
    # @param [String] pk Required parameter: CustomerID
    # @return CustomersModel response from the API call
    def _get_one_customers pk
      # prepare query string for API call
      query_builder = Configuration::BASE_URI + "/Customers/{pk}"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        :pk => pk,
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "User-Agent" => "APIMATIC 2.0",
        "Accept" => "application/json"
      }

      # invoke the API call request to fetch the response
      response = Unirest.get query_url, headers:headers

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code
      end

      response.body
    end
        
    # Update one object
    # @param [String] pk Required parameter: CustomerID
    # @return CustomersModel response from the API call
    def put_update_one_customers pk
      # prepare query string for API call
      query_builder = Configuration::BASE_URI + "/Customers/{pk}"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        :pk => pk,
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "User-Agent" => "APIMATIC 2.0",
        "Accept" => "application/json"
      }

      # invoke the API call request to fetch the response
      response = Unirest.put query_url, headers:headers

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code
      end

      response.body
    end
        
    # Delete one object
    # @param [String] pk Required parameter: CustomerID
    # @return CustomersModel response from the API call
    def _delete_one_customers pk
      # prepare query string for API call
      query_builder = Configuration::BASE_URI + "/Customers/{pk}"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        :pk => pk,
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "User-Agent" => "APIMATIC 2.0",
        "Accept" => "application/json"
      }

      # invoke the API call request to fetch the response
      response = Unirest.delete query_url, headers:headers

      #Error handling using HTTP status codes
      if !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code
      end

      response.body
    end
        

  end
end