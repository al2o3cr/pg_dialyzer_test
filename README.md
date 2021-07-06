# PgDialyzerTest

Demonstrates the issue reported in [#549](https://github.com/elixir-ecto/postgrex/issues/549)

## Results

* OTP 22.3.4.200 + 1.10.4: OK
* OTP 23.3.4 + 1.11.4: OK
* OTP 23.3.4 + 1.12.1: fail
* OTP 24.0.3 + 1.12.2: fail

Failure messages:

```
Starting Dialyzer
[
  check_plt: false,
  init_plt: '/Users/mattjones/al2o3cr/pg_dialyzer_test/_build/dev/dialyxir_erlang-24.0.3_elixir-1.12.2_deps-dev.plt',
  files: ['/Users/mattjones/al2o3cr/pg_dialyzer_test/_build/dev/lib/pg_dialyzer_test/ebin/Elixir.PgDialyzerTest.PostgresTypes.beam',
   '/Users/mattjones/al2o3cr/pg_dialyzer_test/_build/dev/lib/pg_dialyzer_test/ebin/Elixir.PgDialyzerTest.beam'],
  warnings: [:unknown]
]
Total errors: 17, Skipped: 0, Unnecessary Skips: 0
done in 0m5.05s
deps/postgrex/lib/postgrex/type_module.ex:897:improper_list_constr
List construction (cons) will produce an improper list, because its second argument is nonempty_improper_list(binary(), bitstring()).
________________________________________________________________________________
deps/postgrex/lib/postgrex/type_module.ex:897:improper_list_constr
List construction (cons) will produce an improper list, because its second argument is bitstring().
________________________________________________________________________________
deps/postgrex/lib/postgrex/type_module.ex:897:improper_list_constr
List construction (cons) will produce an improper list, because its second argument is binary().
________________________________________________________________________________
deps/postgrex/lib/postgrex/type_module.ex:897:improper_list_constr
List construction (cons) will produce an improper list, because its second argument is nonempty_improper_list(<<_::128>>, <<_::128>>).
________________________________________________________________________________
deps/postgrex/lib/postgrex/type_module.ex:897:improper_list_constr
List construction (cons) will produce an improper list, because its second argument is <<_::128>>.
________________________________________________________________________________
deps/postgrex/lib/postgrex/type_module.ex:897:improper_list_constr
List construction (cons) will produce an improper list, because its second argument is nonempty_improper_list(<<_::128>>, <<_::128>>).
________________________________________________________________________________
deps/postgrex/lib/postgrex/type_module.ex:897:improper_list_constr
List construction (cons) will produce an improper list, because its second argument is <<_::128>>.
________________________________________________________________________________
deps/postgrex/lib/postgrex/type_module.ex:897:improper_list_constr
List construction (cons) will produce an improper list, because its second argument is binary().
________________________________________________________________________________
deps/postgrex/lib/postgrex/type_module.ex:897:improper_list_constr
List construction (cons) will produce an improper list, because its second argument is <<_::64>> | nonempty_improper_list(<<_::64>>, binary()).
________________________________________________________________________________
deps/postgrex/lib/postgrex/type_module.ex:897:improper_list_constr
List construction (cons) will produce an improper list, because its second argument is <<_::128>>.
________________________________________________________________________________
deps/postgrex/lib/postgrex/type_module.ex:897:improper_list_constr
List construction (cons) will produce an improper list, because its second argument is <<_::128>>.
________________________________________________________________________________
deps/postgrex/lib/postgrex/type_module.ex:897:improper_list_constr
List construction (cons) will produce an improper list, because its second argument is binary().
________________________________________________________________________________
deps/postgrex/lib/postgrex/type_module.ex:897:improper_list_constr
List construction (cons) will produce an improper list, because its second argument is binary().
________________________________________________________________________________
deps/postgrex/lib/postgrex/type_module.ex:897:improper_list_constr
List construction (cons) will produce an improper list, because its second argument is Postgrex.Types.state().
________________________________________________________________________________
lib/postgrex/type_module.ex:358:improper_list_constr
List construction (cons) will produce an improper list, because its second argument is nonempty_improper_list(<<_::32>>, binary()).
________________________________________________________________________________
lib/postgrex/type_module.ex:358:improper_list_constr
List construction (cons) will produce an improper list, because its second argument is binary().
________________________________________________________________________________
lib/postgrex/type_module.ex:362:improper_list_constr
List construction (cons) will produce an improper list, because its second argument is binary().
________________________________________________________________________________
done (warnings were emitted)
Halting VM with exit status 2
