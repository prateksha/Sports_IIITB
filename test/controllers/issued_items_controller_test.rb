require 'test_helper'

class IssuedItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @issued_item = issued_items(:one)
  end

  test "should get index" do
    get issued_items_url
    assert_response :success
  end

  test "should get new" do
    get new_issued_item_url
    assert_response :success
  end

  test "should create issued_item" do
    assert_difference('IssuedItem.count') do
      post issued_items_url, params: { issued_item: { Email: @issued_item.Email, Equipment: @issued_item.Equipment, IssueDate: @issued_item.IssueDate, Name: @issued_item.Name, ReturnDate: @issued_item.ReturnDate, RollNo: @issued_item.RollNo } }
    end

    assert_redirected_to issued_item_url(IssuedItem.last)
  end

  test "should show issued_item" do
    get issued_item_url(@issued_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_issued_item_url(@issued_item)
    assert_response :success
  end

  test "should update issued_item" do
    patch issued_item_url(@issued_item), params: { issued_item: { Email: @issued_item.Email, Equipment: @issued_item.Equipment, IssueDate: @issued_item.IssueDate, Name: @issued_item.Name, ReturnDate: @issued_item.ReturnDate, RollNo: @issued_item.RollNo } }
    assert_redirected_to issued_item_url(@issued_item)
  end

  test "should destroy issued_item" do
    assert_difference('IssuedItem.count', -1) do
      delete issued_item_url(@issued_item)
    end

    assert_redirected_to issued_items_url
  end
end
