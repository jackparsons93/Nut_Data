require 'test_helper'

class NutDataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nut_datum = nut_data(:one)
  end

  test "should get index" do
    get nut_data_url
    assert_response :success
  end

  test "should get new" do
    get new_nut_datum_url
    assert_response :success
  end

  test "should create nut_datum" do
    assert_difference('NutDatum.count') do
      post nut_data_url, params: { nut_datum: { add_nutr_mark: @nut_datum.add_nutr_mark, deriv_cd: @nut_datum.deriv_cd, df: @nut_datum.df, low_eb: @nut_datum.low_eb, max: @nut_datum.max, min: @nut_datum.min, ndb_do: @nut_datum.ndb_do, num_data_pts: @nut_datum.num_data_pts, num_studies: @nut_datum.num_studies, nutr_no: @nut_datum.nutr_no, nutr_val: @nut_datum.nutr_val, ref_ndb_no: @nut_datum.ref_ndb_no, src_cd: @nut_datum.src_cd, stat_cmt: @nut_datum.stat_cmt, std_error: @nut_datum.std_error } }
    end

    assert_redirected_to nut_datum_url(NutDatum.last)
  end

  test "should show nut_datum" do
    get nut_datum_url(@nut_datum)
    assert_response :success
  end

  test "should get edit" do
    get edit_nut_datum_url(@nut_datum)
    assert_response :success
  end

  test "should update nut_datum" do
    patch nut_datum_url(@nut_datum), params: { nut_datum: { add_nutr_mark: @nut_datum.add_nutr_mark, deriv_cd: @nut_datum.deriv_cd, df: @nut_datum.df, low_eb: @nut_datum.low_eb, max: @nut_datum.max, min: @nut_datum.min, ndb_do: @nut_datum.ndb_do, num_data_pts: @nut_datum.num_data_pts, num_studies: @nut_datum.num_studies, nutr_no: @nut_datum.nutr_no, nutr_val: @nut_datum.nutr_val, ref_ndb_no: @nut_datum.ref_ndb_no, src_cd: @nut_datum.src_cd, stat_cmt: @nut_datum.stat_cmt, std_error: @nut_datum.std_error } }
    assert_redirected_to nut_datum_url(@nut_datum)
  end

  test "should destroy nut_datum" do
    assert_difference('NutDatum.count', -1) do
      delete nut_datum_url(@nut_datum)
    end

    assert_redirected_to nut_data_url
  end
end
