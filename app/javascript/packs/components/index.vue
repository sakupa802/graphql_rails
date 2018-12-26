<template>
  <div>
    <ul v-for="post in allPosts">
      <li>タイトル：　{{post.title}}</li>
      <li>内容：　{{post.content}}</li>
    </ul>
  </div>
</template>

<script>
import gql from 'graphql-tag'

// const POSTS_QUERY = gql`
// query searchPosts($title: String!){
//   searchPosts(title: $title) {
//     title
//     content
//   }
// }
// `

const POSTS_QUERY = gql`
query allPosts{
  allPosts {
    title
    content
  }
}`

export default {
  name: 'index',
  data () {
    return {
      allPosts: []
    }
  },
  apollo: {
    allPosts: {
      query:POSTS_QUERY,
      // variables: {
      //   title: 'テスト2'
      // }
    }
  }
}

// export default {
//     name: 'Search',
//     data () {
//       return {
//         allLinks: [],
//         searchText: ''
//       }
//     },
//     // 3
//     apollo: {
//       allLinks: {
//         query: ALL_LINKS_SEARCH_QUERY,
//         variables () {
//           return {
//             searchText: this.searchText
//           }
//         },
//         skip () {
//           return !this.searchText
//         }
//       }
//     },
//     components: {
//       LinkItem
//     }
//   }
</script>

