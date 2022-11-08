.class public Lcom/sonyericsson/music/picker/AlbumShortcutFragment;
.super Lcom/sonyericsson/music/library/AlbumsFragment;
.source "AlbumShortcutFragment.java"


# instance fields
.field private final SHORTCUT_ID_ALBUM_PREFIX:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/sonyericsson/music/library/AlbumsFragment;-><init>()V

    const-string v0, "music-shortcut-album-"

    .line 44
    iput-object v0, p0, Lcom/sonyericsson/music/picker/AlbumShortcutFragment;->SHORTCUT_ID_ALBUM_PREFIX:Ljava/lang/String;

    return-void
.end method

.method public static newInstance()Lcom/sonyericsson/music/picker/AlbumShortcutFragment;
    .locals 1

    .line 47
    new-instance v0, Lcom/sonyericsson/music/picker/AlbumShortcutFragment;

    invoke-direct {v0}, Lcom/sonyericsson/music/picker/AlbumShortcutFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/sonyericsson/music/picker/AlbumShortcutFragment;->getAdapter()Lcom/sonyericsson/music/library/AlbumsAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected getAdapter()Lcom/sonyericsson/music/library/AlbumsAdapter;
    .locals 4

    .line 146
    iget-object v0, p0, Lcom/sonyericsson/music/library/AlbumsFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/music/library/AlbumsFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    .line 150
    :cond_0
    new-instance v0, Lcom/sonyericsson/music/library/AlbumsAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/music/library/AlbumsFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/sonyericsson/music/library/AlbumsAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/music/artdecoder/ArtDecoder;ZZ)V

    return-object v0
.end method

.method protected getHeaderView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getMusicActivity()Lcom/sonyericsson/music/MusicActivity;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getNoContentText()Ljava/lang/String;
    .locals 1

    const v0, 0x7f100218

    .line 67
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSystemUIConfig()Lcom/sonyericsson/music/library/SystemUIConfig;
    .locals 1

    .line 167
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/library/SystemUIConfig;->noActionBar(Landroid/content/Context;)Lcom/sonyericsson/music/library/SystemUIConfig;

    move-result-object v0

    return-object v0
.end method

.method protected isAlbumsShownAsGrid(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 87
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    cmp-long v3, p4, v1

    if-nez v3, :cond_0

    .line 90
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 91
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v1, p3}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sonyericsson/music/common/MenuUtils$AlbumData;

    if-eqz p3, :cond_5

    .line 98
    new-instance v6, Landroid/content/Intent;

    const-class v0, Lcom/sonyericsson/music/MusicActivity;

    invoke-direct {v6, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "android.intent.action.VIEW"

    .line 99
    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "vnd.android.cursor.dir/albums"

    .line 100
    invoke-virtual {v6, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "ALBUMID"

    .line 101
    invoke-virtual {v6, v0, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 104
    invoke-virtual {p3}, Lcom/sonyericsson/music/common/MenuUtils$AlbumData;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {p1, v0}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownAlbumWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "ALBUM_NAME"

    .line 106
    invoke-virtual {v6, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0700cd

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 111
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p3}, Lcom/sonyericsson/music/common/MenuUtils$AlbumData;->getArtistName()Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-virtual {p3}, Lcom/sonyericsson/music/common/MenuUtils$AlbumData;->getAlbumName()Ljava/lang/String;

    move-result-object p3

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 111
    invoke-static {v0, v1, p3, p2, v2}, Lcom/sonyericsson/music/common/AlbumArtUtils;->getDecodeAlbumArt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 115
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-static {p3, p2, v0}, Lcom/sonyericsson/music/common/AlbumArtUtils;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    move-object v3, p2

    if-eqz p3, :cond_2

    if-eq v3, p3, :cond_2

    .line 117
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 119
    :cond_2
    sget-boolean p2, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_Q_API:Z

    if-eqz p2, :cond_3

    .line 120
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "music-shortcut-album-"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0801c1

    move-object v0, p1

    move-object v1, v7

    move-object v4, v6

    .line 121
    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/music/library/LibraryListFragment;->createShortcutIntentResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object p2

    goto :goto_1

    .line 125
    :cond_3
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    if-nez v3, :cond_4

    const-string p3, "android.intent.extra.shortcut.ICON_RESOURCE"

    const p4, 0x7f0801c1

    .line 128
    invoke-static {p1, p4}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object p4

    .line 127
    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    :cond_4
    const-string p3, "android.intent.extra.shortcut.ICON"

    .line 130
    invoke-virtual {p2, p3, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_1
    const-string p3, "android.intent.extra.shortcut.INTENT"

    .line 134
    invoke-virtual {p2, p3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p3, "android.intent.extra.shortcut.NAME"

    .line 135
    invoke-virtual {p2, p3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p3, -0x1

    .line 137
    invoke-virtual {p1, p3, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_2

    .line 139
    :cond_5
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 141
    :goto_2
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 59
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mViewDestroyed:Z

    if-nez v0, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->showNoContentHeaderView()V

    .line 62
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/music/library/AlbumsFragment;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 42
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/music/picker/AlbumShortcutFragment;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method protected usesStoragePermission()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
