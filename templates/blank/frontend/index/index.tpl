{**
 * Shopware 4 Blank Template
 *
 * @category   Shopware
 * @package    Shopware_Template
 * @subpackage Shopware_Template_Frontend
 * @copyright  Copyright (c) 2014 scriptkid.de (http://scriptkid.de)
 * @author     ppassmann/scriptkid.de
 *}
{block name="frontend_index_start"}{/block}
<?xml version="1.0" ?>
{block name="frontend_index_doctype"}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
{/block}
{block name='frontend_index_html'}
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="{s name='IndexXmlLang'}de{/s}">
{/block}
{block name='frontend_index_header'}
{include file='./frontend/index/header.tpl'}
{/block}
<body {if $Controller}class="ctl_{$Controller}"{/if}>

{* Message if javascript is disabled *}
{block name="frontend_index_no_script_message"}
<noscript>
	<div class="notice bold center noscript_notice">
		{s name="IndexNoscriptNotice"}{/s}
	</div>
</noscript>
{/block}

{block name='frontend_index_before_page'}{/block}

	<!-- <div id="top" class="band"></div> -->

{* Shop header *}
{block name='frontend_index_navigation'}
	<div id="header" class="band">
		<div class="inner">

			{* Trusted Shops *}
			{if {config name=TSID}}
				<div class="trusted_shops_top">
					<a href="https://www.trustedshops.com/shop/certificate.php?shop_id={config name=TSID}" title="{s name='WidgetsTrustedLogo' namespace='frontend/plugins/trusted_shops/logo'}{/s}" target="_blank">
					    <img src="{link file='frontend/_resources/images/logo_trusted_shop_top.png'}" alt="{s name='WidgetsTrustedLogo' namespace='frontend/plugins/trusted_shops/logo'}{/s}" />
					    <p>{s name='WidgetsTrustedLogoText2'}<span><strong>Sicher</strong> einkaufen</span><br/>Trusted Shops zertifiziert{/s}</p>	
					</a>
				</div>
			{/if}
			
			{* Search *}
			{block name='frontend_index_search'}
				{include file="frontend/index/search.tpl"}
			{/block}
		
			{* Language and Currency bar *}
			{block name='frontend_index_actions'}{/block}
			
			{* Shop logo *}
			{block name='frontend_index_logo'}
				<div id="logo" class="grid_5">
					<a href="{url controller='index'}" title="{$sShopname} - {s name='IndexLinkDefault'}{/s}">{$sShopname}</a>
				</div>
			{/block}
		
			{* Shop navigation *}
			{block name='frontend_index_checkout_actions'}
				{action module=widgets controller=checkout action=info}
			{/block}
			
			{block name='frontend_index_navigation_inline'}
				{if $sCompareShow}
					<div id="compareContainerAjax">
					    {action module=widgets controller=compare}
					</div>
				{/if}
			{/block}
			
		</div>
	</div>
	<div id="nav" class="band">
		<div class="inner">
			{* Maincategories navigation top *}
			{block name='frontend_index_navigation_categories_top'}
				{include file='frontend/index/categories_top.tpl'}
			{/block}
		</div>
	</div>
		{/block}
	<div id="content" class="band">
		<div class="inner">
			<div class="container_20">				
				{* Breadcrumb *}
				{block name='frontend_index_breadcrumb'}
					{include file='frontend/index/breadcrumb.tpl'}
				{/block}
				
				{* Content section *}
				<div id="content">
					{* Content top container *}
					{block name="frontend_index_content_top"}{/block}
					
					{* Sidebar left *}
					{block name='frontend_index_content_left'}
						{include file='frontend/index/left.tpl'}
					{/block}
					
					{* Main content *}
					{block name='frontend_index_content'}{/block}
					
					{* Sidebar right *}
					{block name='frontend_index_content_right'}{/block}
				</div>
				{* Footer *}
				{block name="frontend_index_footer"}
					{if $sLastArticlesShow && !$isEmotionLandingPage}
						{include file="frontend/plugins/index/viewlast.tpl"}
					{/if}
				{/block}
			</div>
		</div>
	</div>

	{* FOOTER *}
	{block name="frontend_index_shopware_footer"}
		<div id="footer" class="band">
			<div class="inner">
				{include file='frontend/index/footer.tpl'}
			</div>	
			<div class="shopware_footer inner">
				{s name="IndexRealizedWith"}Realisiert mit{/s} <a href="http://www.shopware.de" target="_blank" title="{s name='IndexRealizedShopsystem'}Shopware{/s}">{s name="IndexRealizedShopsystem"}Shopware{/s}</a>
			</div>
		</div>
	{/block}
	{block name='frontend_index_body_inline'}{/block}
</body>
</html>