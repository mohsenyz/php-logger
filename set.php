<?php
$method = $_SERVER['REQUEST_METHOD'];
$q = null;
if ($method == 'GET') {
    $q = $_GET['q'];
} else if ($method == 'PUT') {
    $q = file_get_contents('php://input');
}

if ($q != null && !empty($q))
    reportLog($q);

function reportLog($data) {
    $currentIndex = increaseIndex();
    file_put_contents((string) $currentIndex . '.json', $data);
}

function getCurrentIndex() {
    if (!file_exists('index'))
        makeBlankIndex();
    return (int) file_get_contents('index');
}

function makeBlankIndex() {
    file_put_contents('index', 0);
}

function increaseIndex() {
    $currentIndex = getCurrentIndex();
    file_put_contents('index', ++$currentIndex);
    return $currentIndex;
}
echo "YEAH";
?>
