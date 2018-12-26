module Mutations
  class CreatePost < GraphQL::Schema::Mutation
    null false

    argument :title, String, required: true
    argument :content, String, required: true

    field :post, Types::PostType, null: false

    def resolve(**arg)
      #'Hello World!'
      post = Post.new(
        title: arg[:title],
        content: arg[:content]
      )

      if post.save
        { 
          post: post
        }
      else
        raise GraphQL::ExecutionError, post.errors.full_messages.join(", ")
      end
    end
  end
end
