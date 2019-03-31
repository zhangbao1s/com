<%@ page pageEncoding="UTF-8" %>
<%@ include file="common/config.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>Sample - 编辑广告主</title>
    <%@ include file="common/meta.jsp" %>
    <%@ include file="common/style.jsp" %>
</head>
<body>

<%@ include file="common/nav.jsp"%>

<div class="container">
    <ol class="breadcrumb">
        <li><a href="${CTX}/advertiser">广告主</a></li>
        <li class="active">编辑广告主</li>
    </ol>
    <div class="row">
        <div class="col-md-6">
            <form id="advertiserForm" class="form-horizontal">
                <div class="form-group">
                    <label for="advertiser_name" class="col-md-4 control-label">广告主名称：</label>
                    <div class="col-md-8">
                        <input type="text" id="advertiser_name" name="advertiser_name" class="form-control"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="description" class="col-md-4 control-label">描述：</label>
                    <div class="col-md-8">
                        <textarea id="description" name="description" rows="5" class="form-control"></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="created_time" class="col-md-4 control-label">创建时间：</label>
                    <div class="col-md-8">
                        <input type="text" id="created_time" name="created_time" readonly class="form-control"/>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-offset-4 col-md-8">
                        <button type="submit" class="btn btn-primary"><i class="fa fa-check"></i> 保存</button>
                        <button type="button" class="btn btn-link" id="cancel">取消</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<%@ include file="common/script.jsp" %>

<script>
    $(function () {
        var advertiserId = '${param.id}';

        Ajax.get({
            url: '${API}/advertiser/' + advertiserId,
            success: function (response) {
                if (response.meta.success) {
                    var advertiser = response.data;
                    $('#advertiser_name').val(advertiser.advertiser_name);
                    $('#description').val(advertiser.description);
                    $('#created_time').val(advertiser.created_time);
                }
            }
        });

        $('#advertiserForm').submit(function () {
            Ajax.put({
                url: '${API}/advertiser/' + advertiserId,
                data: {
                    'advertiser_name': $('#advertiser_name').val(),
                    'description': $('#description').val()
                },
                success: function (response) {
                    if (response.meta.success) {
                        location.href = '${CTX}/advertiser';
                    }
                }
            });
            return false;
        });

        $('#cancel').click(function () {
            location.href = '${CTX}/advertiser';
        });
    });
</script>

</body>
</html>
