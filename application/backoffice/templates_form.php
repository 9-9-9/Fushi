<?phpif ($id) {	// Including Database	include_once CFG . 'database.php';	include_once LIB . 'db.php';	$a_template_db = $db->query("SELECT * FROM templates WHERE _id=$id");	$a_template = $a_template_db->fetchObject();}?><form method=POST action="<?=ROOT?>backoffice/templates">	<fieldset>		<legend>Template</legend>		<p>			<label for=form_template_name>Template name</label>			<input id=form_template_name name=form_template_name type=text required value="<?=@$a_template->name?>"<?=$id ? ' disabled' : ''?>>		</p>		<p>			<label for=form_template_title>Title tag</label>			<input id=form_template_title name=form_template_title type=text value="<?=@$a_template->title?>">		</p>		<p>			<label for=form_template_h1>H1 tag</label>			<input id=form_template_h1 name=form_template_h1 type=text value="<?=@$a_template->h1?>">		</p>		<p>			<label for=form_template_h2>H2 tag</label>			<input id=form_template_h2 name=form_template_h2 type=text value="<?=@$a_template->h2?>">		</p>		<p>			<label for=form_template_meta_description>Meta Description tag</label>			<input id=form_template_meta_description name=form_template_meta_description type=text value="<?=@$a_template->metaDescription?>">		</p>		<p>			<label for=form_template_meta_keywords>Meta Keywords tag</label>			<input id=form_template_meta_keywords name=form_template_meta_keywords type=text value="<?=@$a_template->metaKeywords?>">		</p>		<input name=form_template_submit type=submit value=Invio>	<!-- hidden fields -->	<input type=hidden name=action value=<?=$action?>>	<input type=hidden name=_id value=<?=$id?>>	</fieldset></form>