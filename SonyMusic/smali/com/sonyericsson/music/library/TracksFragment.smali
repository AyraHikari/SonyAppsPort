.class public Lcom/sonyericsson/music/library/TracksFragment;
.super Lcom/sonyericsson/music/library/LibraryListFragment;
.source "TracksFragment.java"


# static fields
.field private static final KEY_CONTEXT_GROUP_ID:Ljava/lang/String; = "context_group_id"

.field public static final TAG:Ljava/lang/String; = "tracks"


# instance fields
.field private mAggregator:Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

.field protected mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

.field private mShuffleView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;-><init>()V

    return-void
.end method

.method private getContextMenuGroupId()I
    .locals 3

    .line 64
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "context_group_id"

    .line 65
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    :cond_0
    return v1
.end method

.method private getShuffleView()Landroid/view/View;
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/sonyericsson/music/library/TracksFragment;->mShuffleView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 135
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c0063

    const/4 v2, 0x0

    .line 136
    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/library/TracksFragment;->mShuffleView:Landroid/view/View;

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/library/TracksFragment;->mShuffleView:Landroid/view/View;

    return-object v0
.end method

.method private handlePlayAllTracks(IIZ)V
    .locals 2

    .line 212
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    if-eqz v0, :cond_0

    .line 215
    new-instance v1, Lcom/sonyericsson/music/common/OpenAndPlayConditions;

    invoke-direct {v1}, Lcom/sonyericsson/music/common/OpenAndPlayConditions;-><init>()V

    .line 216
    invoke-virtual {v1, p2}, Lcom/sonyericsson/music/common/OpenAndPlayConditions;->setTracksPosition(I)Lcom/sonyericsson/music/common/OpenAndPlayConditions;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/sonyericsson/music/common/OpenAndPlayConditions;->setShuffle(Z)Lcom/sonyericsson/music/common/OpenAndPlayConditions;

    move-result-object p2

    .line 218
    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/music/MusicActivity;->openAndPlaySmartPlaylist(ILcom/sonyericsson/music/common/OpenAndPlayConditions;)V

    :cond_0
    return-void
.end method

.method public static newInstance(I)Lcom/sonyericsson/music/library/TracksFragment;
    .locals 3

    .line 54
    new-instance v0, Lcom/sonyericsson/music/library/TracksFragment;

    invoke-direct {v0}, Lcom/sonyericsson/music/library/TracksFragment;-><init>()V

    .line 56
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "context_group_id"

    .line 57
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 58
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private sendGaPlayEvent(Landroid/content/Context;)V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/sonyericsson/music/library/TracksFragment;->mAggregator:Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;->sendPlay(Landroid/content/Context;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getAdapter()Landroid/widget/CursorAdapter;
    .locals 4

    .line 127
    iget-object v0, p0, Lcom/sonyericsson/music/library/TracksFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/music/library/TracksFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    .line 130
    :cond_0
    new-instance v0, Lcom/sonyericsson/music/library/TracksAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/music/library/TracksFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/sonyericsson/music/library/TracksAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/music/artdecoder/ArtDecoder;ZZ)V

    return-object v0
.end method

