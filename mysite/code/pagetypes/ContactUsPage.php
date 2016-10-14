<?php

/**
 * Class SearchResultsPage
 *
 */
class ContactUsPage extends Page
{
    /**
     * @var bool
     */
    protected $isAutoCreatedPage = true;
    /**
     * @var bool
     */
    protected $contentAdminCanEdit = true;
    /**
     * @var string
     */
//    protected $canViewType = Page::CAN_VIEW_TYPE_ANYONE;
    /**
     * @var array
     */
    protected $viewerGroupCodes = array();
    /**
     * @var string
     */
    protected $defaultUrlSegment = 'search';
    /**
     * @var string
     */
    protected $defaultTitle = 'Search Results';

    /**
     * @param null $member
     * @return bool
     */
	public function canDeleteFromLive($member = null)
	{
		return false;
	}

    /**
     * @return FieldList
     */
	public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        // Remove fields
        $fields->removeByName('URLSegment');

        return $fields;
    }
}

/**
 * Class ContactUsPage_Controller
 *
 * @property SearchResultsPage dataRecord
 * @method SearchResultsPage data()
 * @mixin SearchResultsPage dataRecord
 */
class ContactUs_Controller extends Page_Controller
{

 
}
