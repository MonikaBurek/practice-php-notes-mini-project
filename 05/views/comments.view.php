<?php
require('partials/head.php'); ?>
<?php
require('partials/banner.php'); ?>


    <main>
        <div class="mx-auto max-w-7xl px-4 py-6 sm:px-6 lg:px-8">
            <ul>
                <?php $i=1?>
                <?php foreach ($comments as $comment): ?>
                    <li>
                            <?=$i?>. <?= $comment['body'] ?>
                    </li>
                    <?php $i = $i+1?>
                <?php endforeach; ?>
            </ul>

            <p class="mt-6">
                <a href="/comments/create" class="text-blue-500 hover:underline">Dodaj komentarz</a>
            </p>
        </div>


    </main>
<?php
require('partials/footer.php'); ?>