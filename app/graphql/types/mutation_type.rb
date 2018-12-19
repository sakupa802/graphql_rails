module Types
  class MutationType < Types::BaseObject
    field :insert_post, mutation: Mutations::Post::Insert
  end
end
