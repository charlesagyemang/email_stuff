class OrganisationsController < ApplicationController
  before_action :authenticate_organisation!

  layout "organisations"

  def index

  end

  def show
    @organisation = Organisation.find(params[:id])
  end

  def new
    @memberlist = params[:memberlist]
    #print @memberlist
    redirect_to send_email
  end

  def email
    @organisations = current_organisation.membershipdata
  end

  def send_email
  
  end



  def members
  end

  def sms
  end


end
