class HomeController < ApplicationController

  def json
    @shitty_nest = Nest.collection_to_json
    json = {
      "nodes" => [
        { "name" => "ruby on rails", "group" => 1, "weight" => 1.0 },
        # {"name" => "foreman", "group" => 1},
      ],
      "links" => [
        { "source" => 0, "something" => 0, "weight" => 1.0 },
        {"source" => 1, "something" => 0, "weight" => 1.0 }
      ]
    }

    json = { "nodes"=>[
              {"name"=> Nest.first.nest,"group"=>1},
              {"name"=> Nest.second.nest,"group"=>1},

                 ],
                 "links"=>[
              {"source"=>1,"target"=>0},

                ]
              }
    render json: @shitty_nest.to_json
  end

  def index
  end


end