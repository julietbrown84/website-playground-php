<?php
/**
 * Created by PhpStorm.
 * User: jbrown
 * Date: 10/08/16
 * Time: 11:45 AM
 */
class TestObject extends DataObject
{
    private static $db = array(
        'Content' => 'Text'
    );

    private static $has_one = array(
        'Page' => 'Page'
    );

    /**
     * @return FieldList
     */
    public function getCMSFields()
    {
        // 1 option
//        $fields = parent::getCMSFields();
//        return $fields;

        // 2 option
        $fields = FieldList::create();
        return $fields;
    }
}