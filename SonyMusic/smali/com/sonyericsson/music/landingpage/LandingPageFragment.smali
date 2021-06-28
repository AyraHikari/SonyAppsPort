.class public Lcom/sonyericsson/music/landingpage/LandingPageFragment;
.super Lcom/sonyericsson/music/library/BaseFragment;
.source "LandingPageFragment.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;
.implements Lcom/sonyericsson/music/MediaServiceConnection;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/sonyericsson/music/ArtistInfoNotifier$ArtistChangeListener;
.implements Lcom/sonyericsson/music/landingpage/LandingPageAdapter$AdapterInteractionListener;
.implements Lcom/sonyericsson/music/common/PermissionListener;
.implements Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask$RetainedAsyncTaskListener;
.implements Lcom/sonyericsson/music/MusicApplication$ConfigFetchCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/landingpage/LandingPageFragment$AllTracksTask;,
        Lcom/sonyericsson/music/landingpage/LandingPageFragment$FrameDelay;,
        Lcom/sonyericsson/music/landingpage/LandingPageFragment$ArtistImageDecodedListener;,
        Lcom/sonyericsson/music/landingpage/LandingPageFragment$ScrollListener;,
        Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/music/library/BaseFragment;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/sonyericsson/music/MediaServiceConnection;",
        "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
        "Lcom/sonyericsson/music/ArtistInfoNotifier$ArtistChangeListener;",
        "Lcom/sonyericsson/music/landingpage/LandingPageAdapter$AdapterInteractionListener;",
        "Lcom/sonyericsson/music/common/PermissionListener;",
        "Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask$RetainedAsyncTaskListener;",
        "Lcom/sonyericsson/music/MusicApplication$ConfigFetchCompleteListener;"
    }
.end annotation


# static fields
.field private static final KEY_HEADER_IMAGE_POSITION:Ljava/lang/String; = "key_header_image_position"

.field private static final KEY_LAYOUT_STATE:Ljava/lang/String; = "key_layout_state"

.field private static final KEY_TRACK_COUNT:Ljava/lang/String; = "key_track_count"

.field static final LOADER_ID_NEWLY_ADDED:I = 0x2

.field static final LOADER_ID_PLAY_QUEUE:I = 0x0

.field static final LOADER_ID_RECENTLY_PLAYED:I = 0x1

.field private static final MAX_NBR_OF_TRACKS_TO_SHOW_EMPTY_CARD:I = 0xf

.field private static final RETAIN_ALL_TRACKS_TASK_KEY:Ljava/lang/String; = "retain_all_tracks_key"

.field private static final RETAIN_ORIENTATION_CHANGED:Ljava/lang/String; = "retain_orientation_changed"

.field private static final STATIC_LOADER_COUNT:I = 0x3

.field public static final TAG:Ljava/lang/String; = "LandingPageFragment"


# instance fields
.field mAdapter:Lcom/sonyericsson/music/landingpage/LandingPageAdapter;

.field private mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

.field private mArtistImageView:Lcom/sonyericsson/music/landingpage/LandingPageArtistView;

.field private mArtistImageViewSavedTranslatedY:F

.field private final mCategoryCursors:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mCategoryHeaderImage:Landroid/graphics/Bitmap;

.field private mCategoryHeaderTarget:Lcom/squareup/picasso/Target;

.field private mDriveCard:Lcom/sonyericsson/music/landingpage/card/LandingPageCard;

.field private mEmptyCard:Lcom/sonyericsson/music/landingpage/card/LandingPageCard;

.field private mFirstStart:Z

.field private mHeaderImagePreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field private mLocalTracksCount:I

.field private mOrientation:I

.field private mPendingLoaderCount:I

.field private mPersonalDataCollectionCard:Lcom/sonyericsson/music/landingpage/card/LandingPageCard;

.field private mPlayerController:Lcom/sonyericsson/music/player/PlayerController;

.field private mQuickPlayButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field mQuickPlayType:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mRegisteredPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mRootView:Landroid/view/ViewGroup;

.field private mSavedLayoutState:Landroid/os/Parcelable;

.field private mScrollListener:Lcom/sonyericsson/music/landingpage/LandingPageFragment$ScrollListener;

.field private mToolbarScroller:Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;

.field private mTracksTask:Lcom/sonyericsson/music/landingpage/LandingPageFragment$AllTracksTask;

.field private mUpdateCard:Lcom/sonyericsson/music/landingpage/card/LandingPageCard;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 89
    invoke-direct {p0}, Lcom/sonyericsson/music/library/BaseFragment;-><init>()V

    const/4 v0, -0x1

    .line 152
    iput v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mLocalTracksCount:I

    .line 164
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mCategoryCursors:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/landingpage/LandingPageFragment;)Lcom/sonyericsson/music/MusicActivity;
    .locals 0

    .line 89
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/music/landingpage/LandingPageFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/music/landingpage/LandingPageFragment;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->setHeaderImage()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sonyericsson/music/landingpage/LandingPageFragment;)Lcom/sonyericsson/music/MusicActivity;
    .locals 0

    .line 89
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lcom/sonyericsson/music/landingpage/LandingPageFragment;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->runOnNextPreDraw(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/music/landingpage/LandingPageFragment;)Lcom/sonyericsson/music/MusicActivity;
    .locals 0

    .line 89
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2500(Lcom/sonyericsson/music/landingpage/LandingPageFragment;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->clearPreDrawListener()V

    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/music/landingpage/LandingPageFragment;)Lcom/sonyericsson/music/landingpage/card/LandingPageCard;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mPersonalDataCollectionCard:Lcom/sonyericsson/music/landingpage/card/LandingPageCard;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/music/landingpage/LandingPageFragment;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->showPersonalDataCollectionCard()V

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/music/landingpage/LandingPageFragment;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->clearHeaderPreDrawListener()V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/music/landingpage/LandingPageFragment;)Lcom/sonyericsson/music/landingpage/LandingPageArtistView;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mArtistImageView:Lcom/sonyericsson/music/landingpage/LandingPageArtistView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sonyericsson/music/landingpage/LandingPageFragment;)Landroid/graphics/Bitmap;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mCategoryHeaderImage:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$702(Lcom/sonyericsson/music/landingpage/LandingPageFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mCategoryHeaderImage:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sonyericsson/music/landingpage/LandingPageFragment;)Lcom/sonyericsson/music/artdecoder/ArtDecoder;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    return-object p0
.end method

.method static synthetic access$902(Lcom/sonyericsson/music/landingpage/LandingPageFragment;Lcom/squareup/picasso/Target;)Lcom/squareup/picasso/Target;
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mCategoryHeaderTarget:Lcom/squareup/picasso/Target;

    return-object p1
