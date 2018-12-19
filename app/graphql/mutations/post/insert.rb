module Mutations::Post
  class Insert < GraphQL::Schema::Mutation
    argument :title, String, required: true
    argument :content, String, required: true

    def resolve(**arg)
      'Hello World!'
      # post = Post.new(
      #   title: arg[:title],
      #   content: arg[:content]
      # )

      # if post.save
      #   { post: post }
      # else
      #   raise GraphQL::ExecutionError, post.errors.full_messages.join(", ")
      # end
    end
  end
end
