# blockchain-info-ruby

Some of Blockchain.info's [Query API](https://blockchain.info/q) and [JSON API](https://blockchain.info/api/blockchain_api) as a Gem.

Functionality:


### Get difficulty

#### Method: `@blockchain.get_difficulty`

#### Output:

```ruby
3815723798.81463
```

### Get block count

#### Method: `@blockchain.get_block_count`

#### Output:

```ruby
289824
```

### Get latest hash

#### Method: `@blockchain.get_latest_hash`

#### Output:

```ruby
"000000000000000096a79f109516ca924f07030e75d5ffa4f32fa9a564274a95"
```

### Get block by index

#### Method: `@blockchain.get_block_by_index(473482)`

#### Output:

```ruby
{:hash=>"000000000000000111c0cc0af06338da8cfcad27c3c84996e63fdb54e0e3ab9f",
 :ver=>2,
 :prev_block=>
  "00000000000000007b264a43c33c26068009bee7ce9cea518aa1d97419efb9ed",
 :mrkl_root=>
  "49000848a44aed307a5c1162f0908fad06c97d22845ca9add95fc29586be3014",
 :time=>1394426996,
 :bits=>419504166,
 :fee=>13933759,
 :nonce=>3365210320,
 :n_tx=>567,
 :size=>256882,
 :block_index=>473482,
 :main_chain=>true,
 :height=>289822,
 :received_time=>1394427039,
 :relayed_by=>"184.107.155.82",
 :tx=>
  [{:time=>1394427039,
    :inputs=>[{}],
    :vout_sz=>1,
    :relayed_by=>"184.107.155.82",
    :hash=>"445c77eb0b0df09f068a0be64b5e39f366c53b03d0669feb81b8175a4fa8120e",
    :vin_sz=>1,
    :tx_index=>114900376,
    :ver=>1,
    :out=>
     [{:n=>0,
       :value=>2513933759,
       :addr=>"1AqTMY7kmHZxBuLUR5wJjPFUvqGs23sesr",
       :tx_index=>114900376,
       :type=>0}],
    :size=>125},
    ...
  ]
}
```

### Get block by hash

#### Method: `@blockchain.get_block_by_hash("000000000000000111c0cc0af06338da8cfcad27c3c84996e63fdb54e0e3ab9f")`

#### Output:

```ruby
{:hash=>"000000000000000111c0cc0af06338da8cfcad27c3c84996e63fdb54e0e3ab9f",
 :ver=>2,
 :prev_block=>
  "00000000000000007b264a43c33c26068009bee7ce9cea518aa1d97419efb9ed",
 :mrkl_root=>
  "49000848a44aed307a5c1162f0908fad06c97d22845ca9add95fc29586be3014",
 :time=>1394426996,
 :bits=>419504166,
 :fee=>13933759,
 :nonce=>3365210320,
 :n_tx=>567,
 :size=>256882,
 :block_index=>473482,
 :main_chain=>true,
 :height=>289822,
 :received_time=>1394427039,
 :relayed_by=>"184.107.155.82",
 :tx=>
  [{:time=>1394427039,
    :inputs=>[{}],
    :vout_sz=>1,
    :relayed_by=>"184.107.155.82",
    :hash=>"445c77eb0b0df09f068a0be64b5e39f366c53b03d0669feb81b8175a4fa8120e",
    :vin_sz=>1,
    :tx_index=>114900376,
    :ver=>1,
    :out=>
     [{:n=>0,
       :value=>2513933759,
       :addr=>"1AqTMY7kmHZxBuLUR5wJjPFUvqGs23sesr",
       :tx_index=>114900376,
       :type=>0}],
    :size=>125},
    ...
  ]
}
```

### Get transaction by index

#### Method: `@blockchain.get_tx_by_index(114140305)`

#### Output:

```ruby
{:double_spend=>false,
 :block_height=>288257,
 :time=>1393581151,
 :inputs=>
  [{:prev_out=>
     {:addr_tag=>"SatoshiDICE 50%",
      :n=>0,
      :value=>1000000,
      :addr=>"1dice97ECuByXAvqXpaYzSaQuPVvrtmz6",
      :tx_index=>114139172,
      :type=>0,
      :addr_tag_link=>"http://satoshidice.com"}},
   {:prev_out=>
     {:n=>1,
      :value=>52755806,
      :addr=>"1AdN2my8NxvGcisPGYeQTAKdWJuUzNkQxG",
      :tx_index=>114094575,
      :type=>0}}],
 :vout_sz=>2,
 :relayed_by=>"86.100.125.187",
 :hash=>"a7a18b7dfca4d97f18c5ac74932f9d175e1dae68be209e435b68fd0d0cf4331f",
 :vin_sz=>2,
 :tx_index=>114140305,
 :ver=>1,
 :out=>
  [{:n=>0,
    :value=>1957000,
    :addr=>"1GvCibLxtcdUNZFdjiT6kbZz5XtPgdK5dp",
    :tx_index=>114140305,
    :type=>0},
   {:n=>1,
    :value=>51698806,
    :addr=>"1HVpyjYEPwQhvRQ3dL8tGe9kiydti616sX",
    :tx_index=>114140305,
    :type=>0}],
 :size=>437}
```

### Get transaction by hash

#### Method: `@blockchain.get_tx_by_hash("f7c9a8e7fa224e7ad6467e4901a5d03d6087ceb8e64f93332942cfa9fab33096")`

#### Output:

```ruby
{:double_spend=>false,
 :time=>1394428041,
 :inputs=>
  [{:prev_out=>
     {:n=>0,
      :value=>1957000,
      :addr=>"1GvCibLxtcdUNZFdjiT6kbZz5XtPgdK5dp",
      :tx_index=>114140305,
      :type=>0}}],
 :vout_sz=>2,
 :relayed_by=>"88.206.63.114",
 :hash=>"f7c9a8e7fa224e7ad6467e4901a5d03d6087ceb8e64f93332942cfa9fab33096",
 :vin_sz=>1,
 :tx_index=>114901952,
 :ver=>1,
 :out=>
  [{:n=>0,
    :value=>1310000,
    :addr=>"13zC9CWmY61QSnUDQhGUYjsuEkXhr8uQnQ",
    :tx_index=>114901952,
    :type=>0},
   {:n=>1,
    :value=>637000,
    :addr=>"1GvCibLxtcdUNZFdjiT6kbZz5XtPgdK5dp",
    :tx_index=>114901952,
    :type=>0}],
 :size=>226}
```
