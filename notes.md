# for ideas and plans

## models

### `Assignment`

#### attributes

- link:text
    - link to the external reading. could be replaced with a polymorphism for
      link / file upload / other storage methods in the future
- accepted:boolean
    - if an admin has approved (in the context of submissions from non-admins)
- level:string
    - examples: 'required', 'suggested', 'just for fun', etc. could maybe be
      replaced with an association if this `level` thing gets more complicated.
    - this could also be accomplished with tags instead. depends on the
      importance level of this feature (is this just a helpful filter or is it
      in some way tied to 'completions' and the idea of assignment?).

#### associations

- has_many completions (a user would create a 'completion' as a way of marking
  this 'done')
- has_many tags (for the future)
- has_many comments (for the future)

-------------------------

### `Completion`

#### associations

- belongs_to user
- belongs_to assignment

-------------------------

### `User`

####  associations

- has_many completions
- role

-------------------------------------------------

## product milestones

_this section uses taskpaper syntax_

### features

To Be Done:

- articles can be added
- users
- user roles
- github auth
- user can mark an assignment complete
- articles can be vetted by admin
- ==> v 1.0
- tagging
- comments

Archive:

