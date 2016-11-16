class Node < ApplicationRecord
  has_many :sources, class_name: "Link", foreign_key: :source_id
  has_many :targets, class_name: "Link", foreign_key: :target_id
end
