<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Image Gallery</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .thumbnail {
            max-height: 200px;
            margin-bottom: 20px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1 class="mt-5 mb-3">Image Gallery</h1>
        <div class="row">
            <?php
           // $imageDirectory = "images"; 
            //echo $imageDirectory;
            $images = glob("images" . '/*.{jpg,jpeg,png,gif}', GLOB_BRACE);
            
            if (count($images) > 0) {
                foreach ($images as $image) {
                    echo '<div class="col-md-3">';
                    echo '<img src="' . $image . '" class="img-thumbnail thumbnail" data-toggle="modal" data-target="#imageModal">' ;
                    echo '</div>';
                }
            } else {
                echo '<div class="col-md-12">';
                echo '<p>No images found.</p>';
                echo '</div>';
            }
            ?>
        </div>
    </div>

    <!-- Image Modal -->
    <div class="modal fade" id="imageModal" tabindex="-1" role="dialog" aria-labelledby="imageModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="imageModalLabel">Image</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <img src="" id="modalImage" class="img-fluid">
                </div>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>
        $('.thumbnail').click(function() {
            var src = $(this).attr('src');
            $('#modalImage').attr('src', src);
        });
    </script>
</body>
</html>
