.class public Lcom/sonyericsson/music/library/AlbumsFragment;
.super Lcom/sonyericsson/music/library/LibraryListFragment;
.source "AlbumsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/library/AlbumsFragment$AlbumLayout;
    }
.end annotation


# static fields
.field private static final KEY_CONTEXT_GROUP_ID:Ljava/lang/String; = "context_group_id"

.field private static final KEY_SUPPORTS_GRID_LAYOUT:Ljava/lang/String; = "supports_grid_layout"

.field public static final TAG:Ljava/lang/String; = "albums"


# instance fields
.field protected mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

.field private mSupportsGridLayout:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;-><init>()V

    return-void
.end method

.method private getContextMenuGroupId()I
    .locals 3

    .line 91
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "context_group_id"

    .line 92
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    :cond_0
    return v1
.end method

.method private getSupportsGridLayout()Z
    .locals 3

    .line 96
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "supports_grid_layout"

    .line 97
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :cond_0
    return v1
.end method

.method public static newInstance(IZ)Lcom/sonyericsson/music/library/AlbumsFragment;
    .locals 3

    .line 80
    new-instance v0, Lcom/sonyericsson/music/library/AlbumsFragment;

    invoke-direct {v0}, Lcom/sonyericsson/music/library/AlbumsFragment;-><init>()V

    .line 82
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "context_group_id"

    .line 83
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "supports_grid_layout"

    .line 84
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 85
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private openAlbumFragment(Lcom/sonyericsson/music/common/MenuUtils$AlbumData;)V
    .locals 9

    .line 293
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/MenuUtils$AlbumData;->getAlbumId()J

    move-result-wide v0

    .line 294
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/MenuUtils$AlbumData;->getArtistName()Ljava/lang/String;

    move-result-object v4

    .line 295
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/MenuUtils$AlbumData;->getImageUri()Landroid/net/Uri;

    move-result-object v5

    .line 296
    sget-object v2, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 298
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/MenuUtils$AlbumData;->getAlbumName()Ljava/lang/String;

    move-result-object v3

    .line 299
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/MenuUtils$AlbumData;->getArtistUri()Landroid/net/Uri;

    move-result-object v7

    new-instance v8, Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    const-string p1, "albums"

    invoke-direct {v8, p1}, Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 298
    invoke-static/range {v2 .. v8}, Lcom/sonyericsson/music/library/AlbumFragment;->newInstance(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Lcom/sonyericsson/music/library/AlbumFragment;

    move-result-object p1

    .line 301
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->getMusicFragmentManager()Lcom/sonyericsson/music/MusicFragmentManager;

    move-result-object v0

    const-string v1, "album"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/sonyericsson/music/MusicFragmentManager;->openFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/AlbumsFragment;->getAdapter()Lcom/sonyericsson/music/library/AlbumsAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected getAdapter()Lcom/sonyericsson/music/library/AlbumsAdapter;
    .locals 5

    .line 255
    iget-object v0, p0, Lcom/sonyericsson/music/library/AlbumsFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    if-nez v0, :cond_0

    .line 256
    new-instance v0, Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/music/library/AlbumsFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    .line 258
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/music/library/AlbumsFragment;->mSupportsGridLayout:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/library/AlbumsFragment;->isAlbumsShownAsGrid(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 259
    :goto_0
    new-instance v2, Lcom/sonyericsson/music/library/AlbumsAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/music/library/AlbumsFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    invoke-direct {v2, v3, v4, v1, v0}, Lcom/sonyericsson/music/library/AlbumsAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/music/artdecoder/ArtDecoder;ZZ)V

    return-object v2
.end method

.method protected getMatcherUris()[Lcom/sonyericsson/music/library/BaseFragment$MatcherData;
    .locals 5

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 283
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 286
    new-array v1, v2, [Lcom/sonyericsson/music/library/BaseFragment$MatcherData;

    new-instance v3, Lcom/sonyericsson/music/library/BaseFragment$MatcherData;

    sget-boolean v4, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz v4, :cond_0

    const-string v4, "com.sonyericsson.music.musicinfo"

    goto :goto_0

    :cond_0
    const-string v4, "media"

    :goto_0
    invoke-direct {v3, v2, v0, v4}, Lcom/sonyericsson/music/library/BaseFragment$MatcherData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    aput-object v3, v1, v0

    return-object v1
.end method

.method protected getRootLayoutResource()I
    .locals 1

    .line 249
    iget-boolean v0, p0, Lcom/sonyericsson/music/library/AlbumsFragment;->mSupportsGridLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/library/AlbumsFragment;->isAlbumsShownAsGrid(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0c001c

    goto :goto_0

    .line 250
    :cond_0
    invoke-super {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->getRootLayoutResource()I

    move-result v0

    :goto_0
    return v0
.end method

.method protected isAlbumsShownAsGrid(Landroid/content/Context;)Z
    .locals 1

    .line 325
    invoke-static {p1}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->getAlbumsLayout(Landroid/content/Context;)I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method protected isContentFragment()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 233
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    .line 235
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    invoke-direct {p0}, Lcom/sonyericsson/music/library/AlbumsFragment;->getContextMenuGroupId()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 243
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    .line 244
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->getContextMenuData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/common/MenuUtils$AlbumData;

    new-instance v2, Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    const-string v3, "albums"

    invoke-direct {v2, v3}, Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-static {v0, p1, v1, v2}, Lcom/sonyericsson/music/common/MenuUtils;->onAlbumContextMenuSelected(Lcom/sonyericsson/music/MusicActivity;ILcom/sonyericsson/music/common/MenuUtils$AlbumData;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Z

    move-result p1

    return p1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    .line 180
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 182
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget p2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 183
    iget-object p3, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {p3}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getHeaderCount()I

    move-result p3

    if-ge p2, p3, :cond_0

    return-void

    :cond_0
    if-lez p2, :cond_1

    .line 188
    iget-object p3, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {p3, p2}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/music/common/MenuUtils$AlbumData;

    .line 189
    invoke-virtual {p0, p2}, Lcom/sonyericsson/music/library/LibraryListFragment;->setContextMenuData(Ljava/lang/Object;)V

    .line 191
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    check-cast p3, Lcom/sonyericsson/music/MusicActivity;

    const/4 v0, 0x1

    invoke-static {p3, p2, v0}, Lcom/sonyericsson/music/common/MenuUtils;->getAlbumContextMenuBuilder(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/common/MenuUtils$AlbumData;Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p2

    .line 192
    invoke-direct {p0}, Lcom/sonyericsson/music/library/AlbumsFragment;->getContextMenuGroupId()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setGroupId(I)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->build(Landroid/view/ContextMenu;)V

    :cond_1
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

    .line 148
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 150
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_0

    .line 151
    invoke-static {}, Lcom/sonyericsson/music/common/LibraryAlbumsQueryParams;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 152
    invoke-static {p1}, Lcom/sonyericsson/music/common/LibraryAlbumsQueryParams;->getColumns(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    .line 153
    invoke-static {}, Lcom/sonyericsson/music/common/LibraryAlbumsQueryParams;->getSelection()Ljava/lang/String;

    move-result-object v4

    .line 154
    invoke-static {}, Lcom/sonyericsson/music/common/LibraryAlbumsQueryParams;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v5

    .line 155
    invoke-static {p1}, Lcom/sonyericsson/music/common/LibraryAlbumsQueryParams;->getSortOrder(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 157
    new-instance p1, Lcom/sonyericsson/music/common/HighResAwarePermissionCursorLoader;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

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

    .line 198
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/music/library/LibraryBaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 103
    invoke-direct {p0}, Lcom/sonyericsson/music/library/AlbumsFragment;->getSupportsGridLayout()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/music/library/AlbumsFragment;->mSupportsGridLayout:Z

    .line 105
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/music/library/LibraryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/sonyericsson/music/library/AlbumsFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->destroy()V

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lcom/sonyericsson/music/library/AlbumsFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    .line 143
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

    const-wide/16 p1, -0x1

    cmp-long v0, p4, p1

    if-lez v0, :cond_1

    .line 266
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/MusicActivity;

    if-lez p3, :cond_1

    if-eqz p1, :cond_1

    .line 267
    invoke-virtual {p1}, Lcom/sonyericsson/music/MusicActivity;->isFragmentTransactionAllowed()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 268
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {p1, p3}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 269
    instance-of p2, p1, Lcom/sonyericsson/music/common/MenuUtils$AlbumData;

    if-nez p2, :cond_0

    return-void

    .line 273
    :cond_0
    check-cast p1, Lcom/sonyericsson/music/common/MenuUtils$AlbumData;

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/library/AlbumsFragment;->openAlbumFragment(Lcom/sonyericsson/music/common/MenuUtils$AlbumData;)V

    :cond_1
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

    .line 167
    iget-boolean v0, p0, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mViewDestroyed:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 168
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->removeNoContentHeaderView()V

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->showNoContentHeaderView()V

    .line 174
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/music/library/LibraryListFragment;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 51
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/music/library/AlbumsFragment;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onNowPlayingInfoChanged(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V
    .locals 3

    .line 309
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/library/AlbumsAdapter;

    if-eqz p1, :cond_0

    .line 311
    invoke-virtual {p1}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->getSourceUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/music/library/BaseFragment;->matchUri(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 312
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/library/AlbumsAdapter;->setNowPlayingInfo(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 314
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/library/AlbumsAdapter;->setNowPlayingInfo(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V

    .line 316
    :goto_0
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 217
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 218
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f090108

    if-eq v1, v2, :cond_0

    .line 227
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 220
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/library/AlbumsFragment;->isAlbumsShownAsGrid(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/sonyericsson/music/library/AlbumsFragment$AlbumLayout;->LIST:Lcom/sonyericsson/music/library/AlbumsFragment$AlbumLayout;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/sonyericsson/music/library/AlbumsFragment$AlbumLayout;->GRID:Lcom/sonyericsson/music/library/AlbumsFragment$AlbumLayout;

    .line 222
    :goto_0
    invoke-virtual {p1}, Lcom/sonyericsson/music/library/AlbumsFragment$AlbumLayout;->getSharedPrefsValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->setAlbumsLayout(Landroid/content/Context;I)V

    .line 224
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/music/MusicActivity;->getMusicFragmentManager()Lcom/sonyericsson/music/MusicFragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/music/MusicFragmentManager;->reloadCurrentMyLibraryFragment()V

    const/4 p1, 0x1

    return p1
.end method

.method public onPause()V
    .locals 1

    .line 131
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 132
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/sonyericsson/music/MusicActivity;

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->getNowPlayingUpdater()Lcom/sonyericsson/music/NowPlayingUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/music/NowPlayingUpdater;->removeListener(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfoListener;)V

    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    .line 204
    invoke-super {p0, p1}, Lcom/sonyericsson/music/library/BaseFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 205
    iget-boolean v0, p0, Lcom/sonyericsson/music/library/AlbumsFragment;->mSupportsGridLayout:Z

    if-eqz v0, :cond_1

    const v0, 0x7f090108

    .line 206
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 208
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 209
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/library/AlbumsFragment;->isAlbumsShownAsGrid(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f10019e

    goto :goto_0

    :cond_0
    const v0, 0x7f10019d

    :goto_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 122
    invoke-super {p0}, Lcom/sonyericsson/music/library/BaseFragment;->onResume()V

    .line 123
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/sonyericsson/music/MusicActivity;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->getNowPlayingUpdater()Lcom/sonyericsson/music/NowPlayingUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/music/NowPlayingUpdater;->addListener(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfoListener;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 110
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 111
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 115
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/library/AlbumsFragment;->isAlbumsShownAsGrid(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 116
    iget-object p2, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mListView:Landroid/widget/AbsListView;

    invoke-static {p1}, Lcom/sonyericsson/music/common/ThemeColor;->window(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/AbsListView;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method
