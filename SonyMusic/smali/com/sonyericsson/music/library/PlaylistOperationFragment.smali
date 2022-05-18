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

.field private static final COLUMNS_FOR_EDIT:[Ljava/lang/String;

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
    .locals 9

    const/4 v0, 0x6

    .line 73
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "_id"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "title"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "artist"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "artist_id"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "album"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v2, "album_id"

    const/4 v8, 0x5

    aput-object v2, v1, v8

    sput-object v1, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->COLUMNS:[Ljava/lang/String;

    const/16 v1, 0x8

    .line 79
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v3

    const-string v2, "title"

    aput-object v2, v1, v4

    const-string v2, "artist"

    aput-object v2, v1, v5

    const-string v2, "artist_id"

    aput-object v2, v1, v6

    const-string v2, "album"

    aput-object v2, v1, v7

    const-string v2, "album_id"

    aput-object v2, v1, v8

    const-string v2, "play_order"

    aput-object v2, v1, v0

    const-string v0, "playlist_id"

    const/4 v2, 0x7

    aput-object v0, v1, v2

    sput-object v1, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->COLUMNS_FOR_EDIT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;-><init>()V

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mEnableListView:Z

    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mMarkedItems:Ljava/util/ArrayList;

    .line 106
    iput-object v0, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mPlaylistAsyncTask:Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;

    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mPendingClose:Z

    .line 114
    iput-boolean v0, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mIsProgressLoadingShown:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/library/PlaylistOperationFragment;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mLocalPlaylistId:I

    return p0
.end method

.method static synthetic access$102(Lcom/sonyericsson/music/library/PlaylistOperationFragment;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mPendingClose:Z

    return p1
.end method

.method private closeFragment(Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    const/4 v0, 0x0

    .line 384
    iput-boolean v0, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mPendingClose:Z

    .line 385
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 386
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    return-void
.end method

.method private getAddTrackView()Landroid/view/View;
    .locals 5

    .line 235
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mAddTrackView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 236
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c0059

    const/4 v2, 0x0

    .line 237
    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0900db

    .line 238
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 239
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700e3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 240
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    const v3, 0x7f080080

    .line 241
    invoke-static {v0, v3}, Lcom/sonyericsson/music/common/UIUtils;->getTintedDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0901fb

    .line 242
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f1001c1

    .line 243
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0901fc

    .line 244
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f1001c2

    .line 245
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 246
    iput-object v1, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mAddTrackView:Landroid/view/View;

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mAddTrackView:Landroid/view/View;

    return-object v0
.end method

.method private getLocalPlaylistId()I
    .locals 3

    .line 366
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mPlaylistTracksUri:Ljava/lang/String;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 367
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 369
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 370
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    if-le v2, v1, :cond_0

    .line 373
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

    .line 522
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

    .line 129
    new-instance v0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;

    invoke-direct {v0}, Lcom/sonyericsson/music/library/PlaylistOperationFragment;-><init>()V

    .line 131
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "playlistMode"

    .line 132
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "playlistName"

    .line 133
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "playlistTracksUri"

    .line 134
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 135
    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    .line 136
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private savePlaylist()V
    .locals 6

    .line 285
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    if-eqz v0, :cond_6

    .line 286
    invoke-virtual {v0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/library/PlaylistOperationAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/music/library/PlaylistOperationAdapter;->getMarkedItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 289
    iget v1, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mMode:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mPlaylistAsyncTask:Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;

    if-nez v1, :cond_0

    .line 290
    new-instance v1, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataCreatePlaylist;

    iget-object v4, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mPlaylistName:Ljava/lang/String;

    invoke-direct {v1, v4, v0}, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataCreatePlaylist;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 292
    new-instance v0, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mPlaylistAsyncTask:Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;

    .line 293
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mPlaylistAsyncTask:Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 295
    :cond_0
    iget v1, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mMode:I

    const/4 v4, -0x1

    if-ne v1, v2, :cond_3

    .line 296
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 297
    iget v1, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mLocalPlaylistId:I

    if-le v1, v4, :cond_5

    .line 298
    new-instance v4, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataRemoveFromPlaylist;

    invoke-direct {v4, v1, v0}, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataRemoveFromPlaylist;-><init>(ILjava/util/Collection;)V

    .line 300
    new-instance v0, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v5, Lcom/sonyericsson/music/library/PlaylistOperationFragment$1;

    invoke-direct {v5, p0}, Lcom/sonyericsson/music/library/PlaylistOperationFragment$1;-><init>(Lcom/sonyericsson/music/library/PlaylistOperationFragment;)V

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;-><init>(Landroid/app/Activity;Lcom/sonyericsson/music/playlist/PlaylistAsyncTask$OnPlaylistTaskCompleted;)V

    iput-object v0, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mPlaylistAsyncTask:Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;

    .line 317
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mPlaylistAsyncTask:Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 318
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_5

    .line 319
    iget v0, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mLocalPlaylistId:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/sonyericsson/music/library/PlaylistBaseFragment$NoEditLocalPlaylist;->addNoEditLocalPlaylist(J)V

    .line 320
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 321
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mListView:Landroid/widget/AbsListView;

    if-eqz v0, :cond_2

    .line 324
    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->setEnabled(Z)V

    .line 325
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mListView:Landroid/widget/AbsListView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setVisibility(I)V

    .line 327
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 328
    iput-boolean v2, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mIsProgressLoadingShown:Z

    return-void

    :cond_3
    const/4 v5, 0x2

    if-ne v1, v5, :cond_5

    .line 333
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mPlaylistAsyncTask:Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;

    if-nez v1, :cond_5

    .line 335
    iget v1, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mLocalPlaylistId:I

    if-le v1, v4, :cond_5

    .line 336
    new-instance v4, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddTracks;

    invoke-direct {v4, v1, v0, v3, v3}, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddTracks;-><init>(ILjava/util/List;ZZ)V

    .line 338
    sget-boolean v0, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz v0, :cond_4

    .line 339
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    if-eqz v0, :cond_5

    .line 341
    iget v1, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mLocalPlaylistId:I

    int-to-long v1, v1

    invoke-virtual {v0, v4, v1, v2}, Lcom/sonyericsson/music/MusicActivity;->showRequestDialogToModifyPlaylist(Ljava/lang/Object;J)V

    goto :goto_0

    .line 344
    :cond_4
    new-instance v0, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mPlaylistAsyncTask:Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;

    .line 345
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mPlaylistAsyncTask:Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 352
    :cond_5
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    .line 353
    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->isFragmentTransactionAllowed()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 354
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 355
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    :cond_6
    return-void
.end method


# virtual methods
.method protected getAdapter()Landroid/widget/CursorAdapter;
    .locals 3

    .line 185
    new-instance v0, Lcom/sonyericsson/music/library/PlaylistOperationAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget v2, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mMode:I

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/music/library/PlaylistOperationAdapter;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method protected bridge synthetic getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->getAdapter()Landroid/widget/CursorAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected getDrawerIndicator()Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$DrawerIndicator;
    .locals 1

    .line 417
    sget-object v0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$DrawerIndicator;->CLOSE:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$DrawerIndicator;

    return-object v0
.end method

.method protected getRootLayoutResource()I
    .locals 2

    .line 176
    iget v0, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f0c0040

    return v0

    .line 179
    :cond_0
    invoke-super {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->getRootLayoutResource()I

    move-result v0

    return v0
.end method

.method public getScrollAllowed(Z)Z
    .locals 2

    .line 528
    iget v0, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mListView:Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    .line 529
    check-cast v0, Lcom/sonyericsson/music/ui/RearrangeableListView;

    invoke-virtual {v0}, Lcom/sonyericsson/music/ui/RearrangeableListView;->isRearranging()Z

    move-result v0

    xor-int/2addr v1, v0

    if-nez v1, :cond_0

    .line 531
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getToolbarControl()Lcom/sonyericsson/music/ToolbarControl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/library/LibraryListFragment;->forceToolbarAnimation(Lcom/sonyericsson/music/ToolbarControl;)V

    :cond_0
    if-eqz v1, :cond_1

    .line 534
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

    .line 502
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

    .line 253
    iget-boolean v0, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mIsProgressLoadingShown:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 254
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

    .line 192
    iget v1, v0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 194
    new-instance v1, Lcom/sonyericsson/music/common/PermissionCursorLoader;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    iget-object v2, v0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mPlaylistTracksUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->COLUMNS_FOR_EDIT:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "play_order"

    const-string v10, "android.permission.READ_EXTERNAL_STORAGE"

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/sonyericsson/music/common/PermissionCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 199
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

    .line 259
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/music/library/LibraryBaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 261
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const v0, 0x7f0d000e

    .line 262
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 143
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "playlistMode"

    .line 144
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mMode:I

    const-string v1, "playlistName"

    .line 145
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mPlaylistName:Ljava/lang/String;

    const-string v1, "playlistTracksUri"

    .line 147
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mPlaylistTracksUri:Ljava/lang/String;

    .line 148
    invoke-direct {p0}, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->getLocalPlaylistId()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mLocalPlaylistId:I

    .line 150
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/music/library/LibraryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 152
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/music/MusicActivity;

    .line 153
    iget p3, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mMode:I

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    const p3, 0x7f1001c1

    .line 154
    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/sonyericsson/music/MusicActivity;->setActionBarTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 156
    :cond_0
    iget-object p3, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mPlaylistName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/sonyericsson/music/MusicActivity;->setActionBarTitle(Ljava/lang/CharSequence;)V

    .line 158
    :goto_0
    iget p2, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mMode:I

    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    .line 159
    iget-object p2, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast p2, Lcom/sonyericsson/music/ui/RearrangeableListView;

    invoke-virtual {p2, p3}, Lcom/sonyericsson/music/ui/RearrangeableListView;->setMovingItemEnabled(Z)V

    .line 160
    iget-object p2, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast p2, Lcom/sonyericsson/music/ui/RearrangeableListView;

    const p3, 0x7f090099

    invoke-virtual {p2, p3}, Lcom/sonyericsson/music/ui/RearrangeableListView;->setMovingHandleViewId(I)V

    .line 161
    iget-object p2, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast p2, Lcom/sonyericsson/music/ui/RearrangeableListView;

    invoke-virtual {p2, p0}, Lcom/sonyericsson/music/ui/RearrangeableListView;->setItemMovedListener(Lcom/sonyericsson/music/ui/RearrangeableListView$OnItemMovedListener;)V

    .line 163
    iget-object p2, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mListView:Landroid/widget/AbsListView;

    iget-boolean p3, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mEnableListView:Z

    invoke-virtual {p2, p3}, Landroid/widget/AbsListView;->setEnabled(Z)V

    const p2, 0x7f090195

    .line 164
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mProgress:Landroid/widget/ProgressBar;

    .line 165
    iget-boolean p2, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mIsProgressLoadingShown:Z

    if-eqz p2, :cond_1

    .line 166
    iget-object p2, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mListView:Landroid/widget/AbsListView;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/AbsListView;->setEnabled(Z)V

    .line 167
    iget-object p2, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mListView:Landroid/widget/AbsListView;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/widget/AbsListView;->setVisibility(I)V

    .line 168
    iget-object p2, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p2, p3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    return-object p1
.end method

.method public onDestroyView()V
    .locals 3

    .line 226
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mListView:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/sonyericsson/music/ui/RearrangeableListView;

    if-eqz v2, :cond_0

    .line 227
    check-cast v0, Lcom/sonyericsson/music/ui/RearrangeableListView;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/ui/RearrangeableListView;->setItemMovedListener(Lcom/sonyericsson/music/ui/RearrangeableListView$OnItemMovedListener;)V

    .line 229
    :cond_0
    iput-object v1, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mAddTrackView:Landroid/view/View;

    .line 231
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

    .line 422
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {p1}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getHeaderCount()I

    move-result p1

    const/4 p4, 0x1

    sub-int/2addr p1, p4

    if-ge p3, p1, :cond_0

    return-void

    .line 425
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {p1}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getHeaderCount()I

    move-result p1

    sub-int/2addr p3, p1

    .line 427
    iget p1, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mMode:I

    if-ne p1, p4, :cond_2

    const/4 p1, -0x1

    if-ne p3, p1, :cond_2

    .line 428
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {p1}, Lcom/sonyericsson/music/MusicActivity;->isFragmentTransactionAllowed()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 432
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 433
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 434
    iget-object p2, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mPlaylistName:Ljava/lang/String;

    iget-object p3, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mPlaylistTracksUri:Ljava/lang/String;

    const/4 p4, 0x2

    .line 435
    invoke-static {p4, p2, p3}, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->newInstance(ILjava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/music/library/PlaylistOperationFragment;

    move-result-object p2

    .line 437
    invoke-static {p4}, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->getTag(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    const p3, 0x7f010014

    const p5, 0x7f010015

    const v0, 0x7f010013

    .line 438
    invoke-virtual {p1, p3, v0, p5, v0}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(IIII)Landroidx/fragment/app/FragmentTransaction;

    .line 440
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sonyericsson/music/MusicActivity;->getMusicFragmentManager()Lcom/sonyericsson/music/MusicFragmentManager;

    move-result-object p3

    .line 442
    invoke-static {p4}, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->getTag(I)Ljava/lang/String;

    move-result-object p4

    .line 441
    invoke-virtual {p3, p1, p2, p4}, Lcom/sonyericsson/music/MusicFragmentManager;->placeContent(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 443
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 447
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {p1}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/library/PlaylistOperationAdapter;

    invoke-virtual {p1, p3}, Lcom/sonyericsson/music/library/PlaylistOperationAdapter;->toggleItemMarked(I)Z

    move-result p1

    .line 448
    iget-object p3, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {p3}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object p3

    check-cast p3, Lcom/sonyericsson/music/library/PlaylistOperationAdapter;

    invoke-virtual {p3}, Lcom/sonyericsson/music/library/PlaylistOperationAdapter;->getMarkedItems()Ljava/util/ArrayList;

    move-result-object p3

    iput-object p3, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mMarkedItems:Ljava/util/ArrayList;

    .line 449
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/music/library/PlaylistOperationAdapter$ViewHolder;

    .line 451
    iget p3, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mMode:I

    if-ne p3, p4, :cond_3

    xor-int/lit8 p1, p1, 0x1

    .line 455
    :cond_3
    iget-object p2, p2, Lcom/sonyericsson/music/library/PlaylistOperationAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {p2, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method public onItemCollapsed(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f090097

    .line 513
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onItemExpanded(Landroid/view/View;Z)V
    .locals 0

    const p2, 0x7f090097

    .line 508
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onItemMoved(II)V
    .locals 2

    .line 462
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getHeaderCount()I

    move-result v0

    sub-int/2addr p1, v0

    sub-int/2addr p2, v0

    .line 465
    iget-object v1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v1}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getCount()I

    move-result v1

    sub-int/2addr v1, v0

    if-ge p2, v1, :cond_4

    .line 466
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/library/RearrangeAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/music/library/RearrangeAdapter;->switchItems(II)V

    .line 467
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 472
    sget-boolean v0, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz v0, :cond_3

    .line 473
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 474
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "play_order"

    .line 475
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v1, :cond_0

    .line 477
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 480
    invoke-interface {v0, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "play_order"

    .line 481
    invoke-interface {v0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    if-eq p2, v1, :cond_1

    .line 483
    invoke-interface {v0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    goto :goto_1

    :cond_1
    const/4 p2, -0x1

    :goto_1
    if-eq p1, v1, :cond_2

    if-ne p2, v1, :cond_3

    :cond_2
    return-void

    .line 492
    :cond_3
    new-instance v0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataMoveTrack;

    iget v1, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mLocalPlaylistId:I

    invoke-direct {v0, v1, p1, p2}, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataMoveTrack;-><init>(III)V

    .line 494
    new-instance p1, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mPlaylistAsyncTask:Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;

    .line 495
    iget-object p1, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mPlaylistAsyncTask:Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_4
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

    .line 209
    iget-boolean v0, p0, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mViewDestroyed:Z

    if-nez v0, :cond_4

    if-eqz p2, :cond_0

    .line 210
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 211
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->showNoContentHeaderView()V

    .line 213
    :cond_1
    iget v0, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 214
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->removeNoContentHeaderView()V

    .line 215
    invoke-direct {p0}, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->getAddTrackView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/library/LibraryListFragment;->addHeader(Landroid/view/View;)Z

    .line 217
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mMarkedItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 218
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/library/PlaylistOperationAdapter;

    iget-object v1, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mMarkedItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/library/PlaylistOperationAdapter;->setMarkedItems(Ljava/util/ArrayList;)V

    .line 220
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/music/library/LibraryListFragment;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

    :cond_4
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 58
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 275
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f09011d

    if-eq v0, v1, :cond_0

    .line 280
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 277
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->savePlaylist()V

    const/4 p1, 0x1

    return p1
.end method

.method public onPause()V
    .locals 1

    .line 408
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 409
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->unlockDrawer()V

    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    .line 267
    invoke-super {p0, p1}, Lcom/sonyericsson/music/library/BaseFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 268
    iget-boolean v0, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mIsProgressLoadingShown:Z

    if-eqz v0, :cond_0

    const v0, 0x7f09011d

    .line 269
    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 399
    invoke-super {p0}, Lcom/sonyericsson/music/library/BaseFragment;->onResume()V

    .line 400
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->closeAndLockDrawer()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 391
    invoke-super {p0}, Lcom/sonyericsson/music/library/LibraryBaseFragment;->onStart()V

    .line 392
    iget-boolean v0, p0, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->mPendingClose:Z

    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->closeFragment(Landroidx/fragment/app/FragmentActivity;)V

    :cond_0
    return-void
.end method
