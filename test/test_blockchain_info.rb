require 'helper'
require 'debugger'

class TestBlockchainInfo < Test::Unit::TestCase
  context "blockchain.info api" do
    setup do
      @blockchain = BlockchainInfo::Client.new
    end

    should "get difficulty" do
      difficulty = @blockchain.get_difficulty
      assert difficulty.is_a? Float
    end

    should "get block count" do
      count = @blockchain.get_block_count
      assert count.is_a? Integer
    end

    should "get latest hash" do
      latest_hash = @blockchain.get_latest_hash
      assert Integer("0x"+latest_hash).is_a? Bignum
    end

    should "get block by index" do
      # block: https://blockchain.info/block-index/473482/
      block = @blockchain.get_block_by_index(473482)
      assert_equal "000000000000000111c0cc0af06338da8cfcad27c3c84996e63fdb54e0e3ab9f", block[:hash] 
    end

    should "get block by hash" do
      hash = "000000000000000111c0cc0af06338da8cfcad27c3c84996e63fdb54e0e3ab9f"
      block = @blockchain.get_block_by_hash(hash)
      assert_equal 473482, block[:block_index]
    end

    should "get tx by index" do
      tx = @blockchain.get_tx_by_index(114140305)
      assert_equal 1393581151, tx[:time] 
    end

    should "get tx by hash" do
      # tx: https://blockchain.info/tx/f7c9a8e7fa224e7ad6467e4901a5d03d6087ceb8e64f93332942cfa9fab33096
      hash = "f7c9a8e7fa224e7ad6467e4901a5d03d6087ceb8e64f93332942cfa9fab33096"
      tx = @blockchain.get_tx_by_hash(hash)
      assert_equal 1394428041, tx[:time]
    end

    should "get address info" do
      address = @blockchain.get_address("19vhf68sxehcRcxLD7cnD8xqLQCSzWutu9")
      assert_equal "61e8fda1af01697de59490f32e18ce1ef62dd91f", address[:hash160]
    end
  end
end
