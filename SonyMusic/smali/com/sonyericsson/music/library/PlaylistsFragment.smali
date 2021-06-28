.class public Lcom/sonyericsson/music/library/PlaylistsFragment;
.super Lcom/sonyericsson/music/library/LibraryListFragment;
.source "PlaylistsFragment.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
.implements Landroid/view/MenuItem$OnMenuItemClickListener;
.implements Lcom/sonyericsson/music/MusicActivity$BackListener;
.implements Lcom/sonyericsson/music/library/SortOrderDialog$OnSortOrderSelected;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/library/PlaylistsFragment$PreparePlaylistsLoader;,
        Lcom/sonyericsson/music/library/PlaylistsFragment$PlaylistsImageDecodedListener;
    }
.end annotation


# static fields
.field private static final IS_MANAGE_MODE_RETAIN_KEY:Ljava/lang/String; = "key_is_retain_mode"

.field private static final KEY_CONTEXT_GROUP_ID:Ljava/lang/String; = "context_group_id"

.field private static final LOADER_LOCAL_PLAYLIST_ART:I = 0x2

.field private static final LOADER_PLAYLISTS:I = 0x0

.field private static final LOADER_PREPARE_PLAYLISTS:I = 0x3

.field private static final LOADER_SMART_PLAYLIST_ART:I = 0x1

.field private static final MODIFIED_ITEMS_RETAIN_KEY:Ljava/lang/String; = "retained_modified_items"

.field public static final TAG:Ljava/lang/String; = "playlists"


# instance fields
.field private mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

.field private final mArtReceiver:Landroid/content/BroadcastReceiver;

.field private mBroadcastReceiverRegistered:Z

.field private mCreateNewPlaylistHeader:Landroid/view/View;

.field mIsManageMode:Z

.field private mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

.field private mMyPlaylistsHeader:Landroid/widget/TextView;

.field private mPendingPlaylistArtChange:Z

.field private mPlaylistsFragmentTabPosition:I

.field private mRetainedModifiedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSmartPlaylistsHeader:Landroid/widget/TextView;

.field mSortOrder:Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;-><init>()V

    .line 109
    new-instance v0, Lcom/sonyericsson/music/library/PlaylistsFragment$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/library/PlaylistsFragment$1;-><init>(Lcom/sonyericsson/music/library/PlaylistsFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mArtReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mPendingPlaylistArtChange:Z

    .line 129
    iput-boolean v0, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mIsManageMode:Z

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mRetainedModifiedItems:Ljava/util/List;

    return-void
.end method

.method static synthetic access$002(Lcom/sonyericsson/music/library/PlaylistsFragment;Z)Z
    .locals 0

    .line 80
    iput-boolean p1, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mPendingPlaylistArtChange:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/music/library/PlaylistsFragment;ZZ)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/library/PlaylistsFragment;->reloadPlaylistsFragment(ZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/music/library/PlaylistsFragment;)Lcom/sonyericsson/music/MusicActivity;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    return-object p0
.end method

.method private enableCreateNewPlaylistHeader(Z)V
    .locals 3

    .line 684
    invoke-direct {p0}, Lcom/sonyericsson/music/library/PlaylistsFragment;->getCreateNewPlaylistHeaderView()Landroid/view/View;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    .line 688
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    const v1, 0x7f0901fb

    .line 691
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 692
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    const v2, 0x7f0900db

    .line 695
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 696
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    if-nez p1, :cond_0

    .line 698
    invoke-static {v2}, Lcom/sonyericsson/music/common/ThemeColor;->primaryTextDisabled(Landroid/content/Context;)I

    move-result p1

    .line 699
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 700
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 702
    :cond_0
    invoke-static {v2}, Lcom/sonyericsson/music/common/ThemeColor;->primaryText(Landroid/content/Context;)I

    move-result p1

    .line 703
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 704
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method private getContextMenuGroupId()I
    .locals 3

    .line 155
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "context_group_id"

    .line 156
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    :cond_0
    return v1
.end method

.method private getCreateNewPlaylistHeaderView()Landroid/view/View;
    .locals 3

    .line 675
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mCreateNewPlaylistHeader:Landroid/view/View;

    if-nez v0, :cond_0

    .line 676
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c0053

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 677
    iput-object v0, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mCreateNewPlaylistHeader:Landroid/view/View;

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mCreateNewPlaylistHeader:Landroid/view/View;

    return-object v0
