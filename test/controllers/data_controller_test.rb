require 'test_helper'

class DataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @datum = data(:one)
  end

  test "should get index" do
    get data_url
    assert_response :success
  end

  test "should get new" do
    get new_datum_url
    assert_response :success
  end

  test "should create datum" do
    assert_difference('Datum.count') do
      post data_url, params: { datum: { add_nutr_mark: @datum.add_nutr_mark, deriv_cd: @datum.deriv_cd, df: @datum.df, low_eb: @datum.low_eb, max: @datum.max, min: @datum.min, ndb_do: @datum.ndb_do, num_data_pts: @datum.num_data_pts, num_studies: @datum.num_studies, nutr_no: @datum.nutr_no, nutr_val: @datum.nutr_val, ref_ndb_no: @datum.ref_ndb_no, src_cd: @datum.src_cd, stat_cmt: @datum.stat_cmt, std_error: @datum.std_error } }
    end

    assert_redirected_to datum_url(Datum.last)
  end

  test "should show datum" do
    get datum_url(@datum)
    assert_response :success
  end

  test "should get edit" do
    get edit_datum_url(@datum)
    assert_response :success
  end

  test "should update datum" do
    patch datum_url(@datum), params: { datum: { add_nutr_mark: @datum.add_nutr_mark, deriv_cd: @datum.deriv_cd, df: @datum.df, low_eb: @datum.low_eb, max: @datum.max, min: @datum.min, ndb_do: @datum.ndb_do, num_data_pts: @datum.num_data_pts, num_studies: @datum.num_studies, nutr_no: @datum.nutr_no, nutr_val: @datum.nutr_val, ref_ndb_no: @datum.ref_ndb_no, src_cd: @datum.src_cd, stat_cmt: @datum.stat_cmt, std_error: @datum.std_error } }
    assert_redirected_to datum_url(@datum)
  end

  test "should destroy datum" do
    assert_difference('Datum.count', -1) do
      delete datum_url(@datum)
    end

    assert_redirected_to data_url
  end
end
