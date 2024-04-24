{{ config(tags=['unit-test']) }}

{% call dbt_unit_testing.test ('active_users','test_01') %}

  {% call dbt_unit_testing.mock_ref('raw_user_events', options={"input_format": "csv"}) %}
'id','uid','timestamp'
'static_id_01','2','2024-02-10T08:00:00'
'static_id_02','3','2024-02-12T08:00:00'
'static_id_03','3','2024-02-12T08:00:00'
'static_id_04','3','2024-02-22T08:00:00'
'static_id_05','3','2024-02-24T08:00:00'
'static_id_06','4','2024-02-05T08:00:00'
'static_id_07','4','2024-02-14T08:00:00'
'static_id_08','5','2024-01-03T08:00:00'
'static_id_09','5','2024-01-14T08:00:00'
  {% endcall %}

  {% call dbt_unit_testing.mock_ref('raw_users', options={"input_format": "csv"}) %}
'id','name'
'1','Harriet Ledesma'
'2','Maurice C. Williams'
'3','Guo Hsiung'
'4','Teresa Dodson'
'5','Uwe Probst'
  {% endcall %}

  {% call dbt_unit_testing.expect_no_rows() %}
  {% endcall %}

{% endcall %}

UNION ALL

{% call dbt_unit_testing.test ('active_users','test_02') %}

  {% call dbt_unit_testing.mock_ref('raw_user_events', options={"input_format": "csv"}) %}
'id','uid','timestamp'
'static_id_01','2','2024-02-10T08:00:00'
'static_id_02','3','2024-02-12T08:00:00'
'static_id_03','3','2024-02-12T08:00:00'
'static_id_04','3','2024-02-22T08:00:00'
'static_id_05','3','2024-02-24T08:00:00'
'static_id_06','4','2024-01-01T08:00:00'
'static_id_07','4','2024-01-02T08:00:00'
'static_id_08','4','2024-01-07T08:00:00'
'static_id_09','4','2024-01-10T08:00:00'
'static_id_10','4','2024-01-13T08:00:00'
'static_id_11','4','2024-01-17T08:00:00'
'static_id_12','4','2024-01-17T08:00:00'
'static_id_13','4','2024-01-19T08:00:00'
'static_id_14','4','2024-01-19T08:00:00'
'static_id_15','4','2024-01-22T08:00:00'
'static_id_16','4','2024-01-25T08:00:00'
'static_id_17','4','2024-01-27T08:00:00'
'static_id_18','4','2024-02-05T08:00:00'
'static_id_19','4','2024-02-14T08:00:00'
'static_id_20','5','2024-01-03T08:00:00'
'static_id_21','5','2024-01-14T08:00:00'
  {% endcall %}

  {% call dbt_unit_testing.mock_ref('raw_users', options={"input_format": "csv"}) %}
'id','name'
'1','Harriet Ledesma'
'2','Maurice C. Williams'
'3','Guo Hsiung'
'4','Teresa Dodson'
'5','Uwe Probst'
  {% endcall %}


  {% call dbt_unit_testing.expect(options={"input_format": "csv"}) %}
'name','num_activities'
'Teresa Dodson','14'
  {% endcall %}

{% endcall %}