.end method

.method private getSmartPlaylistsHeader()Landroid/widget/TextView;
    .locals 3

    .line 571
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mSmartPlaylistsHeader:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 572
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c0056

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mSmartPlaylistsHeader:Landroid/widget/TextView;

    .line 575
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f100210

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 576
    iget-object v1, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mSmartPlaylistsHeader:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mSmartPlaylistsHeader:Landroid/widget/TextView;

    return-object v0
.end method

.method private getYourPlaylistsHeader()Landroid/widget/TextView;
    .locals 3

    .line 560
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mMyPlaylistsHeader:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 561
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c0056

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mMyPlaylistsHeader:Landroid/widget/TextView;

    .line 564
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f100227

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 565
    iget-object v1, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mMyPlaylistsHeader:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mMyPlaylistsHeader:Landroid/widget/TextView;

    return-object v0
.end method

.method private isHeaderOrFooter(I)Z
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getItemViewType(I)I

    move-result p1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static newInstance()Lcom/sonyericsson/music/library/PlaylistsFragment;
    .locals 1

    .line 150
    new-instance v0, Lcom/sonyericsson/music/library/PlaylistsFragment;

    invoke-direct {v0}, Lcom/sonyericsson/music/library/PlaylistsFragment;-><init>()V

    return-object v0
.end method

.method public static newInstance(I)Lcom/sonyericsson/music/library/PlaylistsFragment;
    .locals 3

    .line 140
    new-instance v0, Lcom/sonyericsson/music/library/PlaylistsFragment;

    invoke-direct {v0}, Lcom/sonyericsson/music/library/PlaylistsFragment;-><init>()V

    .line 142
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "context_group_id"

    .line 143
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 144
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private reloadPlaylistsFragment(ZZ)V
    .locals 0

    .line 531
    iput-boolean p1, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mIsManageMode:Z

    .line 532
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/PlaylistsFragment;->toggleManageModeUi()V

    if-eqz p2, :cond_0

    .line 534
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {p1}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/library/PlaylistsAdapter;

    invoke-virtual {p1}, Lcom/sonyericsson/music/library/PlaylistsAdapter;->clearChanges()V

    .line 536
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/PlaylistsFragment;->restartPlaylistsLoader()V

    return-void
.end method

.method private setManagedPlaylists(Landroid/database/Cursor;)V
    .locals 6

    .line 658
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    .line 660
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "path"

    .line 661
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "is_hidden"

    .line 662
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 664
    :cond_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 665
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 667
    :goto_0
    new-instance v5, Landroidx/core/util/Pair;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v5, v3, v4}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 668
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 671
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {p1}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/library/PlaylistsAdapter;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/library/PlaylistsAdapter;->setManagedItems(Ljava/util/List;)V

    return-void
.end method

.method private setupHeaders()V
    .locals 3

    .line 582
    invoke-direct {p0}, Lcom/sonyericsson/music/library/PlaylistsFragment;->getCreateNewPlaylistHeaderView()Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mIsManageMode:Z

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, -0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/music/library/LibraryListFragment;->addHeader(Landroid/view/View;ZI)Z

    return-void
.end method


# virtual methods
.method protected getAdapter()Landroid/widget/CursorAdapter;
    .locals 8

    .line 297
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    if-nez v0, :cond_0

    .line 299
    new-instance v0, Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    .line 302
    :cond_0
    new-instance v0, Lcom/sonyericsson/music/library/PlaylistsAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget-object v5, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    iget-boolean v6, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mIsManageMode:Z

    iget-object v7, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mSortOrder:Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;

    move-object v2, v0

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/music/library/PlaylistsAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/music/library/PlaylistsFragment;Lcom/sonyericsson/music/artdecoder/ArtDecoder;ZLcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;)V

    .line 304
    iget-object v1, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mRetainedModifiedItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 306
    iget-object v1, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mRetainedModifiedItems:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/library/PlaylistsAdapter;->setModifiedItems(Ljava/util/List;)V

    :cond_1
    return-object v0
.end method

