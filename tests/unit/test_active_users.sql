{{ config(tags=['unit-test']) }}

{% call dbt_unit_testing.test ('active_users','test_01') %}

  {% call dbt_unit_testing.mock_ref('raw_user_events', options={"input_format": "csv"}) %}
'id','uid','timestamp'
'635518f7-4f6f-4985-b732-d46f21e15094','4','2024-02-14T21:49:10.059642+00:00'
'0063e42f-14aa-451c-a69c-fb85d432f8db','4','2024-02-05T16:11:26.192255+00:00'
'3d4a5d51-28fa-4d04-959b-5975b2d650af','5','2024-01-14T09:15:38.880234+00:00'
'e01bbf50-b5d9-4ef7-a0ef-147172b8ff39','2','2024-02-10T10:14:09.964624+00:00'
'66faf989-0813-4d58-aa16-89addfe1b307','3','2024-02-22T07:13:50.717461+00:00'
'a985ab61-c5ad-4681-ab10-e53a9145de05','3','2024-02-12T12:58:06.572216+00:00'
'425cb200-105a-4a6b-b202-99e32a69acc7','3','2024-02-12T02:10:59.110826+00:00'
'7cbd7025-e28b-49ff-870f-084c7244f536','3','2024-02-24T11:34:37.711475+00:00'
'e245a460-0004-484c-8167-733f9a9e4310','5','2024-01-03T08:01:50.355025+00:00'
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
'635518f7-4f6f-4985-b732-d46f21e15094','4','2024-02-14T21:49:10.059642+00:00'
'0063e42f-14aa-451c-a69c-fb85d432f8db','4','2024-02-05T16:11:26.192255+00:00'
'cffa6cdd-f963-47ef-a001-11e5d29dc5df','4','2024-01-25T21:47:51.926414+00:00'
'fca05536-2169-4f82-b9bd-ee2dd663049d','4','2024-01-01T21:12:36.607751+00:00'
'dfa7c6ed-32d1-481b-a636-425c9bbd750d','4','2024-01-19T03:28:44.467500+00:00'
'14d30dbc-a0ac-44c9-a58d-e17eec3aa314','4','2024-01-02T07:27:27.046203+00:00'
'0a68e88e-0ad4-4415-84c1-4982d9ead926','4','2024-01-13T08:15:33.873893+00:00'
'a3e04b3b-756b-4715-a718-0322a4e695c9','4','2024-01-27T03:02:03.726169+00:00'
'26a97465-2371-4a2c-8247-145f4a814d53','4','2024-01-17T06:46:39.594352+00:00'
'0a8c46c7-0921-4f4f-9edb-95f2c787ddfb','4','2024-01-17T04:15:20.908563+00:00'
'4a1eb1b7-955d-4e77-bb5e-b8662640211e','4','2024-01-22T15:42:19.512301+00:00'
'4b1cb8bd-2130-460c-8c69-778ffd42f697','4','2024-01-07T21:27:02.888931+00:00'
'0c5a876f-ef0a-41ed-bd5d-60bcbb0378eb','4','2024-01-19T11:20:48.379362+00:00'
'c6f00933-95d1-4051-82cb-6d1dffc573d5','4','2024-01-10T23:52:36.319992+00:00'
'3d4a5d51-28fa-4d04-959b-5975b2d650af','5','2024-01-14T09:15:38.880234+00:00'
'e01bbf50-b5d9-4ef7-a0ef-147172b8ff39','2','2024-02-10T10:14:09.964624+00:00'
'66faf989-0813-4d58-aa16-89addfe1b307','3','2024-02-22T07:13:50.717461+00:00'
'a985ab61-c5ad-4681-ab10-e53a9145de05','3','2024-02-12T12:58:06.572216+00:00'
'425cb200-105a-4a6b-b202-99e32a69acc7','3','2024-02-12T02:10:59.110826+00:00'
'7cbd7025-e28b-49ff-870f-084c7244f536','3','2024-02-24T11:34:37.711475+00:00'
'e245a460-0004-484c-8167-733f9a9e4310','5','2024-01-03T08:01:50.355025+00:00'
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
