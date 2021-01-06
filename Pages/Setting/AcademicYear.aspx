<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.Master" AutoEventWireup="true" CodeBehind="AcademicYear.aspx.cs" Inherits="BCS6thEVFall2020DemoProject.Pages.Setting.AcademicYear" %>
<asp:Content ID="Content1" ContentPlaceHolderID="css" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentPageTitle" runat="server">
    ACADEMIC YEAR
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentPath" runat="server">
                <li class="breadcrumb-item"><a href="../../DashBoard.aspx">Home</a>
                </li>
                <li class="breadcrumb-item">Setting
                </li>
                <li class="breadcrumb-item active">Academic Year
                </li>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="contentDescription" runat="server">
	This form is used to add a new Academic Year and allow you to maniputle (Edit/Delete) the already saved data.
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="contentBody" runat="server">

	
    <section id="basic-form-layouts">
	<div class="row match-height">
		<div class="col-md-12">
			<div class="card">
				<div class="card-header">
					<h4 class="card-title" id="basic-layout-form">Academic year Info</h4>
					<a class="heading-elements-toggle"><i class="icon-ellipsis font-medium-3"></i></a>
					<div class="heading-elements">
						<ul class="list-inline mb-0">
							<li><a data-action="collapse"><i class="icon-minus4"></i></a></li>
							<li><a data-action="reload"><i class="icon-reload"></i></a></li>
							<li><a data-action="expand"><i class="icon-expand2"></i></a></li>
							<li><a data-action="close"><i class="icon-cross2"></i></a></li>
						</ul>
					</div>
				</div>
				<div class="card-body collapse in">
					<div class="card-block">
						<div class="card-text">
							<p>Please kindly fill out the form according to valid <code>documents and evidence</code>.</p>
						</div>
						<form id="form1" class="form" runat="server">
							<div class="form-body">
								<h4 class="form-section"><i class="icon-info"></i> Academic year Info</h4>
								<div class="row">
									<div class="col-md-4">
										<div class="form-group">
											<label for="txtTitle">Title</label>
											<asp:TextBox ID="txtTitle" runat="server" CssClass="form-control" placeholder="Title"></asp:TextBox>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group">
											<label for="txtAbbreviation">Abbreviation</label>
											<asp:TextBox ID="txtAbbreviation" runat="server" CssClass="form-control" placeholder="Abbreviation"></asp:TextBox>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group">
											<label for="txtFarsiTitle">Farsi Title</label>
											<asp:TextBox ID="txtFarsiTitle" runat="server" CssClass="form-control" placeholder="Farsi Title"></asp:TextBox>
										</div>
									</div>
								</div>
							</div>

							<div class="form-actions center">
								<asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-warning mr-1" />
								<asp:Button ID="btnSave" runat="server" Text="Save" OnClientClick="return Validate();" CssClass="btn btn-primary" OnClick="btnSave_Click" />
								
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</section>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="scripts" runat="server">
	<script type="text/javascript">

        function Validate() {

			var flag = true;

			if ($('#<%= txtTitle.ClientID%>').val() == "") {
				flag = false;
				$('#<%= txtTitle.ClientID%>').css("background-color", "#FFAAAA");
			}
			else {
                $('#<%= txtTitle.ClientID%>').css("background-color", "#fff")
            }

            if ($('#<%= txtAbbreviation.ClientID%>').val() == "") {
                flag = false;
                $('#<%= txtAbbreviation.ClientID%>').css("background-color", "#FFAAAA");
			}
			else {
                $('#<%= txtAbbreviation.ClientID%>').css("background-color", "#fff")
            }

            if ($('#<%= txtFarsiTitle.ClientID%>').val() == "") {
                flag = false;
                $('#<%= txtFarsiTitle.ClientID%>').css("background-color", "#FFAAAA");
			}
			else {
                $('#<%= txtFarsiTitle.ClientID%>').css("background-color", "#fff")
            }

			if (flag != true) {
                toastr.error("Please enter valid informations in red backgrounds!", "BU-MIS: Validation Alert !", { progressBar: !0 });
                swal("STOP", "Please enter valid informations in red backgrounds.", "error");
			}
			
			return flag;
        }
    </script>
</asp:Content>
