# planq-cookbook

TODO: Development environment

## Supported Platforms

Debian 7

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['planq']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### planq::default

Include `planq` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[planq::default]"
  ]
}
```

## License and Authors

Author:: Bolek