# MountainView

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add `mountain_view` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:mountain_view, "~> 0.1.0"}]
    end
    ```

  2. Ensure `mountain_view` is started before your application:

    ```elixir
    def application do
      [applications: [:mountain_view]]
    end
    ```


## Testing
Run tests from the project directory
````
python -m unittest test.test_grid
python -m unittest test.test_path
````
