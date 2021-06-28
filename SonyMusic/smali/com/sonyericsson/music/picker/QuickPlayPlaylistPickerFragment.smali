.class public Lcom/sonyericsson/music/picker/QuickPlayPlaylistPickerFragment;
.super Lcom/sonyericsson/music/library/LibraryListFragment;
.source "QuickPlayPlaylistPickerFragment.java"


# static fields
.field private static final LOADER_LOCAL_PLAYLIST_ART:I = 0x1

.field private static final LOADER_PLAYLISTS:I = 0x0

.field private static final LOADER_SMART_PLAYLIST_ART:I = 0x2


# instance fields
.field private mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/sonyericsson/music/picker/QuickPlayPlaylistPickerFragment;
    .locals 1

    .line 47
    new-instance v0, Lcom/sonyericsson/music/picker/QuickPlayPlaylistPickerFragment;

    invoke-direct {v0}, Lcom/sonyericsson/music/picker/QuickPlayPlaylistPickerFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected getAdapter()Landroid/widget/CursorAdapter;
    .locals 4

    .line 73
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/sonyericsson/music/picker/QuickPlayPlaylistPickerFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    if-nez v1, :cond_0

    .line 76
    new-instance v1, Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    invoke-direct {v1, v0}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/music/picker/QuickPlayPlaylistPickerFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    .line 78
    :cond_0
    new-instance v1, Lcom/sonyericsson/music/library/PlaylistsAdapter;

    iget-object v2, p0, Lcom/sonyericsson/music/picker/QuickPlayPlaylistPickerFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/sonyericsson/music/library/PlaylistsAdapter;-><init>(Landroid/app/Activity;Lcom/sonyericsson/music/artdecoder/ArtDecoder;Z)V

    return-object v1
.end method

.method protected bridge synthetic getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/sonyericsson/music/picker/QuickPlayPlaylistPickerFragment;->getAdapter()Landroid/widget/CursorAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected getHeaderView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getLoaderIds()[I
    .locals 1

    const/4 v0, 0x3

    .line 83
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method

.method protected getMusicActivity()Lcom/sonyericsson/music/MusicActivity;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getNoContentText()Ljava/lang/String;
    .locals 1

    const v0, 0x7f100216

    .line 68
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSystemUIConfig()Lcom/sonyericsson/music/library/SystemUIConfig;
    .locals 1

    .line 173
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/library/SystemUIConfig;->noActionBar(Landroid/content/Context;)Lcom/sonyericsson/music/library/SystemUIConfig;

    move-result-object v0

    return-object v0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 7
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

    .line 90
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 92
    new-instance p1, Lcom/sonyericsson/music/common/PlaylistsLoader;

    sget-object v0, Lcom/sonyericsson/music/common/PlaylistsLoader$Mode;->LOCAL_ALL:Lcom/sonyericsson/music/common/PlaylistsLoader$Mode;

    const/4 v2, 0x0

    invoke-direct {p1, v1, v0, p2, v2}, Lcom/sonyericsson/music/common/PlaylistsLoader;-><init>(Landroid/content/Context;Lcom/sonyericsson/music/common/PlaylistsLoader$Mode;Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;Z)V

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 94
    new-instance p1, Landroidx/loader/content/CursorLoader;

    .line 95
    invoke-static {v1}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$LocalPlaylistArtUri;->getUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroidx/loader/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 97
    new-instance p1, Landroidx/loader/content/CursorLoader;

    .line 98
    invoke-static {v1}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$SmartPlaylistArtUri;->getUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroidx/loader/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_2
    return-object p2
.end method

.method public onDestroy()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/sonyericsson/music/picker/QuickPlayPlaylistPickerFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->destroy()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/sonyericsson/music/picker/QuickPlayPlaylistPickerFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    .line 58
    :cond_0
    invoke-super {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 125
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 p2, 0x0

    const-wide/16 v0, -0x1

    cmp-long v2, p4, v0

    if-nez v2, :cond_0

    .line 128
    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    .line 129
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 134
    iget-object v1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v1, p3}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/database/Cursor;

    .line 135
    invoke-static {p3}, Lcom/sonyericsson/music/common/DBUtils;->getPlaylistType(Landroid/database/Cursor;)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    move-result-object p3

    if-nez p3, :cond_1

    long-to-int p3, p4

    .line 138
    invoke-static {p3}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri(I)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 140
    :cond_1
    sget-object p4, Lcom/sonyericsson/music/picker/QuickPlayPlaylistPickerFragment$1;->$SwitchMap$com$sonyericsson$music$common$SmartPlaylistUtils$SmartPlaylistType:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p5

    aget p4, p4, p5

    packed-switch p4, :pswitch_data_0

    goto :goto_0

    .line 149
    :pswitch_0
    invoke-static {p1, p3}, Lcom/sonyericsson/music/common/SmartPlaylistUtils;->getSmartPlaylistProperties(Landroid/content/Context;Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 151
    invoke-virtual {p3}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getContainerUri()Landroid/net/Uri;

    move-result-object v0

    .line 159
    :cond_2
    :goto_0
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 160
    invoke-virtual {p3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    if-eqz v0, :cond_3

    const/4 p2, -0x1

    .line 161
    :cond_3
    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 162
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
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

    .line 105
    invoke-virtual {p1}, Landroidx/loader/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 111
    :pswitch_0
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {p1}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/library/PlaylistsAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/sonyericsson/music/library/PlaylistsAdapter;->loadPlaylistArtUriToAdapter(Landroid/database/Cursor;Z)V

    goto :goto_0

    .line 107
    :pswitch_1
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {p1}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/library/PlaylistsAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/sonyericsson/music/library/PlaylistsAdapter;->loadPlaylistArtUriToAdapter(Landroid/database/Cursor;Z)V

    goto :goto_0

    .line 115
    :pswitch_2
    new-instance v0, Lcom/sonyericsson/music/library/PlaylistsCursorWrapper;

    invoke-direct {v0, p2}, Lcom/sonyericsson/music/library/PlaylistsCursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 116
    invoke-super {p0, p1, v0}, Lcom/sonyericsson/music/library/LibraryListFragment;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/music/picker/QuickPlayPlaylistPickerFragment;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method
