class ListingSerializer
  include FastJsonapi::ObjectSerializer
  attributes :imgurl, :brand, :size, :year, :description, :title
end