.end method

.method private checkAndFixCategoryCursorsIntegrity()V
    .locals 3

    .line 587
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mCategoryCursors:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 588
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    if-eqz v2, :cond_0

    .line 590
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 591
    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private clearHeaderPreDrawListener()V
    .locals 2

    .line 835
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mHeaderImagePreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 836
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mHeaderImagePreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x0

    .line 837
    iput-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mHeaderImagePreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    :cond_0
    return-void
.end method

.method private clearPreDrawListener()V
    .locals 2

    .line 1197
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mRegisteredPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 1198
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mRegisteredPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x0

    .line 1199
    iput-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mRegisteredPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    :cond_0
    return-void
.end method

.method private loadHeaderImage(Landroid/content/Context;I)V
    .locals 2

    .line 842
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mCategoryHeaderImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 843
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mCategoryHeaderTarget:Lcom/squareup/picasso/Target;

    if-eqz v0, :cond_0

    .line 844
    invoke-static {p1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mCategoryHeaderTarget:Lcom/squareup/picasso/Target;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->cancelRequest(Lcom/squareup/picasso/Target;)V

    const/4 v0, 0x0

    .line 845
    iput-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mCategoryHeaderTarget:Lcom/squareup/picasso/Target;

    .line 848
    :cond_0
    new-instance v0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$9;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/landingpage/LandingPageFragment$9;-><init>(Lcom/sonyericsson/music/landingpage/LandingPageFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mCategoryHeaderTarget:Lcom/squareup/picasso/Target;

    .line 864
    invoke-static {p1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    iget-object p2, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mCategoryHeaderTarget:Lcom/squareup/picasso/Target;

    invoke-virtual {p1, p2}, Lcom/squareup/picasso/RequestCreator;->into(Lcom/squareup/picasso/Target;)V

    goto :goto_0

    .line 866
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->setHeaderImage()V

    :goto_0
    return-void
.end method

.method private runOnNextPreDraw(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    .locals 1

    .line 1185
    invoke-direct {p0}, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->clearPreDrawListener()V

    .line 1186
    new-instance v0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$10;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/music/landingpage/LandingPageFragment$10;-><init>(Lcom/sonyericsson/music/landingpage/LandingPageFragment;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iput-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mRegisteredPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 1193
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mRegisteredPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private scheduleFinishStartup()V
    .locals 3

    .line 623
    new-instance v0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$FrameDelay;

    new-instance v1, Lcom/sonyericsson/music/landingpage/LandingPageFragment$7;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/landingpage/LandingPageFragment$7;-><init>(Lcom/sonyericsson/music/landingpage/LandingPageFragment;)V

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Lcom/sonyericsson/music/landingpage/LandingPageFragment$FrameDelay;-><init>(ILjava/lang/Runnable;)V

    .line 636
    invoke-virtual {v0}, Lcom/sonyericsson/music/landingpage/LandingPageFragment$FrameDelay;->start()V

    return-void
.end method

.method private scheduleRefreshPlaylistArt()V
    .locals 2

    .line 609
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/music/landingpage/LandingPageFragment$6;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/landingpage/LandingPageFragment$6;-><init>(Lcom/sonyericsson/music/landingpage/LandingPageFragment;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/MusicActivity;->runAfterStartup(Lcom/sonyericsson/music/MusicActivity$StartupTask;)V

    return-void
.end method

.method private setHeaderImage()V
    .locals 4

    .line 871
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0900cb

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;

    iput-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mArtistImageView:Lcom/sonyericsson/music/landingpage/LandingPageArtistView;

    .line 872
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mArtistImageView:Lcom/sonyericsson/music/landingpage/LandingPageArtistView;

    if-eqz v0, :cond_1

    .line 874
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mRootView:Landroid/view/ViewGroup;

    .line 875
    invoke-static {v0, v2}, Lcom/sonyericsson/music/common/UIUtils;->setSystemUIVisibilityPreKK(Landroid/view/View;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 876
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mArtistImageView:Lcom/sonyericsson/music/landingpage/LandingPageArtistView;

    .line 877
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 878
    invoke-static {}, Lcom/sonyericsson/music/common/UIUtils;->getStatusBarHeight()I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 880
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mArtistImageView:Lcom/sonyericsson/music/landingpage/LandingPageArtistView;

    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mCategoryHeaderImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->onBitmapLoaded(Landroid/graphics/Bitmap;Z)V

    .line 882
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mArtistImageView:Lcom/sonyericsson/music/landingpage/LandingPageArtistView;

    iget v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mArtistImageViewSavedTranslatedY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    return-void
.end method

.method private showPersonalDataCollectionCard()V
    .locals 3

    .line 986
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mAdapter:Lcom/sonyericsson/music/landingpage/LandingPageAdapter;

    if-nez v0, :cond_0

    return-void

    .line 990
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 991
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 992
    invoke-static {v0}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->getInteractionCount(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0xf

    if-le v1, v2, :cond_1

    .line 994
    invoke-static {v0}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->isPersonalDataCollectionConsented(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 998
    invoke-static {v0}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->isPersonalDataCollectionCardDismissed(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mPersonalDataCollectionCard:Lcom/sonyericsson/music/landingpage/card/LandingPageCard;

    if-nez v1, :cond_1

    .line 1000
    new-instance v1, Lcom/sonyericsson/music/landingpage/card/PersonalDataCollectionCard;

    iget-object v2, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mAdapter:Lcom/sonyericsson/music/landingpage/LandingPageAdapter;

    invoke-direct {v1, v0, v2}, Lcom/sonyericsson/music/landingpage/card/PersonalDataCollectionCard;-><init>(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/landingpage/card/LandingPageCard$AdapterCardListener;)V

    iput-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mPersonalDataCollectionCard:Lcom/sonyericsson/music/landingpage/card/LandingPageCard;

    .line 1002
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mAdapter:Lcom/sonyericsson/music/landingpage/LandingPageAdapter;

    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mPersonalDataCollectionCard:Lcom/sonyericsson/music/landingpage/card/LandingPageCard;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->addCard(Lcom/sonyericsson/music/landingpage/card/LandingPageCard;)V

    :cond_1
    return-void
.end method

.method private startCategoryLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
            "TT;>;)V"
        }
    .end annotation

    .line 317
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/loader/app/LoaderManager;->getLoader(I)Landroidx/loader/content/Loader;

    move-result-object v0

    .line 318
    check-cast v0, Lcom/sonyericsson/music/landingpage/CategoryLoader;

    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->shouldLoaderBeRestarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    goto :goto_0

    .line 322
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    :goto_0
    return-void
.end method

.method private updateQuickPlayButton(Landroid/content/Context;)V
    .locals 4

    .line 733
    invoke-static {p1}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->getQuickPlayType(Landroid/content/Context;)Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mQuickPlayType:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    .line 734
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mQuickPlayType:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    sget-object v1, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->HIDE_BUTTON:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mLocalTracksCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 735
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mQuickPlayButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v1, v2}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->setVisibility(I)V

    if-eqz v0, :cond_2

    .line 737
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mQuickPlayType:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->getFabImageResId()I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_2

    .line 739
    iget-object v2, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mQuickPlayButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v2, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageResource(I)V

    .line 743
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mQuickPlayButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->hide()V

    .line 744
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mQuickPlayButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->show()V

    .line 750
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mQuickPlayButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mQuickPlayType:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    .line 751
    invoke-virtual {v3}, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->getContentDescription()I

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    move-object v3, v2

    .line 750
    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 753
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mQuickPlayButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 754
    invoke-virtual {v1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    if-eqz v0, :cond_4

    .line 756
    new-instance v0, Lcom/sonyericsson/music/landingpage/ScrollAwareFABBehavior;

    invoke-direct {v0, p1, v2}, Lcom/sonyericsson/music/landingpage/ScrollAwareFABBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    goto :goto_3

    .line 758
    :cond_4
    invoke-virtual {v1, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    .line 760
    :goto_3
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mQuickPlayButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected getBackgroundColorSetting()Lcom/sonyericsson/music/library/BaseFragment$BackgroundColorSetting;
    .locals 1

    .line 909
    sget-object v0, Lcom/sonyericsson/music/library/BaseFragment$BackgroundColorSetting;->WINDOW:Lcom/sonyericsson/music/library/BaseFragment$BackgroundColorSetting;

    return-object v0
.end method

.method protected isContentFragment()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isFragmentHandlesToolbarMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isTargetForBackgroundColor()Z
    .locals 1

    .line 914
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 917
    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->getMusicFragmentManager()Lcom/sonyericsson/music/MusicFragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicFragmentManager;->isFragmentBackStackTopLandingPage()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method protected isTransparentToolbar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method loadData()V
    .locals 2

    const-string v0, "lp_loaders_started_until_all_done"

    .line 294
    invoke-static {v0}, Lcom/sonyericsson/music/debug/DebugTimer;->start(Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 295
    iput v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mPendingLoaderCount:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 296
    invoke-direct {p0, v1, v0, p0}, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->startCategoryLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)V

    const/4 v1, 0x1

    .line 297
    invoke-direct {p0, v1, v0, p0}, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->startCategoryLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)V

    const/4 v1, 0x2

    .line 298
    invoke-direct {p0, v1, v0, p0}, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->startCategoryLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 664
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 665
    invoke-virtual {p0}, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->loadData()V

    return-void
.end method

.method protected onApplyTopPadding(II)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onArtistInfoChanged(Lcom/sonyericsson/music/common/ArtistInfo;)V
    .locals 2

    .line 799
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 800
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 801
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mArtistImageView:Lcom/sonyericsson/music/landingpage/LandingPageArtistView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 803
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 804
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mArtistImageView:Lcom/sonyericsson/music/landingpage/LandingPageArtistView;

    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mCategoryHeaderImage:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->onBitmapLoaded(Landroid/graphics/Bitmap;Z)V

    goto :goto_0

    .line 807
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->clearHeaderPreDrawListener()V

    .line 809
    new-instance v0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$8;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/music/landingpage/LandingPageFragment$8;-><init>(Lcom/sonyericsson/music/landingpage/LandingPageFragment;Lcom/sonyericsson/music/common/ArtistInfo;)V

    iput-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mHeaderImagePreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 828
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mHeaderImagePreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCardRemoved(Lcom/sonyericsson/music/landingpage/card/LandingPageCard;)V
    .locals 2

    .line 1010
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mEmptyCard:Lcom/sonyericsson/music/landingpage/card/LandingPageCard;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1011
    iget p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mLocalTracksCount:I

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mAdapter:Lcom/sonyericsson/music/landingpage/LandingPageAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->categoriesAvailable()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1012
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mRootView:Landroid/view/ViewGroup;

    const v0, 0x7f090160

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1014
    :cond_0
    iput-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mEmptyCard:Lcom/sonyericsson/music/landingpage/card/LandingPageCard;

    goto :goto_0

    .line 1015
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mPersonalDataCollectionCard:Lcom/sonyericsson/music/landingpage/card/LandingPageCard;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1016
    iput-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mPersonalDataCollectionCard:Lcom/sonyericsson/music/landingpage/card/LandingPageCard;

    goto :goto_0

    .line 1017
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mUpdateCard:Lcom/sonyericsson/music/landingpage/card/LandingPageCard;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1018
    iput-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mUpdateCard:Lcom/sonyericsson/music/landingpage/card/LandingPageCard;

    goto :goto_0

    .line 1019
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mDriveCard:Lcom/sonyericsson/music/landingpage/card/LandingPageCard;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1020
    iput-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mDriveCard:Lcom/sonyericsson/music/landingpage/card/LandingPageCard;

    :cond_4
    :goto_0
    return-void
.end method

.method public onConfigFetchComplete()V
    .locals 4

    .line 708
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mDriveCard:Lcom/sonyericsson/music/landingpage/card/LandingPageCard;

    if-nez v0, :cond_0

    .line 711
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mAdapter:Lcom/sonyericsson/music/landingpage/LandingPageAdapter;

    invoke-static {v0, v1}, Lcom/sonyericsson/music/landingpage/card/LandingPageGoogleDriveCard;->showIn(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/landingpage/LandingPageAdapter;)Lcom/sonyericsson/music/landingpage/card/LandingPageCard;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mDriveCard:Lcom/sonyericsson/music/landingpage/card/LandingPageCard;

    goto :goto_0

    .line 715
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/metadata/cloud/GoogleDriveUtils;->isGoogleDriveAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 716
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mAdapter:Lcom/sonyericsson/music/landingpage/LandingPageAdapter;

    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mDriveCard:Lcom/sonyericsson/music/landingpage/card/LandingPageCard;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->removeCard(Lcom/sonyericsson/music/landingpage/card/LandingPageCard;)V

    const/4 v0, 0x0

    .line 717
    iput-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mDriveCard:Lcom/sonyericsson/music/landingpage/card/LandingPageCard;

    .line 721
    :cond_1
    :goto_0
    invoke-static {}, Lcom/sonyericsson/music/common/VersionUtils;->getLatestAvailableVersionCode()I

    move-result v0

    .line 722
    invoke-static {}, Lcom/sonyericsson/music/common/VersionUtils;->getVersionCode()I

    move-result v1

    if-lez v0, :cond_2

    if-le v0, v1, :cond_2

    .line 724
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->isUpdateCardDismissed(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mUpdateCard:Lcom/sonyericsson/music/landingpage/card/LandingPageCard;

    if-nez v1, :cond_2

    .line 726
    new-instance v1, Lcom/sonyericsson/music/landingpage/card/LandingPageUpdateCard;

    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mAdapter:Lcom/sonyericsson/music/landingpage/LandingPageAdapter;

    invoke-direct {v1, v2, v3, v0}, Lcom/sonyericsson/music/landingpage/card/LandingPageUpdateCard;-><init>(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/landingpage/card/LandingPageCard$AdapterCardListener;I)V

    iput-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mUpdateCard:Lcom/sonyericsson/music/landingpage/card/LandingPageCard;

    .line 728
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mAdapter:Lcom/sonyericsson/music/landingpage/LandingPageAdapter;

    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mUpdateCard:Lcom/sonyericsson/music/landingpage/card/LandingPageCard;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->addCard(Lcom/sonyericsson/music/landingpage/card/LandingPageCard;)V

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "lp_create_until_data_loaded"

    .line 168
    invoke-static {v0}, Lcom/sonyericsson/music/debug/DebugTimer;->start(Ljava/lang/String;)V

    .line 169
    invoke-super {p0, p1}, Lcom/sonyericsson/music/library/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 170
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez p1, :cond_0

    .line 173
    invoke-static {}, Lcom/sonyericsson/music/landingpage/LandingPageArtUriCache;->getInstance()Lcom/sonyericsson/music/landingpage/LandingPageArtUriCache;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/LandingPageArtUriCache;->clearCache()V

    .line 174
    invoke-direct {p0}, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->scheduleRefreshPlaylistArt()V

    const/4 p1, 0x1

    .line 175
    iput-boolean p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mFirstStart:Z

    goto :goto_1

    :cond_0
    const-string v1, "key_layout_state"

    .line 177
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mSavedLayoutState:Landroid/os/Parcelable;

    .line 178
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v1, v2}, Lcom/sonyericsson/music/common/PermissionUtils;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "key_track_count"

    const/4 v2, 0x0

    .line 180
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mLocalTracksCount:I

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    .line 182
    iput v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mLocalTracksCount:I

    :goto_0
    const-string v1, "key_header_image_position"

    .line 185
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mArtistImageViewSavedTranslatedY:F

    .line 188
    :goto_1
    new-instance p1, Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    invoke-direct {p1, v0}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    .line 195
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 196
    invoke-static {v0}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedStore;->getRecentlyPlayedRegisterObserverUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 195
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 2
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

    .line 497
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 498
    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    packed-switch p1, :pswitch_data_0

    return-object v0

    .line 507
    :pswitch_0
    new-instance v0, Lcom/sonyericsson/music/landingpage/NewlyAddedLoader;

    invoke-direct {v0, p2}, Lcom/sonyericsson/music/landingpage/NewlyAddedLoader;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    .line 504
    :pswitch_1
    new-instance v0, Lcom/sonyericsson/music/landingpage/RecentlyPlayedLoader;

    invoke-direct {v0, p2}, Lcom/sonyericsson/music/landingpage/RecentlyPlayedLoader;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    .line 501
    :pswitch_2
    new-instance v0, Lcom/sonyericsson/music/landingpage/PlayQueueLoader;

    invoke-direct {v0, p2}, Lcom/sonyericsson/music/landingpage/PlayQueueLoader;-><init>(Landroid/content/Context;)V

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 517
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/music/debug/DebugTimer;->start(Ljava/lang/String;)V

    :cond_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const/4 p2, 0x0

    const/4 v0, 0x0

    const v1, 0x7f0c003d

    .line 203
    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mRootView:Landroid/view/ViewGroup;

    const/4 p1, 0x1

    if-nez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 205
    :goto_0
    iput-boolean p3, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mFirstStart:Z

    .line 207
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget p3, p3, Landroid/content/res/Configuration;->orientation:I

    iput p3, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mOrientation:I

    .line 209
    iget-boolean p3, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mFirstStart:Z

    if-eqz p3, :cond_1

    .line 210
    invoke-static {}, Lcom/sonyericsson/music/RetainManager;->getInstance()Lcom/sonyericsson/music/RetainManager;

    move-result-object p3

    const-string v1, "retain_orientation_changed"

    invoke-virtual {p3, v1}, Lcom/sonyericsson/music/RetainManager;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_1

    .line 213
    :cond_1
    invoke-static {}, Lcom/sonyericsson/music/RetainManager;->getInstance()Lcom/sonyericsson/music/RetainManager;

    move-result-object p3

    const-string v1, "retain_orientation_changed"

    invoke-virtual {p3, v1}, Lcom/sonyericsson/music/RetainManager;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    if-eqz p3, :cond_2

    .line 214
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 215
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p3, 0x0

    .line 219
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080187

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->loadHeaderImage(Landroid/content/Context;I)V

    .line 222
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mRootView:Landroid/view/ViewGroup;

    const v2, 0x7f0900f2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 223
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v1

    .line 224
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 225
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 226
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 227
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/sonyericsson/music/landingpage/LandingPageItemDecoration;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonyericsson/music/landingpage/LandingPageItemDecoration;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 229
    new-instance p1, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;

    iget-object v2, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    invoke-direct {p1, v1, v2, p0, p3}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;-><init>(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/artdecoder/ArtDecoder;Lcom/sonyericsson/music/landingpage/LandingPageAdapter$AdapterInteractionListener;Z)V

    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mAdapter:Lcom/sonyericsson/music/landingpage/LandingPageAdapter;

    .line 230
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mAdapter:Lcom/sonyericsson/music/landingpage/LandingPageAdapter;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 232
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mRootView:Landroid/view/ViewGroup;

    const p3, 0x7f09019b

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mQuickPlayButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 233
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mQuickPlayButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance p3, Lcom/sonyericsson/music/landingpage/LandingPageFragment$1;

    invoke-direct {p3, p0}, Lcom/sonyericsson/music/landingpage/LandingPageFragment$1;-><init>(Lcom/sonyericsson/music/landingpage/LandingPageFragment;)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mAdapter:Lcom/sonyericsson/music/landingpage/LandingPageAdapter;

    invoke-static {v1, p1}, Lcom/sonyericsson/music/landingpage/card/LandingPageGoogleDriveCard;->showIn(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/landingpage/LandingPageAdapter;)Lcom/sonyericsson/music/landingpage/card/LandingPageCard;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mDriveCard:Lcom/sonyericsson/music/landingpage/card/LandingPageCard;

    .line 246
    iget p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mLocalTracksCount:I

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->updateTrackAvailability(I)V

    .line 248
    new-instance p1, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance p3, Lcom/sonyericsson/music/landingpage/LandingPageFragment$2;

    const/16 v2, 0x20

    invoke-direct {p3, p0, v0, v2}, Lcom/sonyericsson/music/landingpage/LandingPageFragment$2;-><init>(Lcom/sonyericsson/music/landingpage/LandingPageFragment;II)V

    invoke-direct {p1, p3}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 279
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object p3, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 281
    invoke-static {v1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 282
    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 284
    invoke-virtual {v1, p0}, Lcom/sonyericsson/music/MusicActivity;->addPermissionListener(Lcom/sonyericsson/music/common/PermissionListener;)V

    .line 286
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "title"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 287
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getToolbarControl()Lcom/sonyericsson/music/ToolbarControl;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lcom/sonyericsson/music/ToolbarControl;->setTitle(Ljava/lang/String;I)V

    .line 289
    invoke-static {p0}, Lcom/sonyericsson/music/MusicApplication;->addConfigFetchCompleteListener(Lcom/sonyericsson/music/MusicApplication$ConfigFetchCompleteListener;)V

    .line 290
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mRootView:Landroid/view/ViewGroup;

    return-object p1
.end method

.method public onDestroy()V
    .locals 3

    .line 476
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {v0}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->destroy()V

    .line 478
    iput-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    .line 487
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 488
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedStore;->getRecentlyPlayedRegisterObserverUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    .line 487
    invoke-virtual {v0, v2, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 491
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 4

    .line 422
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 424
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    .line 426
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mSavedLayoutState:Landroid/os/Parcelable;

    .line 428
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 429
    iget v2, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mOrientation:I

    if-eq v1, v2, :cond_0

    .line 430
    invoke-static {}, Lcom/sonyericsson/music/RetainManager;->getInstance()Lcom/sonyericsson/music/RetainManager;

    move-result-object v1

    const-string v2, "retain_orientation_changed"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/music/RetainManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 432
    :cond_0
    invoke-static {}, Lcom/sonyericsson/music/RetainManager;->getInstance()Lcom/sonyericsson/music/RetainManager;

    move-result-object v1

    const-string v2, "retain_orientation_changed"

    invoke-virtual {v1, v2}, Lcom/sonyericsson/music/RetainManager;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 435
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mArtistImageView:Lcom/sonyericsson/music/landingpage/LandingPageArtistView;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 437
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    if-eqz v1, :cond_1

    .line 439
    invoke-virtual {v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;

    if-eqz v1, :cond_1

    .line 441
    invoke-virtual {v1}, Lcom/sonyericsson/music/landingpage/ArtistImageBehavior;->clearBehavior()V

    .line 444
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mArtistImageView:Lcom/sonyericsson/music/landingpage/LandingPageArtistView;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    iput v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mArtistImageViewSavedTranslatedY:F

    .line 445
    iput-object v2, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mArtistImageView:Lcom/sonyericsson/music/landingpage/LandingPageArtistView;

    .line 447
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->clearHeaderPreDrawListener()V

    .line 449
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mQuickPlayButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 450
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v1

    invoke-static {v1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 451
    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 453
    invoke-direct {p0}, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->clearPreDrawListener()V

    .line 455
    invoke-virtual {v0, p0}, Lcom/sonyericsson/music/MusicActivity;->removePermissionListener(Lcom/sonyericsson/music/common/PermissionListener;)V

    .line 457
    invoke-static {p0}, Lcom/sonyericsson/music/MusicApplication;->removeConfigFetchCompleteListener(Lcom/sonyericsson/music/MusicApplication$ConfigFetchCompleteListener;)V

    .line 459
    iput-object v2, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mDriveCard:Lcom/sonyericsson/music/landingpage/card/LandingPageCard;

    .line 460
    iput-object v2, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mEmptyCard:Lcom/sonyericsson/music/landingpage/card/LandingPageCard;

    .line 461
    iput-object v2, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mPersonalDataCollectionCard:Lcom/sonyericsson/music/landingpage/card/LandingPageCard;

    .line 462
    iput-object v2, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mUpdateCard:Lcom/sonyericsson/music/landingpage/card/LandingPageCard;

    .line 463
    iput-object v2, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mCategoryHeaderTarget:Lcom/squareup/picasso/Target;

    .line 465
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mAdapter:Lcom/sonyericsson/music/landingpage/LandingPageAdapter;

    if-eqz v0, :cond_3

    .line 466
    sget-object v1, Lcom/sonyericsson/music/landingpage/LandingPageFragmentLifecycleStateChange$LifecycleState;->ON_DESTROY_VIEW:Lcom/sonyericsson/music/landingpage/LandingPageFragmentLifecycleStateChange$LifecycleState;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->notifyParentFragmentLifecycleChange(Lcom/sonyericsson/music/landingpage/LandingPageFragmentLifecycleStateChange$LifecycleState;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 467
    iput-object v2, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mAdapter:Lcom/sonyericsson/music/landingpage/LandingPageAdapter;

    .line 468
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 471
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mCategoryCursors:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method protected onGetToolbarScroller(Lcom/sonyericsson/music/ToolbarControl;)Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;
    .locals 1

    .line 924
    new-instance v0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;-><init>(Lcom/sonyericsson/music/landingpage/LandingPageFragment;Lcom/sonyericsson/music/ToolbarControl;)V

    iput-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mToolbarScroller:Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;

    .line 925
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mToolbarScroller:Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;

    return-object p1
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

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

    if-eqz p1, :cond_3

    .line 527
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/debug/DebugTimer;->stop(Ljava/lang/String;)V

    .line 529
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mCategoryCursors:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroidx/loader/content/Loader;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 532
    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 533
    iget p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mPendingLoaderCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mPendingLoaderCount:I

    .line 534
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mAdapter:Lcom/sonyericsson/music/landingpage/LandingPageAdapter;

    if-eqz p1, :cond_0

    .line 535
    iget p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mPendingLoaderCount:I

    if-gtz p1, :cond_0

    const-string p1, "lp_create_until_data_loaded"

    .line 536
    invoke-static {p1}, Lcom/sonyericsson/music/debug/DebugTimer;->stop(Ljava/lang/String;)V

    const-string p1, "lp_loaders_started_until_all_done"

    .line 537
    invoke-static {p1}, Lcom/sonyericsson/music/debug/DebugTimer;->stop(Ljava/lang/String;)V

    const-string p1, "lp_swapping_cursors"

    .line 538
    invoke-static {p1}, Lcom/sonyericsson/music/debug/DebugTimer;->start(Ljava/lang/String;)V

    .line 540
    invoke-direct {p0}, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->checkAndFixCategoryCursorsIntegrity()V

    .line 544
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mAdapter:Lcom/sonyericsson/music/landingpage/LandingPageAdapter;

    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mCategoryCursors:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->swapAllCategoryCursors(Ljava/util/HashMap;)V

    .line 545
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mCategoryCursors:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    const-string p1, "lp_swapping_cursors"

    .line 547
    invoke-static {p1}, Lcom/sonyericsson/music/debug/DebugTimer;->stop(Ljava/lang/String;)V

    const-string p1, "lp_cursors_swapped_until_draw"

    .line 548
    invoke-static {p1}, Lcom/sonyericsson/music/debug/DebugTimer;->start(Ljava/lang/String;)V

    .line 549
    iget p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mPendingLoaderCount:I

    if-nez p1, :cond_0

    .line 550
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 551
    new-instance v1, Lcom/sonyericsson/music/landingpage/LandingPageFragment$5;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/landingpage/LandingPageFragment$5;-><init>(Lcom/sonyericsson/music/landingpage/LandingPageFragment;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 564
    :cond_0
    iget p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mPendingLoaderCount:I

    if-gtz p1, :cond_3

    .line 565
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mSavedLayoutState:Landroid/os/Parcelable;

    if-eqz p1, :cond_1

    .line 566
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mSavedLayoutState:Landroid/os/Parcelable;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 567
    iput-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mSavedLayoutState:Landroid/os/Parcelable;

    .line 570
    :cond_1
    invoke-virtual {p2}, Lcom/sonyericsson/music/MusicActivity;->reportFullyDrawn()V

    .line 572
    invoke-direct {p0}, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->scheduleFinishStartup()V

    goto :goto_0

    .line 577
    :cond_2
    iget-object p2, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mAdapter:Lcom/sonyericsson/music/landingpage/LandingPageAdapter;

    if-eqz p2, :cond_3

    .line 578
    invoke-virtual {p1}, Landroidx/loader/content/Loader;->getId()I

    move-result p1

    invoke-virtual {p2, v0, p1}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->swapCategoryCursor(Landroid/database/Cursor;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 89
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 600
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mCategoryCursors:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroidx/loader/content/Loader;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mAdapter:Lcom/sonyericsson/music/landingpage/LandingPageAdapter;

    if-eqz v0, :cond_0

    .line 603
    invoke-virtual {p1}, Landroidx/loader/content/Loader;->getId()I

    move-result p1

    invoke-virtual {v0, v2, p1}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->swapCategoryCursor(Landroid/database/Cursor;I)V

    :cond_0
    return-void
.end method

.method public onMediaServiceConnected(Lcom/sonyericsson/music/player/PlayerController;)V
    .locals 2

    .line 641
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mPlayerController:Lcom/sonyericsson/music/player/PlayerController;

    .line 643
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 644
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 645
    iget-boolean p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mFirstStart:Z

    if-eqz p1, :cond_0

    .line 647
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mPlayerController:Lcom/sonyericsson/music/player/PlayerController;

    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerController;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->getCurrentTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 649
    invoke-static {}, Lcom/sonyericsson/music/RetainManager;->getInstance()Lcom/sonyericsson/music/RetainManager;

    move-result-object v0

    const-string v1, "playqueue_category_retain_position"

    .line 651
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 650
    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/music/RetainManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onMediaServiceDisconnected()V
    .locals 1

    const/4 v0, 0x0

    .line 659
    iput-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mPlayerController:Lcom/sonyericsson/music/player/PlayerController;

    return-void
.end method

.method public onNowPlayingInfoChanged(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V
    .locals 8

    .line 765
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mPlayerController:Lcom/sonyericsson/music/player/PlayerController;

    if-nez v0, :cond_0

    return-void

    .line 769
    :cond_0
    invoke-virtual {v0}, Lcom/sonyericsson/music/player/PlayerController;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/player/PlayerState;->getCurrentTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object v0

    if-nez p1, :cond_4

    const/4 p1, 0x0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 778
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object p1

    .line 779
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v0

    move-object v5, p1

    move v7, v0

    goto :goto_0

    :cond_1
    move-object v5, p1

    const/4 v7, 0x0

    .line 782
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mPlayerController:Lcom/sonyericsson/music/player/PlayerController;

    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerController;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->getLoadingState()Lcom/sonyericsson/music/player/PlayerState$LoadingState;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/music/player/PlayerState$LoadingState;->IDLE:Lcom/sonyericsson/music/player/PlayerState$LoadingState;

    if-eq p1, v0, :cond_2

    const/4 p1, 0x4

    goto :goto_1

    .line 785
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mPlayerController:Lcom/sonyericsson/music/player/PlayerController;

    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerController;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x2

    .line 788
    :goto_1
    new-instance v0, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

    const/4 v3, 0x0

    const/4 v4, -0x1

    new-instance v6, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;

    invoke-direct {v6, p1, v1}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;-><init>(IZ)V

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;-><init>(Landroid/net/Uri;ILandroid/net/Uri;Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;I)V

    move-object p1, v0

    .line 792
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mAdapter:Lcom/sonyericsson/music/landingpage/LandingPageAdapter;

    if-eqz v0, :cond_5

    .line 793
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->setNowPlayingInfo(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V

    :cond_5
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 401
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 403
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    .line 405
    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->getNowPlayingUpdater()Lcom/sonyericsson/music/NowPlayingUpdater;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/music/NowPlayingUpdater$ChangeType;->PLAY_CHANGE:Lcom/sonyericsson/music/NowPlayingUpdater$ChangeType;

    invoke-virtual {v1, p0, v2}, Lcom/sonyericsson/music/NowPlayingUpdater;->removeChangeListener(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfoListener;Lcom/sonyericsson/music/NowPlayingUpdater$ChangeType;)V

    .line 407
    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->getArtistInfoNotifier()Lcom/sonyericsson/music/ArtistInfoNotifier;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sonyericsson/music/ArtistInfoNotifier;->removeListener(Lcom/sonyericsson/music/ArtistInfoNotifier$ArtistChangeListener;)V

    .line 409
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mTracksTask:Lcom/sonyericsson/music/landingpage/LandingPageFragment$AllTracksTask;

    if-eqz v1, :cond_1

    .line 410
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 411
    invoke-static {}, Lcom/sonyericsson/music/RetainManager;->getInstance()Lcom/sonyericsson/music/RetainManager;

    move-result-object v0

    const-string v1, "retain_all_tracks_key"

    iget-object v2, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mTracksTask:Lcom/sonyericsson/music/landingpage/LandingPageFragment$AllTracksTask;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/music/RetainManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mTracksTask:Lcom/sonyericsson/music/landingpage/LandingPageFragment$AllTracksTask;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/RetainedAsyncTask;->cancelAndRemoveTask()V

    .line 415
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mTracksTask:Lcom/sonyericsson/music/landingpage/LandingPageFragment$AllTracksTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;->setListener(Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask$RetainedAsyncTaskListener;)V

    .line 416
    iput-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mTracksTask:Lcom/sonyericsson/music/landingpage/LandingPageFragment$AllTracksTask;

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 370
    invoke-super {p0}, Lcom/sonyericsson/music/library/BaseFragment;->onResume()V

    .line 372
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    .line 374
    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->getNowPlayingUpdater()Lcom/sonyericsson/music/NowPlayingUpdater;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/music/NowPlayingUpdater$ChangeType;->PLAY_CHANGE:Lcom/sonyericsson/music/NowPlayingUpdater$ChangeType;

    invoke-virtual {v1, p0, v2}, Lcom/sonyericsson/music/NowPlayingUpdater;->addChangeListener(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfoListener;Lcom/sonyericsson/music/NowPlayingUpdater$ChangeType;)V

    .line 376
    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->getArtistInfoNotifier()Lcom/sonyericsson/music/ArtistInfoNotifier;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sonyericsson/music/ArtistInfoNotifier;->addListener(Lcom/sonyericsson/music/ArtistInfoNotifier$ArtistChangeListener;)Lcom/sonyericsson/music/common/ArtistInfo;

    move-result-object v1

    .line 377
    invoke-virtual {p0, v1}, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->onArtistInfoChanged(Lcom/sonyericsson/music/common/ArtistInfo;)V

    .line 379
    invoke-static {}, Lcom/sonyericsson/music/RetainManager;->getInstance()Lcom/sonyericsson/music/RetainManager;

    move-result-object v1

    const-string v2, "retain_all_tracks_key"

    invoke-virtual {v1, v2}, Lcom/sonyericsson/music/RetainManager;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/landingpage/LandingPageFragment$AllTracksTask;

    iput-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mTracksTask:Lcom/sonyericsson/music/landingpage/LandingPageFragment$AllTracksTask;

    .line 380
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mTracksTask:Lcom/sonyericsson/music/landingpage/LandingPageFragment$AllTracksTask;

    if-eqz v1, :cond_1

    .line 381
    invoke-virtual {v1}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mTracksTask:Lcom/sonyericsson/music/landingpage/LandingPageFragment$AllTracksTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;->setListener(Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask$RetainedAsyncTaskListener;)V

    .line 383
    iput-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mTracksTask:Lcom/sonyericsson/music/landingpage/LandingPageFragment$AllTracksTask;

    goto :goto_0

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mTracksTask:Lcom/sonyericsson/music/landingpage/LandingPageFragment$AllTracksTask;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;->setListener(Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask$RetainedAsyncTaskListener;)V

    goto :goto_0

    .line 388
    :cond_1
    new-instance v1, Lcom/sonyericsson/music/landingpage/LandingPageFragment$4;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/landingpage/LandingPageFragment$4;-><init>(Lcom/sonyericsson/music/landingpage/LandingPageFragment;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/MusicActivity;->runAfterStartup(Lcom/sonyericsson/music/MusicActivity$StartupTask;)V

    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 686
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 688
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mAdapter:Lcom/sonyericsson/music/landingpage/LandingPageAdapter;

    if-eqz v0, :cond_0

    .line 689
    sget-object v1, Lcom/sonyericsson/music/landingpage/LandingPageFragmentLifecycleStateChange$LifecycleState;->ON_SAVE_INSTANCE_STATE:Lcom/sonyericsson/music/landingpage/LandingPageFragmentLifecycleStateChange$LifecycleState;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->notifyParentFragmentLifecycleChange(Lcom/sonyericsson/music/landingpage/LandingPageFragmentLifecycleStateChange$LifecycleState;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 693
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    const-string v1, "key_layout_state"

    .line 695
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 694
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 696
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mSavedLayoutState:Landroid/os/Parcelable;

    if-eqz v0, :cond_2

    const-string v1, "key_layout_state"

    .line 697
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 700
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mArtistImageView:Lcom/sonyericsson/music/landingpage/LandingPageArtistView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    const-string v1, "key_header_image_position"

    .line 701
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v0, "key_track_count"

    .line 703
    iget v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mLocalTracksCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .line 670
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "pref_key_quick_play_type"

    .line 671
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 673
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->updateQuickPlayButton(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string v0, "pref_key_personal_data_collection_consent"

    .line 676
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 677
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mAdapter:Lcom/sonyericsson/music/landingpage/LandingPageAdapter;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mPersonalDataCollectionCard:Lcom/sonyericsson/music/landingpage/card/LandingPageCard;

    if-eqz p2, :cond_1

    .line 678
    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->removeCard(Lcom/sonyericsson/music/landingpage/card/LandingPageCard;)V

    const/4 p1, 0x0

    .line 679
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mPersonalDataCollectionCard:Lcom/sonyericsson/music/landingpage/card/LandingPageCard;

    :cond_1
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 354
    invoke-super {p0}, Lcom/sonyericsson/music/library/BaseFragment;->onStart()V

    .line 355
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    .line 356
    invoke-virtual {v0, p0}, Lcom/sonyericsson/music/MusicActivity;->addMusicServiceConnectedListener(Lcom/sonyericsson/music/MediaServiceConnection;)V

    .line 357
    new-instance v0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$ScrollListener;

    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mToolbarScroller:Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;

    invoke-direct {v0, v1}, Lcom/sonyericsson/music/landingpage/LandingPageFragment$ScrollListener;-><init>(Lcom/sonyericsson/music/landingpage/LandingPageFragment$TransparentHeaderToolbarScroller;)V

    iput-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mScrollListener:Lcom/sonyericsson/music/landingpage/LandingPageFragment$ScrollListener;

    .line 358
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mScrollListener:Lcom/sonyericsson/music/landingpage/LandingPageFragment$ScrollListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 363
    invoke-super {p0}, Lcom/sonyericsson/music/library/BaseFragment;->onStop()V

    .line 364
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/music/MusicActivity;->removeMusicServiceConnectedListener(Lcom/sonyericsson/music/MediaServiceConnection;)V

    .line 365
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mScrollListener:Lcom/sonyericsson/music/landingpage/LandingPageFragment$ScrollListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public onStoragePermissionChanged(Z)V
    .locals 2

    .line 328
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->loadData()V

    :cond_0
    if-eqz p1, :cond_1

    .line 335
    invoke-static {}, Lcom/sonyericsson/music/landingpage/LandingPageArtUriCache;->getInstance()Lcom/sonyericsson/music/landingpage/LandingPageArtUriCache;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/LandingPageArtUriCache;->clearCache()V

    .line 336
    invoke-direct {p0}, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->scheduleRefreshPlaylistArt()V

    if-eqz v0, :cond_1

    .line 338
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 340
    new-instance p1, Lcom/sonyericsson/music/landingpage/LandingPageFragment$3;

    invoke-direct {p1, p0}, Lcom/sonyericsson/music/landingpage/LandingPageFragment$3;-><init>(Lcom/sonyericsson/music/landingpage/LandingPageFragment;)V

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/MusicActivity;->runAfterStartup(Lcom/sonyericsson/music/MusicActivity$StartupTask;)V

    :cond_1
    return-void
.end method

.method public onTaskDone(Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, "retain_all_tracks_key"

    .line 1032
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/RetainedAsyncTask;->getRetainKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1033
    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_0

    .line 1034
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->updateTrackAvailability(I)V

    .line 1036
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mTracksTask:Lcom/sonyericsson/music/landingpage/LandingPageFragment$AllTracksTask;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 1037
    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;->setListener(Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask$RetainedAsyncTaskListener;)V

    .line 1038
    iput-object p2, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mTracksTask:Lcom/sonyericsson/music/landingpage/LandingPageFragment$AllTracksTask;

    :cond_1
    return-void
.end method

.method public onTaskPreExecute(Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;)V
    .locals 0

    return-void
.end method

.method public onTopPaddingClick()V
    .locals 7

    .line 930
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 931
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mArtistImageView:Lcom/sonyericsson/music/landingpage/LandingPageArtistView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 932
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mArtistImageView:Lcom/sonyericsson/music/landingpage/LandingPageArtistView;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/common/ArtistInfo;

    .line 934
    invoke-virtual {v1}, Lcom/sonyericsson/music/common/ArtistInfo;->getArtistUri()Landroid/net/Uri;

    move-result-object v2

    .line 935
    invoke-virtual {v1}, Lcom/sonyericsson/music/common/ArtistInfo;->getArtistArtUri()Landroid/net/Uri;

    move-result-object v3

    .line 936
    invoke-virtual {v1}, Lcom/sonyericsson/music/common/ArtistInfo;->getArtistName()Ljava/lang/String;

    move-result-object v1

    .line 938
    sget-object v4, Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;->ARTIST_ID:Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;

    new-instance v5, Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    const-string v6, "LandingPageFragment"

    invoke-direct {v5, v6}, Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v2, v1, v3, v5}, Lcom/sonyericsson/music/library/artist/ArtistFragment;->newInstance(Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Lcom/sonyericsson/music/library/artist/ArtistFragment;

    move-result-object v1

    .line 942
    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->getMusicFragmentManager()Lcom/sonyericsson/music/MusicFragmentManager;

    move-result-object v0

    const-string v2, "artist"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonyericsson/music/MusicFragmentManager;->openFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method

.method updateTrackAvailability(I)V
    .locals 4

    .line 948
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 949
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    .line 951
    iput p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mLocalTracksCount:I

    .line 953
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->updateQuickPlayButton(Landroid/content/Context;)V

    .line 955
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mAdapter:Lcom/sonyericsson/music/landingpage/LandingPageAdapter;

    if-eqz p1, :cond_3

    .line 956
    iget v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mLocalTracksCount:I

    const/16 v2, 0xf

    const v3, 0x7f090160

    if-le v1, v2, :cond_1

    .line 958
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mEmptyCard:Lcom/sonyericsson/music/landingpage/card/LandingPageCard;

    if-eqz v0, :cond_0

    .line 959
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->removeCard(Lcom/sonyericsson/music/landingpage/card/LandingPageCard;)V

    const/4 p1, 0x0

    .line 960
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mEmptyCard:Lcom/sonyericsson/music/landingpage/card/LandingPageCard;

    .line 962
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 964
    :cond_1
    invoke-static {v0}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->isEmptyPromoDismissed(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 965
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mEmptyCard:Lcom/sonyericsson/music/landingpage/card/LandingPageCard;

    if-nez p1, :cond_3

    .line 966
    new-instance p1, Lcom/sonyericsson/music/landingpage/card/LandingPageEmptyCard;

    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mAdapter:Lcom/sonyericsson/music/landingpage/LandingPageAdapter;

    invoke-direct {p1, v0, v1}, Lcom/sonyericsson/music/landingpage/card/LandingPageEmptyCard;-><init>(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/landingpage/card/LandingPageCard$AdapterCardListener;)V

    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mEmptyCard:Lcom/sonyericsson/music/landingpage/card/LandingPageCard;

    .line 967
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mAdapter:Lcom/sonyericsson/music/landingpage/LandingPageAdapter;

    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mEmptyCard:Lcom/sonyericsson/music/landingpage/card/LandingPageCard;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->addCard(Lcom/sonyericsson/music/landingpage/card/LandingPageCard;)V

    goto :goto_0

    .line 970
    :cond_2
    iget p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mLocalTracksCount:I

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mAdapter:Lcom/sonyericsson/music/landingpage/LandingPageAdapter;

    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->categoriesAvailable()Z

    move-result p1

    if-nez p1, :cond_3

    .line 971
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method updateTrackCountDependentUi()V
    .locals 3

    .line 302
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mTracksTask:Lcom/sonyericsson/music/landingpage/LandingPageFragment$AllTracksTask;

    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/RetainedAsyncTask;->cancelAndRemoveTask()V

    .line 304
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mTracksTask:Lcom/sonyericsson/music/landingpage/LandingPageFragment$AllTracksTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;->setListener(Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask$RetainedAsyncTaskListener;)V

    .line 305
    iput-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mTracksTask:Lcom/sonyericsson/music/landingpage/LandingPageFragment$AllTracksTask;

    .line 308
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 309
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 310
    new-instance v0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$AllTracksTask;

    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v1

    const-string v2, "retain_all_tracks_key"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/music/landingpage/LandingPageFragment$AllTracksTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mTracksTask:Lcom/sonyericsson/music/landingpage/LandingPageFragment$AllTracksTask;

    .line 311
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mTracksTask:Lcom/sonyericsson/music/landingpage/LandingPageFragment$AllTracksTask;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;->setListener(Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask$RetainedAsyncTaskListener;)V

    .line 312
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mTracksTask:Lcom/sonyericsson/music/landingpage/LandingPageFragment$AllTracksTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method
