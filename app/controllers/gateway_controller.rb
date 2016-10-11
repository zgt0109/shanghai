class GatewayController < ApplicationController
  def index
    book = Book.find_by_title(params['title'])
    ret = {data: '', code: '', msg: ''}
    if !book.nil?
      ret['msg'] = '查询成功'
      ret['code'] = :ok
    else
      ret['msg'] = '查询失败'
      ret['code'] = '401'
    end
    ret['data'] = book
    render json: ret, status: :ok
    return
  end
end
