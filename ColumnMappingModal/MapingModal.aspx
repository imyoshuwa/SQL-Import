<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MapingModal.aspx.cs" Inherits="ColumnMappingModal.MapingModal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>


    <script type="text/javascript" src="/Scripts/jquery-1.10.2.js"></script>
    <script src="Scripts/bootstrap.js"></script>

    <link rel="stylesheet" type="text/css" href="/Content/bootstrap.css" />
    <script type="text/javascript">

        function ShowColumnMappingModal() {
            $('#divSelectColumns').modal('show');
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="modal" id="divSelectColumns" data-backdrop="static" data-keyboard="false" hidden="hidden">
        <div class="modal-dialog" style="width: 800px;">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 id="h1" runat="server" class="modal-title">Map xls Columns with DataBase Columns
                    </h4>
                </div>
                <div class="modal-body">
                    <div class="form-horizontal row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label class="col-sm-4 control-label">
                                    <asp:Literal runat="server" ID="ltlFName" Text="Serial No"></asp:Literal>
                                </label>
                                <div class="col-sm-7">
                                    <asp:DropDownList runat="server" ID="ddl1" CssClass="form-control" AppendDataBoundItems="true"></asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">
                                    <asp:Literal runat="server" ID="ltlHub" Text="Mobile No."></asp:Literal>
                                </label>
                                <div class="col-sm-7">
                                    <asp:DropDownList runat="server" ID="ddl7" CssClass="form-control" AppendDataBoundItems="true"></asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">
                                    <asp:Literal runat="server" ID="Literal10" Text="Customer IP"></asp:Literal>
                                </label>
                                <div class="col-sm-7">
                                    <asp:DropDownList runat="server" ID="ddl10" CssClass="form-control" AppendDataBoundItems="true"></asp:DropDownList>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-4 control-label">
                                    <asp:Literal runat="server" ID="ltlRole" Text="Address"></asp:Literal>
                                </label>
                                <div class="col-sm-7">
                                    <asp:DropDownList runat="server" ID="ddl5" CssClass="form-control" AppendDataBoundItems="true"></asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">
                                    <asp:Literal runat="server" ID="ltlEmail" Text="Area"></asp:Literal>
                                </label>
                                <div class="col-sm-7">
                                    <asp:DropDownList runat="server" ID="ddl3" CssClass="form-control" AppendDataBoundItems="true"></asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">
                                    <asp:Literal runat="server" ID="Literal12" Text="Internet Plan"></asp:Literal>
                                </label>
                                <div class="col-sm-7">
                                    <asp:DropDownList runat="server" ID="ddl12" CssClass="form-control" AppendDataBoundItems="true"></asp:DropDownList>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-4 control-label">
                                    <asp:Literal runat="server" ID="Literal14" Text="Previous Dues"></asp:Literal>
                                </label>
                                <div class="col-sm-7">
                                    <asp:DropDownList runat="server" ID="ddl14" CssClass="form-control" AppendDataBoundItems="true"></asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">
                                    <asp:Literal runat="server" ID="Literal16" Text="Other Charges"></asp:Literal>
                                </label>
                                <div class="col-sm-7">
                                    <asp:DropDownList runat="server" ID="ddl16" CssClass="form-control" AppendDataBoundItems="true"></asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">
                                    <asp:Literal runat="server" ID="Literal18" Text="Total Dues"></asp:Literal>
                                </label>
                                <div class="col-sm-7">
                                    <asp:DropDownList runat="server" ID="ddl18" CssClass="form-control" AppendDataBoundItems="true"></asp:DropDownList>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label class="col-sm-4 control-label">
                                    <asp:Literal runat="server" ID="ltlPhone" Text="Customer Name"></asp:Literal>
                                </label>
                                <div class="col-sm-7">
                                    <asp:DropDownList runat="server" ID="ddl4" CssClass="form-control" AppendDataBoundItems="true"></asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">
                                    <asp:Literal runat="server" ID="Literal11" Text="Antenna IP"></asp:Literal>
                                </label>
                                <div class="col-sm-7">
                                    <asp:DropDownList runat="server" ID="ddl11" CssClass="form-control" AppendDataBoundItems="true"></asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">
                                    <asp:Literal runat="server" ID="Literal17" Text="Status"></asp:Literal>
                                </label>
                                <div class="col-sm-7">
                                    <asp:DropDownList runat="server" ID="ddl17" CssClass="form-control" AppendDataBoundItems="true"></asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">
                                    <asp:Literal runat="server" ID="ltlPosition" Text="Address 2"></asp:Literal>
                                </label>
                                <div class="col-sm-7">
                                    <asp:DropDownList runat="server" ID="ddl6" CssClass="form-control" AppendDataBoundItems="true"></asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">
                                    <asp:Literal runat="server" ID="ltlLName" Text="Area Leader"></asp:Literal>
                                </label>
                                <div class="col-sm-7">
                                    <asp:DropDownList runat="server" ID="ddl2" CssClass="form-control" AppendDataBoundItems="true"></asp:DropDownList>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-4 control-label">
                                    <asp:Literal runat="server" ID="ltlTeam" Text="Mobile No. 2"></asp:Literal>
                                </label>
                                <div class="col-sm-7">
                                    <asp:DropDownList runat="server" ID="ddl8" CssClass="form-control" AppendDataBoundItems="true"></asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">
                                    <asp:Literal runat="server" ID="Literal9" Text="Mobile No. 3"></asp:Literal>
                                </label>
                                <div class="col-sm-7">
                                    <asp:DropDownList runat="server" ID="ddl9" CssClass="form-control" AppendDataBoundItems="true"></asp:DropDownList>
                                </div>
                            </div>


                            <div class="form-group">
                                <label class="col-sm-4 control-label">
                                    <asp:Literal runat="server" ID="Literal13" Text="Plan Rental"></asp:Literal>
                                </label>
                                <div class="col-sm-7">
                                    <asp:DropDownList runat="server" ID="ddl13" CssClass="form-control" AppendDataBoundItems="true"></asp:DropDownList>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-4 control-label">
                                    <asp:Literal runat="server" ID="Literal15" Text="Current Rental"></asp:Literal>
                                </label>
                                <div class="col-sm-7">
                                    <asp:DropDownList runat="server" ID="ddl15" CssClass="form-control" AppendDataBoundItems="true"></asp:DropDownList>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <div class="pull-right">
                        <asp:LinkButton ID="lbtnAddEdit" runat="server" CssClass="btn btn-primary" OnClick="lbtnAddEdit_Click">
                            <span class="glyphicon glyphicon-ok"></span>&nbsp
                            <b>
                                <asp:Literal runat="server" ID="Literal7" Text="Import Customer"></asp:Literal></b>
                        </asp:LinkButton>
                        <span class="btn btn-warning" data-dismiss="modal">
                            <span class="glyphicon glyphicon-remove"></span>&nbsp
                           <b>
                               <asp:Literal runat="server" ID="Literal8" Text="Cancel"></asp:Literal></b>
                        </span>
                    </div>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>

            <div runat="server" id="divAlert" role="alert" visible="false">
                <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                <asp:Label runat="server" ID="lblAlert"></asp:Label>
            </div>

            <div class="panel panel-default">
                <div class="panel-heading">
                    <asp:Literal runat="server" ID="Literal2" Text="Bulk Customer Data Update"></asp:Literal>
                </div>
                <div class="panel-body">
                    <div class="col-sm-12 alert alert-info" style="margin-bottom: 30px;">
                        <label>Before importing customer data check the following things</label>
                        <ul>
                            <li>Click on the download link to download a dummy xls sheet format <strong><a style="color: #0067c5 !important;" href="/ExcelFile/Download/Customer-Data-Format.xlsx" download>Download </a></strong>.</li>
                            <li>Now upload the same xls file using below file upload syatem.</li>
                            <li>After downloading delete the dummy data rows and keep the column names only.</li>
                        </ul>
                    </div>

                    <div class="col-xs-12 col-md-3">
                        <asp:FileUpload ID="fuCustomerRecords" CssClass="form-control"
                            runat="server" />
                    </div>
                    <div class="col-xs-12 col-md-3">
                        <asp:LinkButton ID="lnkUpload" runat="server" CssClass="btn btn-primary"
                            OnClick="lnkUpload_Click">
                        <span class="glyphicon glyphicon-upload"></span><b>
                            Import Customers</b>
                        </asp:LinkButton>
                    </div>
                </div>
            </div>

        </div>
    </form>
</body>
</html>
