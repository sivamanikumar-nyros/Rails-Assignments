class ClientsController < ApplicationController
	http_basic_authenticate_with name: "admin", password: "sivamani"
end
