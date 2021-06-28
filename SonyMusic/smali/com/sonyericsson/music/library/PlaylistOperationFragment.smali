.class public Lcom/sonyericsson/music/library/PlaylistOperationFragment;
.super Lcom/sonyericsson/music/library/LibraryListFragment;
.source "PlaylistOperationFragment.java"

# interfaces
.implements Lcom/sonyericsson/music/ui/RearrangeableListView$OnItemMovedListener;
.implements Lcom/sonyericsson/music/library/PaddedHeaderListScroller$PaddedHeaderListScrollerListener;


# static fields
.field private static final ARG_PLAYLISTNAME:Ljava/lang/String; = "playlistName"

.field private static final ARG_PLAYLIST_MODE:Ljava/lang/String; = "playlistMode"

.field private static final ARG_PLAYLIST_TRACKS_URI:Ljava/lang/String; = "playlistTracksUri"

.field private static final COLUMNS:[Ljava/lang/String;

.field public static final MODE_ADD_TRACKS:I = 0x2

.field public static final MODE_CREATE_PLAYLIST:I = 0x0

.field public static final MODE_EDIT_PLAYLIST:I = 0x1

.field private static final SORT_ORDER:Ljava/lang/String; = "title COLLATE NOCASE"

.field private static final TAG:Ljava/lang/String; = "playlist_operation"

.field private static final WHERE:Ljava/lang/String; = "is_music <> 0"


# instance fields
.field private mAddTrackView:Landroid/view/View;

.field private mEnableListView:Z

.field private mIsProgressLoadingShown:Z

.field private mLocalPlaylistId:I

.field private mMarkedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mMode:I

.field private mPendingClose:Z

.field private mPlaylistAsyncTask:Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;

.field private mPlaylistName:Ljava/lang/String;

.field private mPlaylistTracksUri:Ljava/lang/String;

.field private mProgress:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    .line 72
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "title"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "artist"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "artist_id"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "album"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "album_id"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;-><init>()V

    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mEnableListView:Z

    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mMarkedItems:Ljava/util/ArrayList;

    .line 97
    iput-object v0, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mPlaylistAsyncTask:Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mPendingClose:Z

    .line 105
    iput-boolean v0, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mIsProgressLoadingShown:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/library/PlaylistOperationFragment;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mLocalPlaylistId:I

    return p0
.end method

.method static synthetic access$102(Lcom/sonyericsson/music/library/PlaylistOperationFragment;Z)Z
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mPendingClose:Z

    return p1
.end method

.method private closeFragment(Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    const/4 v0, 0x0

    .line 367
    iput-boolean v0, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mPendingClose:Z

    .line 368
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 369
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    return-void
.end method

.method private getAddTrackView()Landroid/view/View;
    .locals 5

    .line 226
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mAddTrackView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 227
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c0059

    const/4 v2, 0x0

    .line 228
    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0900db

    .line 229
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 230
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700e3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 231
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    const v3, 0x7f080080

    .line 232
    invoke-static {v0, v3}, Lcom/sonyericsson/music/common/UIUtils;->getTintedDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0901fb

    .line 233
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f1001bf

    .line 234
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0901fc

    .line 235
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f1001c0

    .line 236
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 237
    iput-object v1, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mAddTrackView:Landroid/view/View;

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mAddTrackView:Landroid/view/View;

    return-object v0
.end method

.method private getLocalPlaylistId()I
    .locals 3

    .line 349
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mPlaylistTracksUri:Ljava/lang/String;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 350
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 352
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 353
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    if-le v2, v1, :cond_0

    .line 356
    :try_start_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return v1
.end method

.method public static getTag(I)Ljava/lang/String;
    .locals 2

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playlist_operation_mode_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(ILjava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/music/library/PlaylistOperationFragment;
    .locals 3

    .line 120
    new-instance v0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;

    invoke-direct {v0}, Lcom/sonyericsson/music/library/PlaylistOperationFragment;-><init>()V

    .line 122
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "playlistMode"

    .line 123
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "playlistName"

    .line 124
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "playlistTracksUri"

    .line 125
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 126
    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    .line 127
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private savePlaylist()V
    .locals 6

    .line 276
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    if-eqz v0, :cond_5

    .line 277
    invoke-virtual {v0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/library/PlaylistOperationAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/music/library/PlaylistOperationAdapter;->getMarkedItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 280
    iget v1, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mMode:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mPlaylistAsyncTask:Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;

    if-nez v1, :cond_0

    .line 281
    new-instance v1, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataCreatePlaylist;

    iget-object v4, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mPlaylistName:Ljava/lang/String;

    invoke-direct {v1, v4, v0}, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataCreatePlaylist;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 283
    new-instance v0, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mPlaylistAsyncTask:Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;

    .line 284
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mPlaylistAsyncTask:Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 286
    :cond_0
    iget v1, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mMode:I

    const/4 v4, -0x1

    if-ne v1, v2, :cond_3

    .line 287
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 288
    iget v1, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mLocalPlaylistId:I

    if-le v1, v4, :cond_4

    .line 289
    new-instance v4, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataRemoveFromPlaylist;

    invoke-direct {v4, v1, v0}, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataRemoveFromPlaylist;-><init>(ILjava/util/Collection;)V

    .line 291
    new-instance v0, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v5, Lcom/sonyericsson/music/library/PlaylistOperationFragment$1;

    invoke-direct {v5, p0}, Lcom/sonyericsson/music/library/PlaylistOperationFragment$1;-><init>(Lcom/sonyericsson/music/library/PlaylistOperationFragment;)V

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;-><init>(Landroid/app/Activity;Lcom/sonyericsson/music/playlist/PlaylistAsyncTask$OnPlaylistTaskCompleted;)V

    iput-object v0, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mPlaylistAsyncTask:Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;

    .line 308
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mPlaylistAsyncTask:Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 309
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_4

    .line 310
    iget v0, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mLocalPlaylistId:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/sonyericsson/music/library/PlaylistBaseFragment$NoEditLocalPlaylist;->addNoEditLocalPlaylist(J)V

    .line 311
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 312
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mListView:Landroid/widget/AbsListView;

    if-eqz v0, :cond_2

    .line 315
    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->setEnabled(Z)V

    .line 316
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mListView:Landroid/widget/AbsListView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setVisibility(I)V

    .line 318
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 319
    iput-boolean v2, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mIsProgressLoadingShown:Z

    return-void

    :cond_3
    const/4 v5, 0x2

    if-ne v1, v5, :cond_4

    .line 324
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mPlaylistAsyncTask:Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;

    if-nez v1, :cond_4

    .line 326
    iget v1, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mLocalPlaylistId:I

    if-le v1, v4, :cond_4

    .line 327
    new-instance v4, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddTracks;

    invoke-direct {v4, v1, v0, v3, v3}, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddTracks;-><init>(ILjava/util/List;ZZ)V

    .line 329
    new-instance v0, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mPlaylistAsyncTask:Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;

    .line 330
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mPlaylistAsyncTask:Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 335
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    .line 336
    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->isFragmentTransactionAllowed()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 337
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 338
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    :cond_5
    return-void
.end method


# virtual methods
.method protected getAdapter()Landroid/widget/CursorAdapter;
    .locals 3

    .line 176
    new-instance v0, Lcom/sonyericsson/music/library/PlaylistOperationAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget v2, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mMode:I

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/music/library/PlaylistOperationAdapter;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method protected bridge synthetic getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->getAdapter()Landroid/widget/CursorAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected getDrawerIndicator()Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$DrawerIndicator;
    .locals 1

    .line 400
    sget-object v0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$DrawerIndicator;->CLOSE:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$DrawerIndicator;

    return-object v0
.end method

.method protected getRootLayoutResource()I
    .locals 2

    .line 167
    iget v0, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f0c0040

    return v0

    .line 170
    :cond_0
    invoke-super {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->getRootLayoutResource()I

    move-result v0

    return v0
.end method

.method public getScrollAllowed(Z)Z
    .locals 2

    .line 487
    iget v0, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mListView:Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    .line 488
    check-cast v0, Lcom/sonyericsson/music/ui/RearrangeableListView;

    invoke-virtual {v0}, Lcom/sonyericsson/music/ui/RearrangeableListView;->isRearranging()Z

    move-result v0

    xor-int/2addr v1, v0

    if-nez v1, :cond_0

    .line 490
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getToolbarControl()Lcom/sonyericsson/music/ToolbarControl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/library/LibraryListFragment;->forceToolbarAnimation(Lcom/sonyericsson/music/ToolbarControl;)V

    :cond_0
    if-eqz v1, :cond_1

    .line 493
    invoke-super {p0, p1}, Lcom/sonyericsson/music/library/LibraryListFragment;->getScrollAllowed(Z)Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isMovableView(I)Z
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getHeaderCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onBackPressed(Lcom/sonyericsson/music/MusicActivity$BackSource;)Z
    .locals 1

    .line 244
    iget-boolean v0, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mIsProgressLoadingShown:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 245
    :cond_0
    invoke-super {p0, p1}, Lcom/sonyericsson/music/library/BaseFragment;->onBackPressed(Lcom/sonyericsson/music/MusicActivity$BackSource;)Z

    move-result p1

    return p1
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 19
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

    move-object/from16 v0, p0

    .line 183
    iget v1, v0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 185
    new-instance v1, Lcom/sonyericsson/music/common/PermissionCursorLoader;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    iget-object v2, v0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mPlaylistTracksUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->COLUMNS:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "play_order"

    const-string v10, "android.permission.READ_EXTERNAL_STORAGE"

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/sonyericsson/music/common/PermissionCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :cond_0
    new-instance v1, Lcom/sonyericsson/music/common/PermissionCursorLoader;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v12

    sget-object v13, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v14, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->COLUMNS:[Ljava/lang/String;

    const-string v15, "is_music <> 0"

    const/16 v16, 0x0

    const-string v17, "title COLLATE NOCASE"

    const-string v18, "android.permission.READ_EXTERNAL_STORAGE"

    move-object v11, v1

    invoke-direct/range {v11 .. v18}, Lcom/sonyericsson/music/common/PermissionCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 250
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/music/library/LibraryBaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 252
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const v0, 0x7f0d000e

    .line 253
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 134
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "playlistMode"

    .line 135
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mMode:I

    const-string v1, "playlistName"

    .line 136
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mPlaylistName:Ljava/lang/String;

    const-string v1, "playlistTracksUri"

    .line 138
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mPlaylistTracksUri:Ljava/lang/String;

    .line 139
    invoke-direct {p0}, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->getLocalPlaylistId()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mLocalPlaylistId:I

    .line 141
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/music/library/LibraryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 143
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/music/MusicActivity;

    .line 144
    iget p3, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mMode:I

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    const p3, 0x7f1001bf

    .line 145
    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/sonyericsson/music/MusicActivity;->setActionBarTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 147
    :cond_0
    iget-object p3, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mPlaylistName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/sonyericsson/music/MusicActivity;->setActionBarTitle(Ljava/lang/CharSequence;)V

    .line 149
    :goto_0
    iget p2, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mMode:I

    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    .line 150
    iget-object p2, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast p2, Lcom/sonyericsson/music/ui/RearrangeableListView;

    invoke-virtual {p2, p3}, Lcom/sonyericsson/music/ui/RearrangeableListView;->setMovingItemEnabled(Z)V

    .line 151
    iget-object p2, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast p2, Lcom/sonyericsson/music/ui/RearrangeableListView;

    const p3, 0x7f090099

    invoke-virtual {p2, p3}, Lcom/sonyericsson/music/ui/RearrangeableListView;->setMovingHandleViewId(I)V

    .line 152
    iget-object p2, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast p2, Lcom/sonyericsson/music/ui/RearrangeableListView;

    invoke-virtual {p2, p0}, Lcom/sonyericsson/music/ui/RearrangeableListView;->setItemMovedListener(Lcom/sonyericsson/music/ui/RearrangeableListView$OnItemMovedListener;)V

    .line 154
    iget-object p2, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mListView:Landroid/widget/AbsListView;

    iget-boolean p3, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mEnableListView:Z

    invoke-virtual {p2, p3}, Landroid/widget/AbsListView;->setEnabled(Z)V

    const p2, 0x7f090195

    .line 155
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mProgress:Landroid/widget/ProgressBar;

    .line 156
    iget-boolean p2, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mIsProgressLoadingShown:Z

    if-eqz p2, :cond_1

    .line 157
    iget-object p2, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mListView:Landroid/widget/AbsListView;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/AbsListView;->setEnabled(Z)V

    .line 158
    iget-object p2, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mListView:Landroid/widget/AbsListView;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/widget/AbsListView;->setVisibility(I)V

    .line 159
    iget-object p2, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p2, p3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    return-object p1
.end method

.method public onDestroyView()V
    .locals 3

    .line 217
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mListView:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/sonyericsson/music/ui/RearrangeableListView;

    if-eqz v2, :cond_0

    .line 218
    check-cast v0, Lcom/sonyericsson/music/ui/RearrangeableListView;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/ui/RearrangeableListView;->setItemMovedListener(Lcom/sonyericsson/music/ui/RearrangeableListView$OnItemMovedListener;)V

    .line 220
    :cond_0
    iput-object v1, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mAddTrackView:Landroid/view/View;

    .line 222
    invoke-super {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->onDestroyView()V

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

    .line 405
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {p1}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getHeaderCount()I

    move-result p1

    const/4 p4, 0x1

    sub-int/2addr p1, p4

    if-ge p3, p1, :cond_0

    return-void

    .line 408
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {p1}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getHeaderCount()I

    move-result p1

    sub-int/2addr p3, p1

    .line 410
    iget p1, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mMode:I

    if-ne p1, p4, :cond_2

    const/4 p1, -0x1

    if-ne p3, p1, :cond_2

    .line 411
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {p1}, Lcom/sonyericsson/music/MusicActivity;->isFragmentTransactionAllowed()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 415
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 416
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 417
    iget-object p2, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mPlaylistName:Ljava/lang/String;

    iget-object p3, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mPlaylistTracksUri:Ljava/lang/String;

    const/4 p4, 0x2

    .line 418
    invoke-static {p4, p2, p3}, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->newInstance(ILjava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/music/library/PlaylistOperationFragment;

    move-result-object p2

    .line 420
    invoke-static {p4}, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->getTag(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    const p3, 0x7f010014

    const p5, 0x7f010015

    const v0, 0x7f010013

    .line 421
    invoke-virtual {p1, p3, v0, p5, v0}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(IIII)Landroidx/fragment/app/FragmentTransaction;

    .line 423
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sonyericsson/music/MusicActivity;->getMusicFragmentManager()Lcom/sonyericsson/music/MusicFragmentManager;

    move-result-object p3

    .line 425
    invoke-static {p4}, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->getTag(I)Ljava/lang/String;

    move-result-object p4

    .line 424
    invoke-virtual {p3, p1, p2, p4}, Lcom/sonyericsson/music/MusicFragmentManager;->placeContent(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 426
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 430
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {p1}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/library/PlaylistOperationAdapter;

    invoke-virtual {p1, p3}, Lcom/sonyericsson/music/library/PlaylistOperationAdapter;->toggleItemMarked(I)Z

    move-result p1

    .line 431
    iget-object p3, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {p3}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object p3

    check-cast p3, Lcom/sonyericsson/music/library/PlaylistOperationAdapter;

    invoke-virtual {p3}, Lcom/sonyericsson/music/library/PlaylistOperationAdapter;->getMarkedItems()Ljava/util/ArrayList;

    move-result-object p3

    iput-object p3, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mMarkedItems:Ljava/util/ArrayList;

    .line 432
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/music/library/PlaylistOperationAdapter$ViewHolder;

    .line 434
    iget p3, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mMode:I

    if-ne p3, p4, :cond_3

    xor-int/lit8 p1, p1, 0x1

    .line 438
    :cond_3
    iget-object p2, p2, Lcom/sonyericsson/music/library/PlaylistOperationAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {p2, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method public onItemCollapsed(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f090097

    .line 472
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onItemExpanded(Landroid/view/View;Z)V
    .locals 0

    const p2, 0x7f090097

    .line 467
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onItemMoved(II)V
    .locals 2

    .line 445
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getHeaderCount()I

    move-result v0

    sub-int/2addr p1, v0

    sub-int/2addr p2, v0

    .line 448
    iget-object v1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v1}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getCount()I

    move-result v1

    sub-int/2addr v1, v0

    if-ge p2, v1, :cond_0

    .line 449
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/library/RearrangeAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/music/library/RearrangeAdapter;->switchItems(II)V

    .line 450
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 451
    new-instance v0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataMoveTrack;

    iget v1, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mLocalPlaylistId:I

    invoke-direct {v0, v1, p1, p2}, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataMoveTrack;-><init>(III)V

    .line 453
    new-instance p1, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mPlaylistAsyncTask:Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;

    .line 454
    iget-object p1, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mPlaylistAsyncTask:Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V
    .locals 2
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

    .line 200
    iget-boolean v0, p0, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mViewDestroyed:Z

    if-nez v0, :cond_4

    if-eqz p2, :cond_0

    .line 201
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 202
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->showNoContentHeaderView()V

    .line 204
    :cond_1
    iget v0, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 205
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->removeNoContentHeaderView()V

    .line 206
    invoke-direct {p0}, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->getAddTrackView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/library/LibraryListFragment;->addHeader(Landroid/view/View;)Z

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mMarkedItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 209
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/library/PlaylistOperationAdapter;

    iget-object v1, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mMarkedItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/library/PlaylistOperationAdapter;->setMarkedItems(Ljava/util/ArrayList;)V

    .line 211
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/music/library/LibraryListFragment;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

    :cond_4
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 57
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 266
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f09011d

    if-eq v0, v1, :cond_0

    .line 271
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 268
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->savePlaylist()V

    const/4 p1, 0x1

    return p1
.end method

.method public onPause()V
    .locals 1

    .line 391
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 392
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->unlockDrawer()V

    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    .line 258
    invoke-super {p0, p1}, Lcom/sonyericsson/music/library/BaseFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 259
    iget-boolean v0, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mIsProgressLoadingShown:Z

    if-eqz v0, :cond_0

    const v0, 0x7f09011d

    .line 260
    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 382
    invoke-super {p0}, Lcom/sonyericsson/music/library/BaseFragment;->onResume()V

    .line 383
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->closeAndLockDrawer()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 374
    invoke-super {p0}, Lcom/sonyericsson/music/library/LibraryBaseFragment;->onStart()V

    .line 375
    iget-boolean v0, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mPendingClose:Z

    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->closeFragment(Landroidx/fragment/app/FragmentActivity;)V

    :cond_0
    return-void
.end method
