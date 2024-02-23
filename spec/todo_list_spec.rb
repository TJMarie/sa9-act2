require "todo_list"
RSpec.describe TodoList do
  describe "#add" do
    it "adds a todo to the list" do
      add_list = TodoList.new
      add_list.add("Wash dishes")
      expect(add_list.todos).to include("Wash dishes")
    end
  end

  describe "#remove" do
    it "removes a todo from the list" do
      remove_list = TodoList.new
      remove_list.add("Wash dishes")
      remove_list.remove("Wash dishes")
      expect(remove_list.todos).to eq []
    end
  end

  describe "#todos" do
    it "returns all todos" do
      all_todos = TodoList.new
      all_todos.add("Wash dishes")
      all_todos.add("Do laundry")
      expect(all_todos.todos).to eq ["Wash dishes", "Do laundry"]
    end
  end
end
