<?php 
    return [
     
        [
        'label'=> 'Product Manager',
        'route'=> 'product.index',
        'icon'=> ' fa-archive',
        'item' => [
            [
            'label'=> 'All product',
            'route'=> 'product.index'

        ],
        [
            'label'=> 'Add product',
            'route'=> 'product.create'

        ],
    ],
        ],
        [
        'label'=> 'Users Manager',
        'route'=> 'user.index',
        'icon'=> 'fa-user',
        'item' => [
            [
            'label'=> 'All User',
            'route'=> 'user.index'

        ],
        [
            'label'=> 'Add User',
            'route'=> 'user.create'

        ],
    ],
        ],
        [
        'label'=> 'Blogs Manager',
        'route'=> 'blog.index',
        'icon'=> 'fa-book',
        'item' => [
            [
            'label'=> 'All blog',
            'route'=> 'blog.index'

        ],
        [
            'label'=> 'Add blog',
            'route'=> 'blog.create'

        ],
    ],
        ],
        [
        'label'=> 'Comments Manager',
        'route'=> 'comment.index',
        'icon'=> ' fa-comments',
        'item' => [
            [
            'label'=> 'All comment',
            'route'=> 'comment.index'

        ],
        [
            'label'=> 'Add comment',
            'route'=> 'comment.create'

        ],
    ],
        ],
        [
        'label'=> 'Order Manager',
        'route'=> 'order.index',
        'icon'=> 'fa-shopping-cart',
        'item' => [
            [
            'label'=> 'All order',
            'route'=> 'order.index'

        ],
        [
            'label'=> 'Add order',
            'route'=> 'order.create'

        ],
    ],
        ],
    ]


?>