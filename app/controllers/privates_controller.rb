class PrivatesController < ApplicationController
  before_action :authenticate_seguridad_usuario!
end
