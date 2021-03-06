%% Based on canonical data version 2.0.0
%% https://github.com/exercism/problem-specifications/raw/master/exercises/gigasecond/canonical-data.json
%% This file is automatically generated from the exercises canonical data.

-module(gigasecond_tests).

-include_lib("erl_exercism/include/exercism.hrl").
-include_lib("eunit/include/eunit.hrl").




'1_date_only_specification_of_time_test'() ->
    ?assertEqual({{2043, 1, 1}, {1, 46, 40}},
		 gigasecond:from({2011, 4, 25})).

'2_second_test_for_date_only_specification_of_time_test'() ->
    ?assertEqual({{2009, 2, 19}, {1, 46, 40}},
		 gigasecond:from({1977, 6, 13})).

'3_third_test_for_date_only_specification_of_time_test'() ->
    ?assertEqual({{1991, 3, 27}, {1, 46, 40}},
		 gigasecond:from({1959, 7, 19})).

'4_full_time_specified_test'() ->
    ?assertEqual({{2046, 10, 2}, {23, 46, 40}},
		 gigasecond:from({{2015, 1, 24}, {22, 0, 0}})).

'5_full_time_with_day_roll_over_test'() ->
    ?assertEqual({{2046, 10, 3}, {1, 46, 39}},
		 gigasecond:from({{2015, 1, 24}, {23, 59, 59}})).
