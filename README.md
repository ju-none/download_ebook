# Download an Ebook (Linux config)

## Download & Install getxbook program
```
git clone https://aur.archlinux.org/getxbook.git
sudo pacman -U getxbook*.tar.zst
```

## Run program
```
getxbookgui
```

## Get Google Ebook ID
- Open the Google Book link in Firefox (or Chrome)
- Open the Inspect mode
- Go to the Network window
- (Reload the page if nothing appear)
- Search in the File column :
```
books?id=XXXXXXXXX&..
```
- Copy the ID only & paste in getxbookgui
- Press the "Download" button
- Wait for download to complete

## Compile & Assemble images in one PDF
- Download the "make_book.sh" program
- Run :
```
./make_book
```
- Answer questions for details

### Finish !

## Errors
- If shell program doesn't run, try change chmod :
```
chmod +x make_book.sh
```

