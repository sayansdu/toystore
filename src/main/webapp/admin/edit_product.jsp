<%@ page import="java.util.List" %>
<%@ page import="entity.*" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="header.jsp" %>

			<section class="header_text sub">
			
				<h4><u>Изменяем товар</u></h4>
			</section>
			<section class="main-content">
				
				<div class="row">						
					<div class="span9">								
						<div class="row-fluid">
                                            <% Goods good = (Goods) session.getAttribute("updating_object");%>
											<form action="/Kupon/admin/good/update/save" method="post" enctype="multipart/form-data">
											<div class="span6">
                                                <input type="hidden" name="id" value="<%=(good.getId())%>">
                                                <input type="hidden" name="foto_bytes" value="<%=(good.getImage())%>">
												<div class="control-group">
													<label class="control-label">Наименование:</label>
													<div class="controls">
                                                        <input type="text"  class="input-xlarge" name="name" value="<%=(good.getName()) %>" required>
													</div>
												</div>
															  
												<div class="control-group">
													<label class="control-label">Цена:</label>
													<div class="controls">
                                                        <input type="text"  class="input-xlarge" name="price" value="<%= (good.getPrice()) %>" required>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">Описание:</label>
													<div class="controls">

														<textarea id="ckeditor_full"  rows="5" cols="55" name="description" required>
                                                            <%= (good.getDescription()) %>
														</textarea>
													</div>
												</div>
												
											</div>
											<div class="span6">
												<div class="control-group">
													<label class="control-label">Загрузка фото:</label>
													<div class="controls">
														<input type="file" name="photo" value="<%= (good.getFoto_dir()) %>"><br>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label"></label>
													<div class="controls">
                                                        <select class="input-xlarge" name="category" required>
                                                            <option value="" selected>Выберите категорию:</option>
                                                            <%  List<Category> categories = (List<Category>) session.getAttribute("categories");
                                                                for (int i = 0; i < categories.size(); i++) {
                                                                    if(good.getCategory().getId() == categories.get(i).getId()){
                                                            %>
                                                            <option value="<%=(categories.get(i).getId()) %>" selected><%= (categories.get(i).getValue()) %></option>
                                                            <% } else { %>
                                                            <option value="<%=(categories.get(i).getId()) %>"><%= (categories.get(i).getValue()) %></option>
                                                            <%      }
                                                                }
                                                            %>

                                                        </select>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label"></label>
													<div class="controls">
                                                        <select class="input-xlarge" name="section" required>
                                                            <option value="" selected>Выберите раздел:</option>
                                                            <%  List<Section> sections = (List<Section>) session.getAttribute("sections");
                                                                for (int i = 0; i < sections.size(); i++) {
                                                                    if(good.getSection().getId() == sections.get(i).getId()){
                                                            %>
                                                            <option value="<%= (sections.get(i).getId()) %>" selected><%= (sections.get(i).getValue()) %></option>
                                                                    <%} else { %>
                                                            <option value="<%= (sections.get(i).getId()) %>"><%= (sections.get(i).getValue()) %></option>
                                                            <%      }
                                                                }
                                                            %>
                                                        </select>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">Производитель:  </label>
													<div class="controls">
                                                        <input type="text"  placeholder="" class="input-xlarge" name="producer" value="<%= (good.getProducer()) %>" required>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">Цвета:</label>
													<div class="controls">
                                                        <input type="text"  placeholder="" class="input-xlarge" name="color" value="<%= (good.getColor()) %>" required>
													</div>
												</div>
												
												<div class="control-group">
													<label class="control-label">Размер (высота х ширина):</label>
													<div class="controls">
                                                        <input type="text" placeholder=""  class="input-xlarge" name="size" value="<%= (good.getVolume()) %>" required>
													</div>
												</div>
												
												<input type="submit" class="btn btn-default" name="submit" value="Изменить" />
											</div>
											</form>
										</div>							
						
						
					</div>
					<div class="span3 col">
                        <%@include file="left_menu.jsp"%>
				    </div>
			</section>

			<section id="copyright">
				<span styl="">ВСЕ ПРАВА ЗАЩИЩЕНЫ 2014. </span>
			</section>
		</div>
		<script src="vendors/bootstrap-wysihtml5/lib/js/wysihtml5-0.3.0.js"></script>
        <script src="vendors/bootstrap-wysihtml5/src/bootstrap-wysihtml5.js"></script>
        <script src="vendors/ckeditor/ckeditor.js"></script>
        <script src="vendors/ckeditor/adapters/jquery.js"></script>
        <script type="text/javascript" src="vendors/tinymce/js/tinymce/tinymce.min.js"></script>
        <script>
        $(function() {
            // Bootstrap
            $('#bootstrap-editor').wysihtml5();

            // Ckeditor standard
            $( 'textarea#ckeditor_standard' ).ckeditor({width:'98%', height: '150px', toolbar: [
                { name: 'document', items: [ 'Source', '-', 'NewPage', 'Preview', '-', 'Templates' ] }, // Defines toolbar group with name (used to create voice label) and items in 3 subgroups.
                [ 'Cut', 'Copy', 'Paste', 'PasteText', 'PasteFromWord', '-', 'Undo', 'Redo' ],          // Defines toolbar group without name.
                { name: 'basicstyles', items: [ 'Bold', 'Italic' ] }
            ]});
            $( 'textarea#ckeditor_full' ).ckeditor({width:'98%', height: '150px'});
        });

        // Tiny MCE
        tinymce.init({
            selector: "#tinymce_basic",
            plugins: [
                "advlist autolink lists link image charmap print preview anchor",
                "searchreplace visualblocks code fullscreen",
                "insertdatetime media table contextmenu paste"
            ],
            toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image"
        });

        // Tiny MCE
        tinymce.init({
            selector: "#tinymce_full",
            plugins: [
                "advlist autolink lists link image charmap print preview hr anchor pagebreak",
                "searchreplace wordcount visualblocks visualchars code fullscreen",
                "insertdatetime media nonbreaking save table contextmenu directionality",
                "emoticons template paste textcolor"
            ],
            toolbar1: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image",
            toolbar2: "print preview media | forecolor backcolor emoticons",
            image_advtab: true,
            templates: [
                {title: 'Test template 1', content: 'Test 1'},
                {title: 'Test template 2', content: 'Test 2'}
            ]
        });

        </script>
    </body>
</html>