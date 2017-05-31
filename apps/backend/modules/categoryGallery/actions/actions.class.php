<?php

require_once dirname(__FILE__).'/../lib/categoryGalleryGeneratorConfiguration.class.php';
require_once dirname(__FILE__).'/../lib/categoryGalleryGeneratorHelper.class.php';

/**
 * categoryGallery actions.
 *
 * @package    hoanglong
 * @subpackage categoryGallery
 * @author     Your name here
 * @version    SVN: $Id: actions.class.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class categoryGalleryActions extends autoCategoryGalleryActions
{
    public function executeIndex(sfWebRequest $request)
    {
        // sorting
        if ($request->getParameter('sort') && $this->isValidSortColumn($request->getParameter('sort')))
        {
            $this->setSort(array($request->getParameter('sort'), $request->getParameter('sort_type')));
        }

        // pager
        if ($request->getParameter('page'))
        {
            $this->setPage($request->getParameter('page'));
        }

        $this->pager = $this->getPager();
        $this->sort = $this->getSort();
        $this->data = CategoryGalleryTable::getMenuTree();
//        VtHelper::echo_pre($this->data);
//        die;
    }
}
