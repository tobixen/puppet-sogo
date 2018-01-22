require 'spec_helper'

describe 'sogo3' do
  let(:params) do
    {
      user_sources: [
        {
          'type' => 'ldap',
          'cn_field_name' => 'bla',
        }
      ]
    }
  end

  it { should compile.with_all_deps }

  it 'should produce a configuration file' do
    is_expected.to contain_file('/etc/sogo/sogo.conf').with_content(/CNFieldName = bla;/)
  end
end
