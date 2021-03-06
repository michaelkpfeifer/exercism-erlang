%% Based on canonical data version 1.5.0
%% https://github.com/exercism/problem-specifications/raw/master/exercises/sum-of-multiples/canonical-data.json
%% This file is automatically generated from the exercises canonical data.

-module(sum_of_multiples_tests).

-include_lib("erl_exercism/include/exercism.hrl").
-include_lib("eunit/include/eunit.hrl").




'1_no_multiples_within_limit_test'() ->
    ?assertEqual(0, sum_of_multiples:sum([3, 5], 1)).

'2_one_factor_has_multiples_within_limit_test'() ->
    ?assertEqual(3, sum_of_multiples:sum([3, 5], 4)).

'3_more_than_one_multiple_within_limit_test'() ->
    ?assertEqual(9, sum_of_multiples:sum([3], 7)).

'4_more_than_one_factor_with_multiples_within_limit_test'() ->
    ?assertEqual(23, sum_of_multiples:sum([3, 5], 10)).

'5_each_multiple_is_only_counted_once_test'() ->
    ?assertEqual(2318, sum_of_multiples:sum([3, 5], 100)).

'6_a_much_larger_limit_test'() ->
    ?assertEqual(233168,
		 sum_of_multiples:sum([3, 5], 1000)).

'7_three_factors_test'() ->
    ?assertEqual(51, sum_of_multiples:sum([7, 13, 17], 20)).

'8_factors_not_relatively_prime_test'() ->
    ?assertEqual(30, sum_of_multiples:sum([4, 6], 15)).

'9_some_pairs_of_factors_relatively_prime_and_some_not_test'() ->
    ?assertEqual(4419,
		 sum_of_multiples:sum([5, 6, 8], 150)).

'10_one_factor_is_a_multiple_of_another_test'() ->
    ?assertEqual(275, sum_of_multiples:sum([5, 25], 51)).

'11_much_larger_factors_test'() ->
    ?assertEqual(2203160,
		 sum_of_multiples:sum([43, 47], 10000)).

'12_all_numbers_are_multiples_of_1_test'() ->
    ?assertEqual(4950, sum_of_multiples:sum([1], 100)).

'13_no_factors_means_an_empty_sum_test'() ->
    ?assertEqual(0, sum_of_multiples:sum([], 10000)).

'14_the_only_multiple_of_0_is_0_test'() ->
    ?assertEqual(0, sum_of_multiples:sum([0], 1)).

'15_the_factor_0_does_not_affect_the_sum_of_multiples_of_other_factors_test'() ->
    ?assertEqual(3, sum_of_multiples:sum([3, 0], 4)).

'16_solutions_using_include_exclude_must_extend_to_cardinality_greater_than_3_test'() ->
    ?assertEqual(39614537,
		 sum_of_multiples:sum([2, 3, 5, 7, 11], 10000)).
