Model and the Database / Active Record

1. Rails <-> Database

2. Active Records (Models)
  * insert -> create new rows
    Task.save, Task.create

  * select
    Task.find_by(owner: 'system')
    Task.find_by(SQL Query)
    Task.find(id)
    Task.first
    Task.last
    Task.where(owner: 'system')
    Task.where(SQL Query)

  * update
  * delete
    Take the object
    t.save
    t.destroy


3. Hooks

3. Sessions

4. Associations

5. Validations

6. Forms and models

7. API


