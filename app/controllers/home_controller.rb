class HomeController < ApplicationController

  def json
    @nodes = Node.all.pluck_to_hash(:id, :name)
    @links = Link.all.pluck_to_hash('source_id as source', 'target_id as target')
    render json: { nodes: @nodes, links: @links}
  end

  def index
  end


end
