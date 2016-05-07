class MapPost < ActiveRecord::Base
    has_many :map_comments
end
