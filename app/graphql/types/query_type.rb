module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :search_posts, [PostType], null: false do
      argument :title, String, required: true
    end
    def search_posts(title:)
      Post.where(title: title)
    end
  end
end
