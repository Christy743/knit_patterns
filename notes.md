What do I need for this app? Which is a knitting pattern app:

#Models
  User- username (Devise Gem)
  Pattern- user_id, name, content
  Needle- us_size, name
  Yarn- name, weight
  FavoritePattern- pattern_id, user_id
  Comments- content

#Controllers
  UsersController
  PatternsController
  NeedlesController
  YarnsController

#Views
  Users- show, index, new, edit
  Patterns- index, show, new, edit, destroy  
  Yarns- index
  Needles- index
