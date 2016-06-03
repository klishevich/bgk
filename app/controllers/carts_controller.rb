class CartsController < ApplicationController
  # def show
  # 	@porder_items = current_porder.porder_items
  # end

  def show
    @porder = current_porder
  end

  # def update
  #   @req = ReqWorkgroup.find(params[:id])
  #   @req.set_last_user(current_user)
  #   leader_count = params["req_workgroup"]["inf_workgroup_members_attributes"].select.count {|k,v| v["main"]=="1" && v["_destroy"]=="false"}
  #   Rails.logger.info('!!!!! leader_count '+ leader_count.to_s) 
  #   @req.assign_attributes(req_params)
  #   if (leader_count > 1)
  #     flash.now[:warning] = t(:should_be_only_one_leader)
  #     render 'edit'
  #   else
  #     action = params[:commit]
  #     if @req.send(action)
  #       flash[:success] = t(:req_updated_successfuly)
  #       redirect_to @req
  #     else
  #       render 'edit'
  #     end 
  #   end
  # end 
  #     inf_workgroup_members_attributes: [:id, :user_id, :main, :comment, :_destroy]
end
