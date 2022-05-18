.class public Lcom/sonyericsson/music/picker/ArtistAlbumPickerFragment;
.super Lcom/sonyericsson/music/library/LibraryListFragment;
.source "ArtistAlbumPickerFragment.java"


# static fields
.field private static final KEY_ARTIST_ID:Ljava/lang/String; = "artist-id"


# instance fields
.field private mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;-><init>()V

    return-void
.end method

.method private getArtistId()J
    .locals 5

    .line 89
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "artist-id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    return-wide v3

    .line 92
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Artist id not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static newInstance(J)Lcom/sonyericsson/music/picker/ArtistAlbumPickerFragment;
    .locals 3

    .line 48
    new-instance v0, Lcom/sonyericsson/music/picker/ArtistAlbumPickerFragment;

    invoke-direct {v0}, Lcom/sonyericsson/music/picker/ArtistAlbumPickerFragment;-><init>()V

    .line 50
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "artist-id"

    .line 51
    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 52
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/sonyericsson/music/picker/ArtistAlbumPickerFragment;->getAdapter()Lcom/sonyericsson/music/library/AlbumsAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected getAdapter()Lcom/sonyericsson/music/library/AlbumsAdapter;
    .locals 4

    .line 58
    iget-object v0, p0, Lcom/sonyericsson/music/picker/ArtistAlbumPickerFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/music/picker/ArtistAlbumPickerFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    .line 61
    :cond_0
    new-instance v0, Lcom/sonyericsson/music/library/AlbumsAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/music/picker/ArtistAlbumPickerFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

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

    .line 167
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSystemUIConfig()Lcom/sonyericsson/music/library/SystemUIConfig;
    .locals 1

    .line 172
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/library/SystemUIConfig;->noActionBar(Landroid/content/Context;)Lcom/sonyericsson/music/library/SystemUIConfig;

    move-result-object v0

    return-object v0
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

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .line 71
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 73
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 74
    invoke-direct {p0}, Lcom/sonyericsson/music/picker/ArtistAlbumPickerFragment;->getArtistId()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/sonyericsson/music/common/LibraryArtistAlbumsQueryParams;->getUri(J)Landroid/net/Uri;

    move-result-object v2

    .line 75
    invoke-static {v1}, Lcom/sonyericsson/music/common/LibraryArtistAlbumsQueryParams;->getColumns(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    .line 76
    invoke-static {}, Lcom/sonyericsson/music/common/LibraryArtistAlbumsQueryParams;->getSelection()Ljava/lang/String;

    move-result-object v4

    .line 77
    invoke-static {}, Lcom/sonyericsson/music/common/LibraryArtistAlbumsQueryParams;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v5

    .line 78
    invoke-static {}, Lcom/sonyericsson/music/common/LibraryArtistAlbumsQueryParams;->getSortOrder()Ljava/lang/String;

    move-result-object v6

    .line 80
    new-instance p1, Lcom/sonyericsson/music/common/HighResAwarePermissionCursorLoader;

    const-string v7, "android.permission.READ_EXTERNAL_STORAGE"

    sget-object v8, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;->ALBUM:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lcom/sonyericsson/music/common/HighResAwarePermissionCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/sonyericsson/music/picker/ArtistAlbumPickerFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->destroy()V

    const/4 v0, 0x0

    .line 148
    iput-object v0, p0, Lcom/sonyericsson/music/picker/ArtistAlbumPickerFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    .line 150
    :cond_0
    invoke-super {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 110
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-wide/16 p2, -0x1

    cmp-long v0, p4, p2

    if-lez v0, :cond_0

    .line 114
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 115
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 116
    invoke-static {p4, p5}, Lcom/sonyericsson/music/picker/AlbumTrackPickerFragment;->newInstance(J)Lcom/sonyericsson/music/picker/AlbumTrackPickerFragment;

    move-result-object p2

    const/4 p3, 0x0

    .line 117
    invoke-virtual {p1, p3}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    const p3, 0x7f010014

    const p4, 0x7f010015

    const p5, 0x7f010013

    .line 118
    invoke-virtual {p1, p3, p5, p4, p5}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(IIII)Landroidx/fragment/app/FragmentTransaction;

    const p3, 0x7f090180

    .line 120
    invoke-virtual {p1, p3, p2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 121
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 123
    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    .line 124
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V
    .locals 0
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

    if-nez p2, :cond_0

    .line 100
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 p2, 0x0

    .line 101
    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    .line 102
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    .line 105
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/music/library/LibraryListFragment;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 40
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/music/picker/ArtistAlbumPickerFragment;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method protected usesStoragePermission()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