.method protected bridge synthetic getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/TracksFragment;->getAdapter()Landroid/widget/CursorAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected isContentFragment()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 161
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    .line 163
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    invoke-direct {p0}, Lcom/sonyericsson/music/library/TracksFragment;->getContextMenuGroupId()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->getContextMenuData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/common/MenuUtils$TrackData;

    .line 172
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v1, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 173
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    new-instance v3, Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    const-string v4, "tracks"

    invoke-direct {v3, v4}, Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;-><init>(Ljava/lang/String;)V

    invoke-static {v2, p1, v0, v1, v3}, Lcom/sonyericsson/music/common/MenuUtils;->onTrackContextItemSelected(Lcom/sonyericsson/music/MusicActivity;ILcom/sonyericsson/music/common/MenuUtils$TrackData;ILcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Z

    move-result p1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 70
    invoke-super {p0, p1}, Lcom/sonyericsson/music/library/LibraryListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    new-instance p1, Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    const-string v0, "tracks"

    invoke-direct {p1, v0}, Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sonyericsson/music/library/TracksFragment;->mAggregator:Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    .line 143
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 145
    iget-object p2, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {p2}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getHeaderCount()I

    move-result p2

    .line 146
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget p3, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    if-ge p3, p2, :cond_0

    return-void

    .line 152
    :cond_0
    iget-object p2, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {p2, p3}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/music/common/MenuUtils$TrackData;

    .line 153
    invoke-virtual {p0, p2}, Lcom/sonyericsson/music/library/LibraryListFragment;->setContextMenuData(Ljava/lang/Object;)V

    .line 155
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/sonyericsson/music/common/MenuUtils;->getTrackContextMenuBuilder(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/common/MenuUtils$TrackData;)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p2

    .line 156
    invoke-direct {p0}, Lcom/sonyericsson/music/library/TracksFragment;->getContextMenuGroupId()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setGroupId(I)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->build(Landroid/view/ContextMenu;)V

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

    .line 86
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 89
    invoke-static {}, Lcom/sonyericsson/music/common/LibraryTracksQueryParams;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 90
    invoke-static {}, Lcom/sonyericsson/music/common/LibraryTracksQueryParams;->getColumns()[Ljava/lang/String;

    move-result-object v3

    .line 91
    invoke-static {}, Lcom/sonyericsson/music/common/LibraryTracksQueryParams;->getSelection()Ljava/lang/String;

    move-result-object v4

    .line 92
    invoke-static {}, Lcom/sonyericsson/music/common/LibraryTracksQueryParams;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v5

    .line 93
    invoke-static {}, Lcom/sonyericsson/music/common/LibraryTracksQueryParams;->getSortOrder()Ljava/lang/String;

    move-result-object v6

    .line 95
    new-instance p1, Lcom/sonyericsson/music/common/HighResAwarePermissionCursorLoader;

    const-string v7, "android.permission.READ_EXTERNAL_STORAGE"

    sget-object v8, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;->TRACK:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lcom/sonyericsson/music/common/HighResAwarePermissionCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/sonyericsson/music/library/TracksFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->destroy()V

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/sonyericsson/music/library/TracksFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    .line 81
    :cond_0
    invoke-super {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lcom/sonyericsson/music/library/TracksFragment;->mShuffleView:Landroid/view/View;

    .line 122
    invoke-super {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->onDestroyView()V

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

    .line 179
    invoke-super/range {p0 .. p5}, Lcom/sonyericsson/music/library/LibraryListFragment;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 180
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/MusicActivity;

    if-eqz p1, :cond_1

    .line 182
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x3

    .line 186
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getHeaderCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x0

    if-ne p3, v1, :cond_0

    const/4 p3, 0x1

    .line 191
    invoke-direct {p0, p2, v2, p3}, Lcom/sonyericsson/music/library/TracksFragment;->handlePlayAllTracks(IIZ)V

    .line 192
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/library/TracksFragment;->sendGaPlayEvent(Landroid/content/Context;)V

    goto :goto_0

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v1, p3}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/common/MenuUtils$TrackData;

    if-eqz v1, :cond_1

    sub-int/2addr p3, v0

    .line 197
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 198
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p4

    .line 197
    invoke-static {v0, p4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    .line 200
    invoke-static {p4, p1}, Lcom/sonyericsson/music/common/MusicUtils;->validatePlaybackRights(Landroid/net/Uri;Lcom/sonyericsson/music/MusicActivity;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 201
    invoke-direct {p0, p2, p3, v2}, Lcom/sonyericsson/music/library/TracksFragment;->handlePlayAllTracks(IIZ)V

    .line 202
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/library/TracksFragment;->sendGaPlayEvent(Landroid/content/Context;)V

    :cond_1
    :goto_0
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

    .line 105
    iget-boolean v0, p0, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mViewDestroyed:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 106
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->removeNoContentHeaderView()V

    .line 108
    invoke-direct {p0}, Lcom/sonyericsson/music/library/TracksFragment;->getShuffleView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/library/LibraryListFragment;->addHeader(Landroid/view/View;)Z

    goto :goto_0

    .line 110
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/music/library/TracksFragment;->getShuffleView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/library/LibraryListFragment;->removeHeader(Landroid/view/View;)V

    .line 111
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->showNoContentHeaderView()V

    .line 114
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/music/library/LibraryListFragment;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 42
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/music/library/TracksFragment;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method
