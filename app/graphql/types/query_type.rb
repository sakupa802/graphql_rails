module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end

    field :post_field, [PostType], null: false do
      argument :id, ID, required: true
      # resolve -> (obj, args, ctx) { Post.all }
    end
    def post_field(id:)
      Post.where(id: id)
    end

    field :search_posts, [PostType], null: false do
      argument :title, String, required: true
    end
    def search_posts(title:)
      Post.where(title: title)
    end
  end
end
