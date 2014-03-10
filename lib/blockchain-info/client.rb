require 'json'
module BlockchainInfo
  class Client
    include HTTParty

    def initialize(options = {})

      options[:base_uri] ||= "http://blockchain.info"
      
      options.each do |k,v|
        self.class.send k, v
      end
    end

    def get_difficulty
      response = self.get_raw '/q/getdifficulty'
      response.to_f
    end

    def get_block_count
      response = self.get_raw '/q/getblockcount'
      response.to_i
    end

    def get_latest_hash
      self.get_raw '/q/latesthash'
    end

    def get_block_by_index(index)
      self.get_json "/rawblock/#{index}"
    end

    def get_block_by_hash(hash)
      self.get_json "/rawblock/#{hash}"
    end

    def get_tx_by_index(index)
      self.get_json "/rawtx/#{index}"
    end

    def get_tx_by_hash(hash)
      self.get_json "/rawtx/#{hash}"
    end

    def get(path, options = {})
      options = { body: options }
      self.class.get(path, options)
    end

    def get_raw(path, options = {})
      options = { body: options }
      response = self.get(path, options)
      response.body
    end

    def get_json(path, options = {})
      options = { body: options }
      response = self.get(path, options)
      JSON.parse(response.body, symbolize_names: true)
    end

    def post(path, options = {})
      options = { body: options }
      self.class.post(path, options)
    end
  end
end