.method protected bridge synthetic getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/PlaylistsFragment;->getAdapter()Landroid/widget/CursorAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected getDrawerIndicator()Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$DrawerIndicator;
    .locals 1

    .line 424
    iget-boolean v0, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mIsManageMode:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$DrawerIndicator;->CLOSE:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$DrawerIndicator;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$DrawerIndicator;->DRAWER:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$DrawerIndicator;

    :goto_0
    return-object v0
.end method

.method protected getLoaderIds()[I
    .locals 3

    .line 287
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mSortOrder:Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;

    const/4 v1, 0x3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 288
    new-array v0, v0, [I

    const/4 v2, 0x0

    aput v1, v0, v2

    return-object v0

    .line 290
    :cond_0
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method

.method protected getMatcherUris()[Lcom/sonyericsson/music/library/BaseFragment$MatcherData;
    .locals 12

    .line 741
    new-instance v0, Lcom/sonyericsson/music/library/BaseFragment$MatcherData;

    sget-object v1, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->RECENTLY_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    .line 742
    invoke-virtual {v1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sonymobile.music.smartplaylist"

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Lcom/sonyericsson/music/library/BaseFragment$MatcherData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 745
    new-instance v1, Lcom/sonyericsson/music/library/BaseFragment$MatcherData;

    sget-object v2, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->MOST_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    .line 746
    invoke-virtual {v2}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.sonymobile.music.smartplaylist"

    const/4 v5, 0x2

    invoke-direct {v1, v5, v2, v4}, Lcom/sonyericsson/music/library/BaseFragment$MatcherData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 749
    new-instance v2, Lcom/sonyericsson/music/library/BaseFragment$MatcherData;

    sget-object v4, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->NEWLY_ADDED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    .line 750
    invoke-virtual {v4}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v6, "com.sonymobile.music.smartplaylist"

    const/4 v7, 0x3

    invoke-direct {v2, v7, v4, v6}, Lcom/sonyericsson/music/library/BaseFragment$MatcherData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 753
    new-instance v4, Lcom/sonyericsson/music/library/BaseFragment$MatcherData;

    sget-object v6, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->FAVOURITES:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    .line 754
    invoke-virtual {v6}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getId()Ljava/lang/String;

    move-result-object v6

    const-string v8, "com.sonymobile.music.smartplaylist"

    const/4 v9, 0x4

    invoke-direct {v4, v9, v6, v8}, Lcom/sonyericsson/music/library/BaseFragment$MatcherData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 757
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/#/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "members"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 758
    new-instance v8, Lcom/sonyericsson/music/library/BaseFragment$MatcherData;

    const-string v10, "com.sonyericsson.music.musicinfo"

    const/4 v11, 0x5

    invoke-direct {v8, v11, v6, v10}, Lcom/sonyericsson/music/library/BaseFragment$MatcherData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 760
    new-array v6, v11, [Lcom/sonyericsson/music/library/BaseFragment$MatcherData;

    const/4 v10, 0x0

    aput-object v0, v6, v10

    aput-object v1, v6, v3

    aput-object v2, v6, v5

    aput-object v4, v6, v7

    aput-object v8, v6, v9

    return-object v6
.end method

.method protected getRootLayoutResource()I
    .locals 1

    const v0, 0x7f0c0040

    return v0
.end method

.method public handleBack()Z
    .locals 2

    .line 829
    iget-boolean v0, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mIsManageMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 830
    iput-boolean v1, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mIsManageMode:Z

    const/4 v0, 0x1

    .line 831
    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/music/library/PlaylistsFragment;->reloadPlaylistsFragment(ZZ)V

    return v0

    :cond_0
    return v1
.end method

.method protected isContentFragment()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isFragmentHandlesToolbarClicks()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 225
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 227
    check-cast p1, Lcom/sonyericsson/music/MusicActivity;

    iput-object p1, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    .line 228
    iget-object p1, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    if-eqz p1, :cond_0

    return-void

    .line 229
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Parameter \"activity\" not allowed to be null!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 541
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    .line 543
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    invoke-direct {p0}, Lcom/sonyericsson/music/library/PlaylistsFragment;->getContextMenuGroupId()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 551
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->getContextMenuData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;

    .line 552
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sonyericsson/music/library/PlaylistBaseFragment$NoEditLocalPlaylist;->containsNoEditLocalPlaylist(J)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 554
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    .line 555
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->getContextMenuData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;

    new-instance v2, Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    const-string v3, "playlists"

    invoke-direct {v2, v3}, Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;-><init>(Ljava/lang/String;)V

    .line 554
    invoke-static {v0, p1, v1, v2}, Lcom/sonyericsson/music/common/MenuUtils;->onPlaylistContextItemSelected(Lcom/sonyericsson/music/MusicActivity;ILcom/sonyericsson/music/common/MenuUtils$PlaylistData;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Z

    move-result p1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 161
    invoke-super {p0, p1}, Lcom/sonyericsson/music/library/LibraryListFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 165
    invoke-static {}, Lcom/sonyericsson/music/RetainManager;->getInstance()Lcom/sonyericsson/music/RetainManager;

    move-result-object p1

    const-string v0, "key_is_retain_mode"

    .line 166
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/RetainManager;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mIsManageMode:Z

    .line 169
    iget-boolean v0, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mIsManageMode:Z

    if-eqz v0, :cond_0

    const-string v0, "retained_modified_items"

    .line 171
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/RetainManager;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mRetainedModifiedItems:Ljava/util/List;

    .line 176
    :cond_0
    iget-boolean p1, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mBroadcastReceiverRegistered:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 177
    iput-boolean p1, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mBroadcastReceiverRegistered:Z

    .line 179
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.sonyericsson.music.PLAYLIST_ART_UPDATED"

    .line 180
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.sonyericsson.music.PLAYLIST_ART_UPDATED_ALL"

    .line 181
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    .line 183
    iget-object v1, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mArtReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_1
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3

    .line 434
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 436
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/music/MusicActivity;

    .line 439
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget p3, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 441
    invoke-direct {p0, p3}, Lcom/sonyericsson/music/library/PlaylistsFragment;->isHeaderOrFooter(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 442
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/library/PlaylistsAdapter;

    .line 443
    iget-object v1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v1}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getHeaderCount()I

    move-result v1

    const/4 v2, 0x0

    if-lt p3, v1, :cond_0

    sub-int/2addr p3, v1

    .line 445
    invoke-virtual {v0, p3}, Lcom/sonyericsson/music/library/PlaylistsAdapter;->getPlaylistType(I)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, v2

    .line 452
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 453
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/sonyericsson/music/common/MenuUtils;->getPlaylistData(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;Landroid/database/Cursor;)Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_2

    .line 456
    invoke-virtual {p0, v2}, Lcom/sonyericsson/music/library/LibraryListFragment;->setContextMenuData(Ljava/lang/Object;)V

    const/4 p3, 0x1

    .line 457
    invoke-static {p2, v2, p3}, Lcom/sonyericsson/music/common/MenuUtils;->getPlaylistMenuBuilder(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p2

    .line 458
    invoke-direct {p0}, Lcom/sonyericsson/music/library/PlaylistsFragment;->getContextMenuGroupId()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setGroupId(I)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->build(Landroid/view/ContextMenu;)V

    :cond_2
    return-void

    :cond_3
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 8
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

    .line 360
    iget-object p2, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    if-nez p1, :cond_0

    .line 362
    new-instance p1, Lcom/sonyericsson/music/common/PlaylistsLoader;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    sget-object v0, Lcom/sonyericsson/music/common/PlaylistsLoader$Mode;->LOCAL_ALL:Lcom/sonyericsson/music/common/PlaylistsLoader$Mode;

    iget-object v1, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mSortOrder:Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;

    iget-boolean v2, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mIsManageMode:Z

    invoke-direct {p1, p2, v0, v1, v2}, Lcom/sonyericsson/music/common/PlaylistsLoader;-><init>(Landroid/content/Context;Lcom/sonyericsson/music/common/PlaylistsLoader$Mode;Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;Z)V

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 364
    new-instance p1, Landroidx/loader/content/CursorLoader;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    .line 365
    invoke-static {p2}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$SmartPlaylistArtUri;->getUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Landroidx/loader/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 367
    new-instance p1, Landroidx/loader/content/CursorLoader;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    .line 368
    invoke-static {p2}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$LocalPlaylistArtUri;->getUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Landroidx/loader/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_2
    const/4 p2, 0x3

    const/4 v0, 0x0

    if-ne p1, p2, :cond_3

    .line 370
    iput-object v0, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mSortOrder:Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;

    .line 371
    new-instance p1, Lcom/sonyericsson/music/library/PlaylistsFragment$PreparePlaylistsLoader;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/sonyericsson/music/library/PlaylistsFragment$PreparePlaylistsLoader;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_3
    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 477
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/music/library/LibraryBaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const p2, 0x7f090111

    .line 479
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 481
    iget-boolean v0, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mIsManageMode:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 482
    invoke-interface {p2, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_0
    const p2, 0x7f09011a

    .line 485
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 487
    iget-boolean v0, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mIsManageMode:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 488
    invoke-interface {p2, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_1
    const p2, 0x7f090112

    .line 491
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 493
    iget-boolean v0, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mIsManageMode:Z

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 494
    invoke-interface {p2, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_2
    const p2, 0x7f090117

    .line 497
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 499
    iget-boolean v0, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mIsManageMode:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3
    const p2, 0x7f090119

    .line 501
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 503
    iget-boolean p2, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mIsManageMode:Z

    xor-int/lit8 p2, p2, 0x1

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_4
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 189
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/music/library/LibraryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const p3, 0x7f090175

    .line 191
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/viewpager/widget/ViewPager;

    iput-object p2, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 192
    iget-object p2, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 194
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/music/MusicActivity;

    const-string p3, "playlists"

    .line 197
    invoke-static {p2, p3}, Lcom/sonyericsson/music/library/Page;->getCustomizedPagePosition(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mPlaylistsFragmentTabPosition:I

    .line 199
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/PlaylistsFragment;->update()V

    .line 201
    iget-boolean p2, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mPendingPlaylistArtChange:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 202
    iput-boolean p2, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mPendingPlaylistArtChange:Z

    .line 203
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/PlaylistsFragment;->refreshLocalPlaylistArt()V

    :cond_0
    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {v0}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->destroy()V

    const/4 v0, 0x0

    .line 332
    iput-object v0, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    .line 335
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mBroadcastReceiverRegistered:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 336
    iput-boolean v0, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mBroadcastReceiverRegistered:Z

    .line 338
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    .line 339
    iget-object v1, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mArtReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 342
    :cond_1
    invoke-super {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v0, 0x0

    .line 347
    iput-object v0, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mMyPlaylistsHeader:Landroid/widget/TextView;

    .line 348
    iput-object v0, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mSmartPlaylistsHeader:Landroid/widget/TextView;

    .line 349
    iput-object v0, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mCreateNewPlaylistHeader:Landroid/view/View;

    .line 350
    iget-object v1, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 351
    iget-object v1, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    if-eqz v1, :cond_0

    .line 352
    invoke-virtual {v1}, Lcom/sonyericsson/music/MusicActivity;->unlockDrawer()V

    .line 353
    iget-object v1, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/music/MusicActivity;->setToolbarNavigationClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    :cond_0
    invoke-super {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->onDestroyView()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 235
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    .line 237
    iput-object v0, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 587
    iget-object p1, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {p1}, Lcom/sonyericsson/music/MusicActivity;->isFragmentTransactionAllowed()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 593
    :cond_0
    iget-boolean p1, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mIsManageMode:Z

    const/4 p4, -0x2

    if-nez p1, :cond_5

    .line 594
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {p1, p3}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getItemViewType(I)I

    move-result p1

    const/4 p5, 0x0

    if-ne p1, p4, :cond_1

    .line 595
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {p1}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getHeaderCount()I

    move-result p1

    if-ge p3, p1, :cond_4

    .line 596
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {p1, p3, p5, p5}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 597
    invoke-direct {p0}, Lcom/sonyericsson/music/library/PlaylistsFragment;->getCreateNewPlaylistHeaderView()Landroid/view/View;

    move-result-object p2

    if-ne p2, p1, :cond_4

    .line 598
    iget-object p1, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-static {p1}, Lcom/sonyericsson/music/common/PlaylistActions;->launchCreatePlaylistDialog(Lcom/sonyericsson/music/MusicActivity;)V

    goto/16 :goto_0

    .line 602
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {p1, p3}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/database/Cursor;

    .line 603
    invoke-static {p1}, Lcom/sonyericsson/music/common/DBUtils;->getPlaylistType(Landroid/database/Cursor;)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    move-result-object p3

    const p4, 0x7f0900db

    if-nez p3, :cond_2

    const-string p3, "playlist_name"

    .line 606
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    const-string p5, "_id"

    .line 607
    invoke-interface {p1, p5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p5

    .line 609
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 610
    invoke-interface {p1, p5}, Landroid/database/Cursor;->getInt(I)I

    move-result p3

    .line 611
    invoke-static {p3}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri(I)Landroid/net/Uri;

    move-result-object v0

    const-string p3, "mediastore_id"

    .line 613
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string p3, "path"

    .line 614
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 615
    invoke-static {p1}, Lcom/sonyericsson/music/common/DBUtils;->isPlaylistUserCreated(Ljava/lang/String;)Z

    move-result v4

    .line 616
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    .line 617
    new-instance v5, Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    const-string p1, "playlists"

    invoke-direct {v5, p1}, Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;-><init>(Ljava/lang/String;)V

    .line 618
    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/music/library/PlaylistFragment;->newInstance(Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;ZLcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Lcom/sonyericsson/music/library/PlaylistFragment;

    move-result-object p5

    goto :goto_0

    .line 621
    :cond_2
    sget-object p1, Lcom/sonyericsson/music/library/PlaylistsFragment$4;->$SwitchMap$com$sonyericsson$music$common$SmartPlaylistUtils$SmartPlaylistType:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    packed-switch p1, :pswitch_data_0

    return-void

    .line 629
    :pswitch_0
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 630
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p5

    .line 631
    :cond_3
    iget-object p1, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    iget-object p2, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    .line 632
    invoke-virtual {p2}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object p2

    invoke-static {p1, p3, p2}, Lcom/sonyericsson/music/common/MenuUtils;->getPlaylistData(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;Landroid/database/Cursor;)Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;

    move-result-object p1

    .line 633
    new-instance p2, Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    const-string p4, "playlists"

    invoke-direct {p2, p4}, Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;-><init>(Ljava/lang/String;)V

    .line 635
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;->getId()Ljava/lang/String;

    move-result-object p1

    .line 634
    invoke-static {p3, p2, p5, p1}, Lcom/sonyericsson/music/library/SmartPlaylistFragment;->newInstance(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;Landroid/net/Uri;Ljava/lang/String;)Lcom/sonyericsson/music/library/SmartPlaylistFragment;

    move-result-object p5

    :cond_4
    :goto_0
    if-eqz p5, :cond_6

    .line 644
    iget-object p1, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {p1}, Lcom/sonyericsson/music/MusicActivity;->getMusicFragmentManager()Lcom/sonyericsson/music/MusicFragmentManager;

    move-result-object p1

    const-string p2, "playlists"

    const/4 p3, 0x0

    const/4 p4, 0x1

    .line 645
    invoke-virtual {p1, p5, p2, p3, p4}, Lcom/sonyericsson/music/MusicFragmentManager;->openFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 649
    :cond_5
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    .line 650
    invoke-virtual {p1, p3}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getItemViewType(I)I

    move-result p1

    if-eq p1, p4, :cond_6

    .line 651
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {p1}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getHeaderCount()I

    move-result p1

    sub-int/2addr p3, p1

    .line 652
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {p1}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/library/PlaylistsAdapter;

    invoke-virtual {p1, p2, p3}, Lcom/sonyericsson/music/library/PlaylistsAdapter;->toggleItemMarked(Landroid/view/View;I)Z

    :cond_6
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V
    .locals 3
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

    .line 387
    invoke-virtual {p1}, Landroidx/loader/content/Loader;->getId()I

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_0

    .line 389
    new-instance v0, Lcom/sonyericsson/music/library/PlaylistsCursorWrapper;

    invoke-direct {v0, p2}, Lcom/sonyericsson/music/library/PlaylistsCursorWrapper;-><init>(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 390
    :goto_0
    invoke-super {p0, p1, v0}, Lcom/sonyericsson/music/library/LibraryListFragment;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

    .line 391
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/library/PlaylistsFragment;->setManagedPlaylists(Landroid/database/Cursor;)V

    if-eqz v0, :cond_1

    .line 392
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_1

    .line 393
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->removeNoContentHeaderView()V

    goto :goto_1

    .line 395
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->showNoContentHeaderView()V

    .line 399
    :goto_1
    invoke-direct {p0}, Lcom/sonyericsson/music/library/PlaylistsFragment;->setupHeaders()V

    goto :goto_3

    :cond_2
    const/4 p1, 0x1

    if-ne v0, p1, :cond_3

    .line 401
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/library/PlaylistsAdapter;

    .line 402
    invoke-virtual {v0, p2, p1}, Lcom/sonyericsson/music/library/PlaylistsAdapter;->loadPlaylistArtUriToAdapter(Landroid/database/Cursor;Z)V

    goto :goto_3

    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 404
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {p1}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/library/PlaylistsAdapter;

    const/4 v0, 0x0

    .line 405
    invoke-virtual {p1, p2, v0}, Lcom/sonyericsson/music/library/PlaylistsAdapter;->loadPlaylistArtUriToAdapter(Landroid/database/Cursor;Z)V

    goto :goto_3

    :cond_4
    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, -0x1

    if-eqz p2, :cond_5

    .line 408
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v0, "playlists_sort_order"

    .line 410
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    :cond_5
    if-ge v0, p1, :cond_6

    .line 412
    sget-object p1, Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;->ALPHABETICAL:Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;

    goto :goto_2

    .line 413
    :cond_6
    invoke-static {v0}, Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;->indexToSortOrder(I)Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;

    move-result-object p1

    .line 412
    :goto_2
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/library/PlaylistsFragment;->setSortOrder(Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;)V

    .line 416
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/loader/app/LoaderManager;->destroyLoader(I)V

    .line 418
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->initLoader()V

    :cond_7
    :goto_3
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 80
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/music/library/PlaylistsFragment;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .line 798
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 803
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f09011a

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    return v1

    .line 809
    :pswitch_0
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {p1}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/library/PlaylistsAdapter;

    invoke-virtual {p1}, Lcom/sonyericsson/music/library/PlaylistsAdapter;->persistChanges()V

    .line 810
    invoke-direct {p0, v1, v1}, Lcom/sonyericsson/music/library/PlaylistsFragment;->reloadPlaylistsFragment(ZZ)V

    return v2

    .line 805
    :pswitch_1
    invoke-direct {p0, v2, v1}, Lcom/sonyericsson/music/library/PlaylistsFragment;->reloadPlaylistsFragment(ZZ)V

    return v2

    .line 814
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mSortOrder:Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 815
    :cond_2
    sget-object v0, Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;->ALPHABETICAL:Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;

    :goto_0
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;->getIndex()I

    move-result v0

    .line 814
    invoke-static {p1, p0, v0}, Lcom/sonyericsson/music/library/SortOrderDialog;->show(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;I)V

    return v2

    :pswitch_data_0
    .packed-switch 0x7f090111
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onNowPlayingInfoChanged(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V
    .locals 3

    .line 720
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/library/PlaylistsAdapter;

    if-eqz p1, :cond_0

    .line 723
    invoke-virtual {p1}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->getSourceUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/music/library/BaseFragment;->matchUri(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 725
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/library/PlaylistsAdapter;->setNowPlayingInfo(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 728
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/library/PlaylistsAdapter;->setNowPlayingInfo(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V

    .line 731
    :goto_0
    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 786
    iget-boolean v0, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mIsManageMode:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mPlaylistsFragmentTabPosition:I

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 787
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/library/PlaylistsFragment;->reloadPlaylistsFragment(ZZ)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 322
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 323
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    .line 324
    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->getNowPlayingUpdater()Lcom/sonyericsson/music/NowPlayingUpdater;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sonyericsson/music/NowPlayingUpdater;->removeListener(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfoListener;)V

    .line 325
    invoke-virtual {v0, p0}, Lcom/sonyericsson/music/MusicActivity;->removeBackListener(Lcom/sonyericsson/music/MusicActivity$BackListener;)Z

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 314
    invoke-super {p0}, Lcom/sonyericsson/music/library/BaseFragment;->onResume()V

    .line 315
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    .line 316
    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->getNowPlayingUpdater()Lcom/sonyericsson/music/NowPlayingUpdater;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sonyericsson/music/NowPlayingUpdater;->addListener(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfoListener;)V

    .line 317
    invoke-virtual {v0, p0}, Lcom/sonyericsson/music/MusicActivity;->addBackListener(Lcom/sonyericsson/music/MusicActivity$BackListener;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 211
    invoke-super {p0, p1}, Lcom/sonyericsson/music/library/LibraryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 214
    invoke-static {}, Lcom/sonyericsson/music/RetainManager;->getInstance()Lcom/sonyericsson/music/RetainManager;

    move-result-object p1

    const-string v0, "key_is_retain_mode"

    .line 215
    iget-boolean v1, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mIsManageMode:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/music/RetainManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 216
    iget-boolean v0, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mIsManageMode:Z

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    .line 218
    invoke-virtual {v0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/library/PlaylistsAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/music/library/PlaylistsAdapter;->getModifiedItems()Ljava/util/List;

    move-result-object v0

    const-string v1, "retained_modified_items"

    .line 219
    invoke-virtual {p1, v1, v0}, Lcom/sonyericsson/music/RetainManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onSortOrderSelected(I)V
    .locals 2

    .line 509
    invoke-static {p1}, Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;->indexToSortOrder(I)Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;

    move-result-object p1

    .line 510
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mSortOrder:Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;

    if-eq v0, p1, :cond_0

    .line 512
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/library/PlaylistsFragment;->setSortOrder(Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;)V

    .line 513
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/PlaylistsFragment;->restartPlaylistsLoader()V

    .line 517
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sonyericsson/music/library/PlaylistsFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/music/library/PlaylistsFragment$3;-><init>(Lcom/sonyericsson/music/library/PlaylistsFragment;Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 526
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onStoragePermissionChanged(Z)V
    .locals 2

    .line 379
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/loader/app/LoaderManager;->destroyLoader(I)V

    .line 381
    invoke-super {p0, p1}, Lcom/sonyericsson/music/library/LibraryListFragment;->onStoragePermissionChanged(Z)V

    return-void
.end method

.method refreshLocalPlaylistArt()V
    .locals 3

    .line 709
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method restartPlaylistsLoader()V
    .locals 3

    .line 713
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 714
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    :cond_0
    return-void
.end method

.method setSortOrder(Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;)V
    .locals 1

    .line 823
    iput-object p1, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mSortOrder:Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;

    .line 824
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {p1}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/library/PlaylistsAdapter;

    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mSortOrder:Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/library/PlaylistsAdapter;->setSortOrder(Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;)V

    return-void
.end method

.method toggleManageModeUi()V
    .locals 3

    .line 469
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 471
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/library/PlaylistsAdapter;

    .line 472
    iget-boolean v1, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mIsManageMode:Z

    iget-object v2, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mSortOrder:Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/music/library/PlaylistsAdapter;->setIsManageMode(ZLcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;)V

    return-void
.end method

.method public update()V
    .locals 2

    .line 242
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    if-eqz v0, :cond_1

    .line 243
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 245
    iget-boolean v1, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mIsManageMode:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/sonyericsson/music/library/PlaylistsFragment;->enableCreateNewPlaylistHeader(Z)V

    .line 247
    iget-boolean v1, p0, Lcom/sonyericsson/music/library/PlaylistsFragment;->mIsManageMode:Z

    if-eqz v1, :cond_0

    .line 249
    iget-object v1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->unregisterForContextMenu(Landroid/view/View;)V

    .line 251
    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->closeAndLockDrawer()V

    const v1, 0x7f1002a4

    .line 253
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/music/library/BaseFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 255
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/PlaylistsFragment;->getDrawerIndicator()Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$DrawerIndicator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/MusicActivity;->setDrawerIndicator(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$DrawerIndicator;)V

    .line 258
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 260
    new-instance v1, Lcom/sonyericsson/music/library/PlaylistsFragment$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/library/PlaylistsFragment$2;-><init>(Lcom/sonyericsson/music/library/PlaylistsFragment;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/MusicActivity;->setToolbarNavigationClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 270
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    .line 272
    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->unlockDrawer()V

    const v1, 0x7f100192

    .line 274
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/music/library/BaseFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 276
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/PlaylistsFragment;->getDrawerIndicator()Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$DrawerIndicator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/MusicActivity;->setDrawerIndicator(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$DrawerIndicator;)V

    .line 278
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    const/4 v1, 0x0

    .line 280
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/MusicActivity;->setToolbarNavigationClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method
