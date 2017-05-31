<?php

require_once dirname(__FILE__) . '/../lib/aboutusGeneratorConfiguration.class.php';
require_once dirname(__FILE__) . '/../lib/aboutusGeneratorHelper.class.php';

/**
 * aboutus actions.
 *
 * @package    hoanglong
 * @subpackage aboutus
 * @author     Your name here
 * @version    SVN: $Id: actions.class.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class aboutusActions extends autoAboutusActions
{
    public function executeIndex(sfWebRequest $request)
    {
        // sorting
        if ($request->getParameter('sort') && $this->isValidSortColumn($request->getParameter('sort'))) {
            $this->setSort(array($request->getParameter('sort'), $request->getParameter('sort_type')));
        }

        // pager
        if ($request->getParameter('page')) {
            $this->setPage($request->getParameter('page'));
        }

        $this->pager = $this->getPager();
        $this->sort = $this->getSort();
        $this->data = CategoryAboutUsTable::getMenuTree();
//        VtHelper::echo_pre($this->data);
//        die;
    }

}
