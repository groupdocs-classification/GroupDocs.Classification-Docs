set PRODUCT=classification

call git submodule update --init --recursive
call git submodule foreach git pull origin master
xcopy net common\content\%PRODUCT%\net /s /e /Y /i
xcopy _index.md common\content\%PRODUCT% 
cd common
call hugo server