.class public Lcom/sonyericsson/music/fullplayer/PlayerFragment;
.super Lcom/sonyericsson/music/library/BaseFragment;
.source "PlayerFragment.java"

# interfaces
.implements Lcom/sonyericsson/music/ui/MusicLayout$OnInsetsListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sonyericsson/music/fullplayer/SwipeView$OnScrollListener;
.implements Lcom/sonyericsson/music/MusicActivity$ArtResetListener;
.implements Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/fullplayer/PlayerFragment$ScreenReceiver;,
        Lcom/sonyericsson/music/fullplayer/PlayerFragment$ToggleFavoriteTask;,
        Lcom/sonyericsson/music/fullplayer/PlayerFragment$NfcCallbacks;
    }
.end annotation


# static fields
.field private static final ARG_LAUNCHED_INTO:Ljava/lang/String; = "launched-into"

.field private static final ARG_SHARED_ELEMENT_BITMAP:Ljava/lang/String; = "shared-element-bitmap"

.field private static ARG_SHARED_ELEMENT_IS_DEFAULT_ART:Ljava/lang/String; = "shared-element-is-default-art"

.field private static final ARG_SHARED_ELEMENT_WINDOW_RECT:Ljava/lang/String; = "shared-element-window-loc"

.field private static final ENTER_TRANSLATION_DY:F = 50.0f

.field private static final KEY_PREVIOUS_BLUR:Ljava/lang/String; = "key_previous_blur"

.field private static final METADATA_REQUEST_CODE:I = 0x1

.field private static final SHOW_LOADING_PROGRESS_DELAY:J = 0x2eeL

.field public static final TAG:Ljava/lang/String; = "PlayerFragment"

.field private static final X:I = 0x0

.field private static final Y:I = 0x1


# instance fields
.field private mAlbumArtContainer:Landroid/view/View;

.field private mArtPagerAdapter:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;

.field private mArtPagerView:Lcom/sonyericsson/music/fullplayer/ArtPagerView;

.field private mBackPlate:Lcom/sonyericsson/music/fullplayer/BackPlateView;

.field private mControlsContainer:Landroid/view/View;

.field private mEnterTranslationY:F

.field private mIsInteractive:Z

.field private mLoadingProgress:Landroid/widget/ProgressBar;

.field private mMetadataView:Lcom/sonyericsson/music/fullplayer/MetadataView;

.field private mNextButton:Landroid/widget/ImageButton;

.field private final mNfcCallbacks:Lcom/sonyericsson/music/fullplayer/PlayerFragment$NfcCallbacks;

.field private mPlayPauseButton:Lcom/sonyericsson/music/ui/PlayPauseButton;

.field private final mPlayerStateListener:Lcom/sonyericsson/music/player/PlayerStateListener;

.field private mPrevButton:Landroid/widget/ImageButton;

.field private mRepeatButton:Lcom/sonyericsson/music/fullplayer/RepeatButton;

.field private mRootView:Landroid/view/ViewGroup;

.field private mRunEnterAnimation:Z

.field private mRunExitAnimation:Z

.field private mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekBarContainer:Landroid/widget/LinearLayout;

.field private mSeekHandler:Lcom/sonyericsson/music/fullplayer/SeekHandler;

.field private final mShowLoadingProgressDelayed:Ljava/lang/Runnable;

.field private mShuffleButton:Lcom/sonyericsson/music/fullplayer/ShuffleButton;

.field private mSingletonToast:Landroid/widget/Toast;

.field private mSwipeView:Lcom/sonyericsson/music/fullplayer/SwipeView;

.field private mToggleFavoriteTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mVisualizerAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 108
    invoke-direct {p0}, Lcom/sonyericsson/music/library/BaseFragment;-><init>()V

    .line 137
    new-instance v0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment$1;-><init>(Lcom/sonyericsson/music/fullplayer/PlayerFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mPlayerStateListener:Lcom/sonyericsson/music/player/PlayerStateListener;

    .line 220
    new-instance v0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$NfcCallbacks;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment$NfcCallbacks;-><init>(Lcom/sonyericsson/music/fullplayer/PlayerFragment;Lcom/sonyericsson/music/fullplayer/PlayerFragment$1;)V

    iput-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mNfcCallbacks:Lcom/sonyericsson/music/fullplayer/PlayerFragment$NfcCallbacks;

    .line 222
    new-instance v0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment$2;-><init>(Lcom/sonyericsson/music/fullplayer/PlayerFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mShowLoadingProgressDelayed:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/fullplayer/PlayerFragment;)Lcom/sonyericsson/music/ui/PlayPauseButton;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mPlayPauseButton:Lcom/sonyericsson/music/ui/PlayPauseButton;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/music/fullplayer/PlayerFragment;Lcom/sonyericsson/music/player/PlayerState;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->updateControlsEnabledState(Lcom/sonyericsson/music/player/PlayerState;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sonyericsson/music/fullplayer/PlayerFragment;)Landroid/widget/ProgressBar;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mLoadingProgress:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/sonyericsson/music/fullplayer/PlayerFragment;Landroid/graphics/Rect;Landroid/graphics/Bitmap;)Landroid/animation/Animator;
    .locals 0

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->createEnterAnimator(Landroid/graphics/Rect;Landroid/graphics/Bitmap;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/sonyericsson/music/fullplayer/PlayerFragment;)Landroid/view/ViewGroup;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$1500(FFF)F
    .locals 0

    .line 108
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->lerp(FFF)F

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/sonyericsson/music/fullplayer/PlayerFragment;)Landroid/view/View;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mAlbumArtContainer:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/sonyericsson/music/fullplayer/PlayerFragment;)Lcom/sonyericsson/music/fullplayer/ArtPagerView;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mArtPagerView:Lcom/sonyericsson/music/fullplayer/ArtPagerView;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/sonyericsson/music/fullplayer/PlayerFragment;)Lcom/sonyericsson/music/fullplayer/BackPlateView;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mBackPlate:Lcom/sonyericsson/music/fullplayer/BackPlateView;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/sonyericsson/music/fullplayer/PlayerFragment;)Lcom/sonyericsson/music/fullplayer/MetadataView;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mMetadataView:Lcom/sonyericsson/music/fullplayer/MetadataView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/music/fullplayer/PlayerFragment;Lcom/sonyericsson/music/player/PlayerState$LoadingState;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->updateLoadingProgress(Lcom/sonyericsson/music/player/PlayerState$LoadingState;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/sonyericsson/music/fullplayer/PlayerFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mSeekBarContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/sonyericsson/music/fullplayer/PlayerFragment;)Landroid/view/View;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mControlsContainer:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/sonyericsson/music/fullplayer/PlayerFragment;Z)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->hideMiniPlayerArt(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/sonyericsson/music/fullplayer/PlayerFragment;)Lcom/sonyericsson/music/ToolbarControl;
    .locals 0

    .line 108
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getToolbarControl()Lcom/sonyericsson/music/ToolbarControl;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2400(Lcom/sonyericsson/music/fullplayer/PlayerFragment;)Lcom/sonyericsson/music/ToolbarControl;
    .locals 0

    .line 108
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getToolbarControl()Lcom/sonyericsson/music/ToolbarControl;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2500(Lcom/sonyericsson/music/fullplayer/PlayerFragment;)F
    .locals 0

    .line 108
    iget p0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mEnterTranslationY:F

    return p0
.end method

.method static synthetic access$2600(Lcom/sonyericsson/music/fullplayer/PlayerFragment;)Lcom/sonyericsson/music/player/PlayerController;
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2700(Lcom/sonyericsson/music/fullplayer/PlayerFragment;)Lcom/sonyericsson/music/player/PlayerState;
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2800(Lcom/sonyericsson/music/fullplayer/PlayerFragment;I)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->updateToast(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/music/fullplayer/PlayerFragment;Lcom/sonyericsson/music/player/PlayerState;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->updateTrack(Lcom/sonyericsson/music/player/PlayerState;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/music/fullplayer/PlayerFragment;)Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mArtPagerAdapter:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sonyericsson/music/fullplayer/PlayerFragment;Lcom/sonyericsson/music/player/PlayerState;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->updateRepeatMode(Lcom/sonyericsson/music/player/PlayerState;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/music/fullplayer/PlayerFragment;)Lcom/sonyericsson/music/fullplayer/ShuffleButton;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mShuffleButton:Lcom/sonyericsson/music/fullplayer/ShuffleButton;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sonyericsson/music/fullplayer/PlayerFragment;)Z
    .locals 0

    .line 108
    iget-boolean p0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mIsInteractive:Z

    return p0
.end method

.method static synthetic access$702(Lcom/sonyericsson/music/fullplayer/PlayerFragment;Z)Z
    .locals 0

    .line 108
    iput-boolean p1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mIsInteractive:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sonyericsson/music/fullplayer/PlayerFragment;)Lcom/sonyericsson/music/fullplayer/SeekHandler;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mSeekHandler:Lcom/sonyericsson/music/fullplayer/SeekHandler;

    return-object p0
.end method

.method static synthetic access$900(Lcom/sonyericsson/music/fullplayer/PlayerFragment;Lcom/sonyericsson/music/player/PlayerState;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->updateShuffle(Lcom/sonyericsson/music/player/PlayerState;)V

    return-void
.end method

.method private applySystemUiPadding(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 3

    .line 711
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->getToolbarHeight()I

    move-result v0

    .line 713
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 714
    iget-object v1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mArtPagerView:Lcom/sonyericsson/music/fullplayer/ArtPagerView;

    iget v2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->setVignetteHeight(I)V

    const/4 v0, 0x0

    .line 716
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/music/common/UIUtils;->getDisplayAspectRatio(Landroid/content/Context;)F

    move-result v1

    const v2, 0x40155555

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    int-to-float v0, v0

    .line 718
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700b0

    .line 719
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    .line 722
    :cond_0
    iget v1, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 724
    :cond_1
    :goto_0
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v1, v0, v2, p2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private canMinimize()Z
    .locals 2

    .line 698
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "shared-element-bitmap"

    .line 699
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "shared-element-window-loc"

    .line 700
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "launched-into"

    .line 701
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static createCurvedPathAnimator(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/animation/ValueAnimator;
    .locals 13

    .line 598
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v9

    .line 599
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v10

    const/4 v0, 0x2

    if-eqz v9, :cond_1

    if-nez v10, :cond_0

    goto :goto_0

    .line 606
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v9

    div-float v3, v1, v2

    .line 607
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float v4, v1, v2

    .line 608
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    int-to-float v5, v10

    div-float v6, v1, v5

    .line 609
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float v7, v1, v5

    .line 611
    invoke-static {p1, p2}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->getCurvedPathMeasure(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/PathMeasure;

    move-result-object p1

    .line 612
    invoke-virtual {p1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result p2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v2, v1

    .line 614
    invoke-virtual {p0, v2}, Landroid/view/View;->setPivotX(F)V

    div-float/2addr v5, v1

    .line 615
    invoke-virtual {p0, v5}, Landroid/view/View;->setPivotY(F)V

    .line 617
    new-array v8, v0, [F

    .line 618
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v11

    .line 619
    new-instance v12, Lcom/sonyericsson/music/fullplayer/PlayerFragment$8;

    move-object v0, v12

    move-object v1, p0

    move v2, v3

    move v3, v4

    move v4, v6

    move v5, v7

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v10}, Lcom/sonyericsson/music/fullplayer/PlayerFragment$8;-><init>(Landroid/view/View;FFFFLandroid/graphics/PathMeasure;F[FII)V

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 633
    new-instance p0, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;

    invoke-direct {p0}, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;-><init>()V

    invoke-virtual {v11, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v11

    .line 603
    :cond_1
    :goto_0
    new-array p0, v0, [F

    fill-array-data p0, :array_1

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private createEnterAnimator(Landroid/graphics/Rect;Landroid/graphics/Bitmap;)Landroid/animation/Animator;
    .locals 8

    .line 531
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mAlbumArtContainer:Landroid/view/View;

    invoke-static {v0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->getViewRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 536
    iget-object v1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mAlbumArtContainer:Landroid/view/View;

    new-instance v2, Lcom/sonyericsson/music/fullplayer/CenterCropDrawable;

    invoke-direct {v2, p2}, Lcom/sonyericsson/music/fullplayer/CenterCropDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 537
    iget-object p2, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mAlbumArtContainer:Landroid/view/View;

    new-instance v1, Lcom/sonyericsson/music/fullplayer/PlayerFragment$5;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment$5;-><init>(Lcom/sonyericsson/music/fullplayer/PlayerFragment;)V

    const-wide/16 v2, 0x384

    invoke-virtual {p2, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 544
    iget-object p2, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mRootView:Landroid/view/ViewGroup;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 p2, 0x4

    .line 545
    new-array p2, p2, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mAlbumArtContainer:Landroid/view/View;

    .line 546
    invoke-static {v2, p1, v0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->createCurvedPathAnimator(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v2, 0xfa

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p2, v0

    iget-object v3, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mMetadataView:Lcom/sonyericsson/music/fullplayer/MetadataView;

    const-wide/16 v4, 0x6e

    const-wide/16 v6, 0xfa

    move-object v2, p0

    .line 547
    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->createEnterAnimator(Landroid/view/View;JJ)Landroid/animation/Animator;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, p2, v0

    iget-object v3, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mSeekBarContainer:Landroid/widget/LinearLayout;

    const-wide/16 v4, 0x8c

    .line 548
    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->createEnterAnimator(Landroid/view/View;JJ)Landroid/animation/Animator;

    move-result-object p1

    aput-object p1, p2, v1

    iget-object v3, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mControlsContainer:Landroid/view/View;

    const-wide/16 v4, 0xaa

    .line 549
    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->createEnterAnimator(Landroid/view/View;JJ)Landroid/animation/Animator;

    move-result-object p1

    const/4 v0, 0x3

    aput-object p1, p2, v0

    .line 545
    invoke-static {p2}, Lcom/sonyericsson/music/common/UIUtils;->playTogether([Landroid/animation/Animator;)Landroid/animation/AnimatorSet;

    move-result-object p1

    .line 551
    new-instance p2, Lcom/sonyericsson/music/fullplayer/PlayerFragment$6;

    invoke-direct {p2, p0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment$6;-><init>(Lcom/sonyericsson/music/fullplayer/PlayerFragment;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1
.end method

.method private createEnterAnimator(Landroid/view/View;JJ)Landroid/animation/Animator;
    .locals 2

    const/4 v0, 0x0

    .line 638
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 639
    iget v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mEnterTranslationY:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    const/4 v0, 0x2

    .line 640
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 641
    new-instance v1, Lcom/sonyericsson/music/fullplayer/PlayerFragment$9;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment$9;-><init>(Lcom/sonyericsson/music/fullplayer/PlayerFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 649
    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 650
    invoke-virtual {v0, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 651
    new-instance p1, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;

    invoke-direct {p1}, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;-><init>()V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private createExitAnimator(Landroid/graphics/Rect;)Landroid/animation/Animator;
    .locals 4

    .line 562
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mAlbumArtContainer:Landroid/view/View;

    invoke-static {v0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->getViewRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 564
    iget-object v1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mRootView:Landroid/view/ViewGroup;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 566
    iget-object v1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mAlbumArtContainer:Landroid/view/View;

    invoke-static {v1, v0, p1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->createCurvedPathAnimator(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 567
    new-instance v0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$7;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment$7;-><init>(Lcom/sonyericsson/music/fullplayer/PlayerFragment;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0x15e

    .line 591
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private createFallbackExitAnimator()Landroid/animation/ValueAnimator;
    .locals 2

    const/4 v0, 0x2

    .line 517
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 518
    new-instance v1, Lcom/sonyericsson/music/fullplayer/PlayerFragment$4;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment$4;-><init>(Lcom/sonyericsson/music/fullplayer/PlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static getCurvedPathMeasure(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/PathMeasure;
    .locals 3

    .line 1180
    new-instance v0, Landroidx/transition/ArcMotion;

    invoke-direct {v0}, Landroidx/transition/ArcMotion;-><init>()V

    .line 1181
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    int-to-float p1, p1

    .line 1180
    invoke-virtual {v0, v1, p0, v2, p1}, Landroidx/transition/ArcMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object p0

    .line 1182
    new-instance p1, Landroid/graphics/PathMeasure;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    return-object p1
.end method

.method private getPlayerController()Lcom/sonyericsson/music/player/PlayerController;
    .locals 1

    .line 925
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 927
    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getPlayerState()Lcom/sonyericsson/music/player/PlayerState;
    .locals 1

    .line 934
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/player/PlayerController;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object v0

    return-object v0
.end method

.method private getToolbarHeight()I
    .locals 2

    .line 728
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f090156

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 729
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 731
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 732
    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 734
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method private static getViewRect(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7

    .line 1166
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 1167
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x2

    .line 1168
    new-array v2, v2, [I

    .line 1169
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1170
    new-instance p0, Landroid/graphics/Rect;

    const/4 v3, 0x0

    aget v4, v2, v3

    const/4 v5, 0x1

    aget v6, v2, v5

    aget v3, v2, v3

    add-int/2addr v3, v0

    aget v0, v2, v5

    add-int/2addr v0, v1

    invoke-direct {p0, v4, v6, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method private hideMiniPlayerArt(Z)V
    .locals 2

    .line 656
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 659
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f090122

    .line 660
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MiniPlayerFragment;

    if-eqz v0, :cond_0

    .line 662
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/MiniPlayerFragment;->hidePlayerArt(Z)V

    :cond_0
    return-void
.end method

.method private launchPlayQueue()V
    .locals 5

    .line 455
    invoke-static {}, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->newInstance()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 456
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/music/MusicActivity;->getMusicFragmentManager()Lcom/sonyericsson/music/MusicFragmentManager;

    move-result-object v1

    const-string v2, "playqueue"

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 457
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/sonyericsson/music/MusicFragmentManager;->openFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private launchVisualizer(Landroid/content/Context;)V
    .locals 1

    .line 461
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.sonyericsson.musicvisualizer.intent.action.VISUALIZER_LAUNCH"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v0, 0xd

    .line 463
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static lerp(FFF)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float v0, v0, p0

    mul-float p2, p2, p1

    add-float/2addr v0, p2

    return v0
.end method

.method private loadState(Lcom/sonyericsson/music/player/PlayerState;)V
    .locals 3

    .line 844
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mPlayPauseButton:Lcom/sonyericsson/music/ui/PlayPauseButton;

    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->isPlaying()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/music/ui/PlayPauseButton;->setPlaying(ZZ)V

    .line 845
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->updateControlsEnabledState(Lcom/sonyericsson/music/player/PlayerState;)V

    .line 846
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->updateTrack(Lcom/sonyericsson/music/player/PlayerState;)V

    .line 847
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->updateRepeatMode(Lcom/sonyericsson/music/player/PlayerState;)V

    .line 848
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->updateShuffle(Lcom/sonyericsson/music/player/PlayerState;)V

    .line 849
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mSeekHandler:Lcom/sonyericsson/music/fullplayer/SeekHandler;

    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->getPlaybackPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/fullplayer/SeekHandler;->setPlaybackPosition(I)V

    .line 850
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mArtPagerAdapter:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->swapState(Lcom/sonyericsson/music/player/PlayerState;)V

    .line 851
    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->getLoadingState()Lcom/sonyericsson/music/player/PlayerState$LoadingState;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->updateLoadingProgress(Lcom/sonyericsson/music/player/PlayerState$LoadingState;)V

    return-void
.end method

.method public static newInstance(Landroid/graphics/Rect;Landroid/graphics/Bitmap;Z)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 240
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "shared-element-window-loc"

    .line 241
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "shared-element-bitmap"

    .line 242
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 243
    sget-object p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->ARG_SHARED_ELEMENT_IS_DEFAULT_ART:Ljava/lang/String;

    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 244
    new-instance p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;

    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;-><init>()V

    .line 245
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public static newInstance(Z)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 250
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "launched-into"

    .line 252
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 253
    new-instance p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;

    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;-><init>()V

    .line 254
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method private nextRepeatMode(I)I
    .locals 3

    packed-switch p1, :pswitch_data_0

    .line 1083
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown repeat mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 p1, 0x0

    return p1

    :pswitch_1
    const/4 p1, 0x2

    return p1

    :pswitch_2
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onTrackOptionAddTo(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/common/Track;)V
    .locals 2

    .line 938
    invoke-virtual {p2}, Lcom/sonyericsson/music/common/Track;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 939
    invoke-static {p1, v0, p2, v1, v0}, Lcom/sonyericsson/music/common/TrackActions;->addToDialog(Lcom/sonyericsson/music/MusicActivity;ZLjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private onTrackOptionAlbum(Landroid/app/Activity;Lcom/sonyericsson/music/common/Track;)V
    .locals 8

    .line 959
    invoke-virtual {p2}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 964
    :cond_0
    invoke-virtual {p2}, Lcom/sonyericsson/music/common/Track;->getAlbum()Ljava/lang/String;

    move-result-object v0

    .line 963
    invoke-static {p1, v0}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownAlbumWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 966
    invoke-virtual {p2}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    new-instance v7, Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    const-string p1, "PlayerFragment"

    invoke-direct {v7, p1}, Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;-><init>(Ljava/lang/String;)V

    invoke-static/range {v1 .. v7}, Lcom/sonyericsson/music/library/AlbumFragment;->newInstance(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Lcom/sonyericsson/music/library/AlbumFragment;

    move-result-object p1

    .line 969
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonyericsson/music/MusicActivity;->getMusicFragmentManager()Lcom/sonyericsson/music/MusicFragmentManager;

    move-result-object p2

    const-string v0, "album"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 970
    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/sonyericsson/music/MusicFragmentManager;->openFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private onTrackOptionArtist(Landroid/app/Activity;Lcom/sonyericsson/music/common/Track;)V
    .locals 4

    .line 943
    invoke-virtual {p2}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 947
    :cond_0
    invoke-virtual {p2}, Lcom/sonyericsson/music/common/Track;->getArtist()Ljava/lang/String;

    move-result-object v0

    .line 946
    invoke-static {p1, v0}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownArtistWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 949
    sget-object v0, Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;->TRACK_ID:Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;

    .line 950
    invoke-virtual {p2}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object p2

    const/4 v1, 0x0

    new-instance v2, Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    const-string v3, "PlayerFragment"

    invoke-direct {v2, v3}, Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;-><init>(Ljava/lang/String;)V

    .line 949
    invoke-static {v0, p2, p1, v1, v2}, Lcom/sonyericsson/music/library/artist/ArtistFragment;->newInstance(Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Lcom/sonyericsson/music/library/artist/ArtistFragment;

    move-result-object p1

    .line 954
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonyericsson/music/MusicActivity;->getMusicFragmentManager()Lcom/sonyericsson/music/MusicFragmentManager;

    move-result-object p2

    const-string v0, "artist"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 955
    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/sonyericsson/music/MusicFragmentManager;->openFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private onTrackOptionEditMusicInfo(Lcom/sonyericsson/music/common/Track;)V
    .locals 2

    .line 978
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getId()J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-static {p0, v0, v1, p1}, Lcom/sonyericsson/music/common/TrackActions;->launchEditMusicInfoWithResult(Landroidx/fragment/app/Fragment;JI)V

    return-void
.end method

.method private onTrackOptionInfinite(Landroid/app/Activity;Lcom/sonyericsson/music/common/Track;)V
    .locals 0

    .line 982
    invoke-static {p1, p2}, Lcom/sonyericsson/music/infinite/PluginSelectionActivity;->start(Landroid/app/Activity;Lcom/sonyericsson/music/common/Track;)V

    return-void
.end method

.method private onTrackOptionShare(Landroid/app/Activity;Lcom/sonyericsson/music/common/Track;)V
    .locals 2

    .line 974
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2}, Lcom/sonyericsson/music/common/Track;->getId()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/sonyericsson/music/common/Sender;->sendSingleFile(Landroid/content/Context;J)V

    return-void
.end method

.method private registerNfc(Landroid/app/Activity;)V
    .locals 3

    .line 1106
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1109
    iget-object v1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mNfcCallbacks:Lcom/sonyericsson/music/fullplayer/PlayerFragment$NfcCallbacks;

    invoke-virtual {v0, v1, p1}, Landroid/nfc/NfcAdapter;->setBeamPushUrisCallback(Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;Landroid/app/Activity;)V

    .line 1110
    iget-object v1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mNfcCallbacks:Lcom/sonyericsson/music/fullplayer/PlayerFragment$NfcCallbacks;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, v2}, Landroid/nfc/NfcAdapter;->setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method private registerPlayerStateListener()V
    .locals 2

    .line 279
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mPlayerStateListener:Lcom/sonyericsson/music/player/PlayerStateListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/player/PlayerController;->registerPlayerStateListener(Lcom/sonyericsson/music/player/PlayerStateListener;)V

    return-void
.end method

.method private repeatModeToastText(I)I
    .locals 3

    packed-switch p1, :pswitch_data_0

    .line 1060
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown repeat mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const p1, 0x7f100279

    return p1

    :pswitch_1
    const p1, 0x7f100277

    return p1

    :pswitch_2
    const p1, 0x7f100278

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private safeSetVisible(Landroid/view/Menu;IZ)V
    .locals 0

    .line 406
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 408
    invoke-interface {p1, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method private setControlsEnabled(Z)V
    .locals 7

    const/4 v0, 0x6

    .line 887
    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mPlayPauseButton:Lcom/sonyericsson/music/ui/PlayPauseButton;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mNextButton:Landroid/widget/ImageButton;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mPrevButton:Landroid/widget/ImageButton;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mShuffleButton:Lcom/sonyericsson/music/fullplayer/ShuffleButton;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mRepeatButton:Lcom/sonyericsson/music/fullplayer/RepeatButton;

    const/4 v4, 0x5

    aput-object v1, v0, v4

    .line 889
    array-length v1, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v5, v0, v4

    if-eqz p1, :cond_0

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_0
    const v6, 0x3e4ccccd    # 0.2f

    .line 892
    :goto_1
    invoke-virtual {v5, p1}, Landroid/view/View;->setClickable(Z)V

    .line 893
    invoke-virtual {v5, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 894
    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    .line 895
    invoke-virtual {v5, p1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x4

    .line 899
    :goto_2
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mSeekBarContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f090220

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 900
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mSeekBarContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f09021d

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setupPlayControl(Landroid/widget/ImageButton;Lcom/sonyericsson/music/ui/PlayControlDrawable;)V
    .locals 1

    .line 839
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Lcom/sonyericsson/music/ui/PlayControlDrawable;->setStateful(Z)V

    .line 840
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setupPlayerView(Landroid/view/ViewGroup;)V
    .locals 7

    const v0, 0x7f0901ec

    .line 775
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/fullplayer/SwipeView;

    iput-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mSwipeView:Lcom/sonyericsson/music/fullplayer/SwipeView;

    const v0, 0x7f090056

    .line 776
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/fullplayer/BackPlateView;

    iput-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mBackPlate:Lcom/sonyericsson/music/fullplayer/BackPlateView;

    const v0, 0x7f09004f

    .line 777
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/fullplayer/ArtPagerView;

    iput-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mArtPagerView:Lcom/sonyericsson/music/fullplayer/ArtPagerView;

    const v0, 0x7f090042

    .line 778
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mAlbumArtContainer:Landroid/view/View;

    const v0, 0x7f090186

    .line 779
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mControlsContainer:Landroid/view/View;

    const v0, 0x7f0900fc

    .line 780
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mLoadingProgress:Landroid/widget/ProgressBar;

    const v0, 0x7f09011f

    .line 781
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/fullplayer/MetadataView;

    iput-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mMetadataView:Lcom/sonyericsson/music/fullplayer/MetadataView;

    const v0, 0x7f0901c1

    .line 782
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mSeekBar:Landroid/widget/SeekBar;

    const v0, 0x7f090221

    .line 783
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mSeekBarContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0901cc

    .line 784
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/fullplayer/ShuffleButton;

    iput-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mShuffleButton:Lcom/sonyericsson/music/fullplayer/ShuffleButton;

    const v0, 0x7f090194

    .line 785
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mPrevButton:Landroid/widget/ImageButton;

    const v0, 0x7f090184

    .line 786
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/ui/PlayPauseButton;

    iput-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mPlayPauseButton:Lcom/sonyericsson/music/ui/PlayPauseButton;

    const v0, 0x7f09015e

    .line 787
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mNextButton:Landroid/widget/ImageButton;

    const v0, 0x7f0901a4

    .line 788
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/fullplayer/RepeatButton;

    iput-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mRepeatButton:Lcom/sonyericsson/music/fullplayer/RepeatButton;

    .line 791
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mArtPagerView:Lcom/sonyericsson/music/fullplayer/ArtPagerView;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090050

    .line 792
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 793
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mShuffleButton:Lcom/sonyericsson/music/fullplayer/ShuffleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 794
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mPlayPauseButton:Lcom/sonyericsson/music/ui/PlayPauseButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 795
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 796
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 797
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mRepeatButton:Lcom/sonyericsson/music/fullplayer/RepeatButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 799
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f09003e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 800
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f09003d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 802
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mPrevButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sonyericsson/music/ui/PreviousDrawable;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonyericsson/music/ui/PreviousDrawable;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->setupPlayControl(Landroid/widget/ImageButton;Lcom/sonyericsson/music/ui/PlayControlDrawable;)V

    .line 803
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mNextButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sonyericsson/music/ui/NextDrawable;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonyericsson/music/ui/NextDrawable;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->setupPlayControl(Landroid/widget/ImageButton;Lcom/sonyericsson/music/ui/PlayControlDrawable;)V

    const v0, 0x7f090222

    .line 805
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/widget/TextView;

    .line 806
    new-instance p1, Lcom/sonyericsson/music/fullplayer/SeekHandler;

    iget-object v1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mSeekBarContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mNextButton:Landroid/widget/ImageButton;

    new-instance v6, Lcom/sonyericsson/music/fullplayer/PlayerFragment$10;

    invoke-direct {v6, p0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment$10;-><init>(Lcom/sonyericsson/music/fullplayer/PlayerFragment;)V

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/music/fullplayer/SeekHandler;-><init>(Landroid/widget/SeekBar;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Lcom/sonyericsson/music/fullplayer/SeekHandler$OnSeekListener;)V

    iput-object p1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mSeekHandler:Lcom/sonyericsson/music/fullplayer/SeekHandler;

    .line 834
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mSwipeView:Lcom/sonyericsson/music/fullplayer/SwipeView;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/music/fullplayer/SwipeView;->setOnScrollListener(Lcom/sonyericsson/music/fullplayer/SwipeView$OnScrollListener;)V

    return-void
.end method

.method private unregisterPlayerStateListener()V
    .locals 2

    .line 284
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mPlayerStateListener:Lcom/sonyericsson/music/player/PlayerStateListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/player/PlayerController;->unregisterPlayerStateListener(Lcom/sonyericsson/music/player/PlayerStateListener;)V

    .line 285
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/player/PlayerState;->snapshot()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->loadState(Lcom/sonyericsson/music/player/PlayerState;)V

    return-void
.end method

.method private updateControlsEnabledState(Lcom/sonyericsson/music/player/PlayerState;)V
    .locals 0

    .line 855
    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->getCurrentTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 857
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->setControlsEnabled(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 859
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->setControlsEnabled(Z)V

    :goto_0
    return-void
.end method

.method private updateLoadingProgress(Lcom/sonyericsson/music/player/PlayerState$LoadingState;)V
    .locals 3

    .line 904
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mLoadingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 905
    :goto_0
    sget-object v1, Lcom/sonyericsson/music/player/PlayerState$LoadingState;->IDLE:Lcom/sonyericsson/music/player/PlayerState$LoadingState;

    if-eq p1, v1, :cond_2

    if-eqz v0, :cond_1

    .line 907
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mLoadingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 909
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mLoadingProgress:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mShowLoadingProgressDelayed:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2ee

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/ProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 912
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mLoadingProgress:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mShowLoadingProgressDelayed:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    if-eqz v0, :cond_3

    .line 914
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mLoadingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$11;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment$11;-><init>(Lcom/sonyericsson/music/fullplayer/PlayerFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    :cond_3
    :goto_1
    return-void
.end method

.method private updateRepeatMode(Lcom/sonyericsson/music/player/PlayerState;)V
    .locals 2

    .line 875
    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->getRepeatMode()I

    move-result v0

    .line 876
    iget-object v1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mRepeatButton:Lcom/sonyericsson/music/fullplayer/RepeatButton;

    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->isInPlayQueueMode()Z

    move-result p1

    invoke-virtual {v1, p1}, Lcom/sonyericsson/music/fullplayer/TrackStateButton;->setUserEnabled(Z)V

    .line 877
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mRepeatButton:Lcom/sonyericsson/music/fullplayer/RepeatButton;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/fullplayer/RepeatButton;->setRepeatMode(I)V

    return-void
.end method

.method private updateShuffle(Lcom/sonyericsson/music/player/PlayerState;)V
    .locals 2

    .line 881
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mShuffleButton:Lcom/sonyericsson/music/fullplayer/ShuffleButton;

    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->isShuffle()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/fullplayer/ShuffleButton;->setShuffleActive(Z)V

    .line 882
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mShuffleButton:Lcom/sonyericsson/music/fullplayer/ShuffleButton;

    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->isInPlayQueueMode()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/fullplayer/TrackStateButton;->setUserEnabled(Z)V

    return-void
.end method

.method private updateToast(I)V
    .locals 2

    .line 1065
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1066
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mSingletonToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 1067
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1069
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/sonyericsson/music/common/MusicToast;->create(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mSingletonToast:Landroid/widget/Toast;

    .line 1070
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mSingletonToast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method

.method private updateTrack(Lcom/sonyericsson/music/player/PlayerState;)V
    .locals 1

    .line 864
    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->getCurrentTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 866
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mSeekHandler:Lcom/sonyericsson/music/fullplayer/SeekHandler;

    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getDuration()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/fullplayer/SeekHandler;->setTrackDuration(I)V

    const/4 p1, 0x1

    .line 867
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->setControlsEnabled(Z)V

    goto :goto_0

    .line 869
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mSeekHandler:Lcom/sonyericsson/music/fullplayer/SeekHandler;

    invoke-virtual {p1}, Lcom/sonyericsson/music/fullplayer/SeekHandler;->setTrackDurationUnknown()V

    const/4 p1, 0x0

    .line 870
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->setControlsEnabled(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public activateDelayedPause(J)V
    .locals 1

    .line 1133
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1135
    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/music/player/PlayerController;->pauseDelayed(J)V

    :cond_0
    return-void
.end method

.method protected getBackgroundColorSetting()Lcom/sonyericsson/music/library/BaseFragment$BackgroundColorSetting;
    .locals 1

    .line 685
    sget-object v0, Lcom/sonyericsson/music/library/BaseFragment$BackgroundColorSetting;->LIST:Lcom/sonyericsson/music/library/BaseFragment$BackgroundColorSetting;

    return-object v0
.end method

.method public getBlurFromSharedElementImage()Landroid/graphics/Bitmap;
    .locals 4

    .line 316
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 318
    sget-object v2, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->ARG_SHARED_ELEMENT_IS_DEFAULT_ART:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    const-string v1, "shared-element-bitmap"

    .line 322
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 323
    invoke-static {v0}, Lcom/sonyericsson/music/common/BlurUtils;->getBlur(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getContainerId()I
    .locals 1

    const v0, 0x7f09007c

    return v0
.end method

.method public getDelayedPausedEndMillis()J
    .locals 2

    .line 1123
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1125
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/player/PlayerState;->getDelayedPauseEndMillis()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method protected getDrawerIndicator()Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$DrawerIndicator;
    .locals 1

    .line 690
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->canMinimize()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$DrawerIndicator;->MINIMIZE:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$DrawerIndicator;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$DrawerIndicator;->CLOSE:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$DrawerIndicator;

    :goto_0
    return-object v0
.end method

.method protected getSystemUIConfig()Lcom/sonyericsson/music/library/SystemUIConfig;
    .locals 1

    const/4 v0, 0x0

    .line 1141
    invoke-static {v0}, Lcom/sonyericsson/music/library/SystemUIConfig;->transparent(Z)Lcom/sonyericsson/music/library/SystemUIConfig;

    move-result-object v0

    return-object v0
.end method

.method protected getToolbarContentColor()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected isTransparentToolbar()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 987
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 989
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 991
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_0

    .line 992
    invoke-static {p1}, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils;->clearCaches(Landroid/content/Context;)V

    .line 993
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mArtPagerAdapter:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;

    invoke-virtual {p1}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->notifyDataChanged()V

    :cond_0
    return-void
.end method

.method protected onApplyTopPadding(II)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onArtReset(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1117
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mArtPagerAdapter:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;

    invoke-virtual {p1}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->notifyDataChanged()V

    :cond_0
    return-void
.end method

.method public onBackPressed(Lcom/sonyericsson/music/MusicActivity$BackSource;)Z
    .locals 2

    .line 767
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "player_close"

    invoke-static {v0, v1}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy;->logEvent(Landroid/content/Context;Ljava/lang/String;)Z

    .line 768
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->isLaunchPlayerByContentURI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 769
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/common/MusicUtils;->finishAndStopPlaybackService(Landroid/app/Activity;)V

    .line 771
    :cond_0
    invoke-super {p0, p1}, Lcom/sonyericsson/music/library/BaseFragment;->onBackPressed(Lcom/sonyericsson/music/MusicActivity$BackSource;)Z

    move-result p1

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1000
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1001
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 1005
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    .line 1047
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 1017
    :sswitch_0
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->isShuffle()Z

    move-result p1

    xor-int/2addr p1, v1

    .line 1018
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/player/PlayerController;->setShuffle(Z)V

    if-eqz p1, :cond_1

    const p1, 0x7f100292

    goto :goto_0

    :cond_1
    const p1, 0x7f100291

    .line 1019
    :goto_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->updateToast(I)V

    goto/16 :goto_1

    .line 1031
    :sswitch_1
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->getRepeatMode()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->nextRepeatMode(I)I

    move-result p1

    .line 1032
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/player/PlayerController;->setRepeatMode(I)V

    .line 1033
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->repeatModeToastText(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->updateToast(I)V

    goto :goto_1

    .line 1022
    :sswitch_2
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerController;->previous()V

    goto :goto_1

    .line 1025
    :sswitch_3
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerController;->playPause()V

    goto :goto_1

    .line 1028
    :sswitch_4
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerController;->next()V

    goto :goto_1

    .line 1010
    :sswitch_5
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->getCurrentTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object p1

    .line 1011
    invoke-static {p1}, Lcom/sonyericsson/music/common/TrackUtils;->isLocalTrack(Lcom/sonyericsson/music/common/Track;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1012
    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->onTrackOptionArtist(Landroid/app/Activity;Lcom/sonyericsson/music/common/Track;)V

    goto :goto_1

    .line 1007
    :sswitch_6
    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->showOverflowMenu()V

    goto :goto_1

    .line 1036
    :sswitch_7
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mToggleFavoriteTask:Landroid/os/AsyncTask;

    if-eqz p1, :cond_2

    .line 1037
    invoke-virtual {p1, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 1039
    :cond_2
    new-instance p1, Lcom/sonyericsson/music/fullplayer/PlayerFragment$ToggleFavoriteTask;

    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mMetadataView:Lcom/sonyericsson/music/fullplayer/MetadataView;

    .line 1040
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/music/player/PlayerState;->getCurrentTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, p0, v0, v1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment$ToggleFavoriteTask;-><init>(Lcom/sonyericsson/music/fullplayer/PlayerFragment;Lcom/sonyericsson/music/fullplayer/MetadataView;Landroid/net/Uri;)V

    iput-object p1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mToggleFavoriteTask:Landroid/os/AsyncTask;

    .line 1041
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mToggleFavoriteTask:Landroid/os/AsyncTask;

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 1044
    :sswitch_8
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object p1

    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/player/PlayerState;->getCurrentTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->onTrackOptionAddTo(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/common/Track;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09003d -> :sswitch_8
        0x7f09003e -> :sswitch_7
        0x7f09004f -> :sswitch_6
        0x7f090050 -> :sswitch_5
        0x7f09015e -> :sswitch_4
        0x7f090184 -> :sswitch_3
        0x7f090194 -> :sswitch_2
        0x7f0901a4 -> :sswitch_1
        0x7f0901cc -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 260
    invoke-super {p0, p1}, Lcom/sonyericsson/music/library/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 262
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/common/UIUtils;->isInteractive(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mIsInteractive:Z

    .line 263
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 264
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 265
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 266
    new-instance v1, Lcom/sonyericsson/music/fullplayer/PlayerFragment$ScreenReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/music/fullplayer/PlayerFragment$ScreenReceiver;-><init>(Lcom/sonyericsson/music/fullplayer/PlayerFragment;Lcom/sonyericsson/music/fullplayer/PlayerFragment$1;)V

    iput-object v1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    .line 267
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 269
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 271
    :goto_0
    iput-boolean v2, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mRunEnterAnimation:Z

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 272
    :goto_1
    iput-boolean v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mRunExitAnimation:Z

    .line 274
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.musicvisualizer.intent.action.VISUALIZER_LAUNCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/sonyericsson/music/common/AvailabilityUtils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mVisualizerAvailable:Z

    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .locals 2

    .line 478
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 p3, 0x0

    if-nez p1, :cond_0

    return-object p3

    :cond_0
    const-string v0, "shared-element-window-loc"

    .line 483
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    const-string v1, "shared-element-bitmap"

    .line 484
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 487
    iget-boolean p2, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mRunEnterAnimation:Z

    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 488
    iput-boolean v1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mRunEnterAnimation:Z

    .line 492
    iget-object p2, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mRootView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/sonyericsson/music/fullplayer/PlayerFragment$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment$3;-><init>(Lcom/sonyericsson/music/fullplayer/PlayerFragment;Landroid/graphics/Rect;Landroid/graphics/Bitmap;)V

    invoke-static {p2, v1}, Lcom/sonyericsson/music/common/UIUtils;->waitForMeasure(Landroid/view/View;Lcom/sonyericsson/music/common/UIUtils$MeasureCallback;)V

    :cond_1
    return-object p3

    .line 503
    :cond_2
    iget-boolean p1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mRunExitAnimation:Z

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    .line 504
    iput-boolean v1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mRunExitAnimation:Z

    .line 505
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->createExitAnimator(Landroid/graphics/Rect;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1

    .line 510
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->createFallbackExitAnimator()Landroid/animation/ValueAnimator;

    move-result-object p1

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 379
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 380
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->isLaunchPlayerByContentURI()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0d000d

    .line 385
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const p2, 0x7f1100f8

    .line 289
    invoke-static {p1, p2}, Lcom/sonyericsson/music/common/UIUtils;->getThemedLayoutInflater(Landroid/view/LayoutInflater;I)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    const v1, 0x7f0c0044

    .line 290
    invoke-virtual {p1, v1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mRootView:Landroid/view/ViewGroup;

    .line 291
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mRootView:Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->setupPlayerView(Landroid/view/ViewGroup;)V

    .line 293
    new-instance p1, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object v2

    .line 294
    invoke-virtual {v2}, Lcom/sonyericsson/music/player/PlayerController;->getPlayerArtDecoder()Lcom/sonyericsson/music/player/PlayerArtDecoder;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/music/player/PlayerArtDecoder;)V

    iput-object p1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mArtPagerAdapter:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;

    .line 295
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mArtPagerView:Lcom/sonyericsson/music/fullplayer/ArtPagerView;

    iget-object v1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mArtPagerAdapter:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->setAdapter(Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;)V

    .line 296
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mSwipeView:Lcom/sonyericsson/music/fullplayer/SwipeView;

    iget-object v1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mArtPagerAdapter:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/music/fullplayer/SwipeView;->setAdapter(Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;)V

    .line 297
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mMetadataView:Lcom/sonyericsson/music/fullplayer/MetadataView;

    iget-object v1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mArtPagerAdapter:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/music/fullplayer/MetadataView;->setAdapter(Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;)V

    if-eqz p3, :cond_0

    const-string p1, "key_previous_blur"

    .line 298
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_1

    .line 301
    invoke-virtual {p0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->getBlurFromSharedElementImage()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 304
    :cond_1
    iget-object p3, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mBackPlate:Lcom/sonyericsson/music/fullplayer/BackPlateView;

    iget-object v1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mArtPagerAdapter:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;

    invoke-virtual {p3, v1, p1}, Lcom/sonyericsson/music/fullplayer/BackPlateView;->setAdapter(Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;Landroid/graphics/Bitmap;)V

    .line 306
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/MusicActivity;->setActionBarTitle(Ljava/lang/CharSequence;)V

    .line 307
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/music/MusicActivity;->getMusicFragmentManager()Lcom/sonyericsson/music/MusicFragmentManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/MusicFragmentManager;->updateMiniPlayerVisibility(Z)V

    .line 308
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mRootView:Landroid/view/ViewGroup;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/sonyericsson/music/common/UIUtils;->setSystemUIVisibilityPreKK(Landroid/view/View;Z)Z

    .line 310
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x42480000    # 50.0f

    mul-float p1, p1, p2

    iput p1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mEnterTranslationY:F

    .line 312
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mRootView:Landroid/view/ViewGroup;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 365
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 367
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 369
    iput-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mToggleFavoriteTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 373
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_1
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 359
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 360
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->getMusicFragmentManager()Lcom/sonyericsson/music/MusicFragmentManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/MusicFragmentManager;->updateMiniPlayerVisibility(Z)V

    return-void
.end method

.method public onInsetsChanged(Landroid/graphics/Rect;)V
    .locals 2

    .line 706
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f090173

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/fullplayer/PlayerView;

    .line 707
    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->applySystemUiPadding(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 414
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 418
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_0

    .line 450
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 424
    :sswitch_0
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->launchVisualizer(Landroid/content/Context;)V

    return v2

    .line 427
    :sswitch_1
    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->isFragmentTransactionAllowed()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 428
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 429
    invoke-static {}, Lcom/sonyericsson/music/dialogs/SleepTimerDialog;->newInstance()Lcom/sonyericsson/music/dialogs/SleepTimerDialog;

    move-result-object v0

    .line 430
    invoke-virtual {v0, p0}, Lcom/sonyericsson/music/dialogs/SleepTimerDialog;->setSleepTimerController(Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerController;)V

    const-string v1, "sleeptimer_dialog"

    .line 431
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return v2

    .line 441
    :sswitch_2
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->getCurrentTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->onTrackOptionShare(Landroid/app/Activity;Lcom/sonyericsson/music/common/Track;)V

    return v2

    .line 420
    :sswitch_3
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->launchPlayQueue()V

    return v2

    .line 447
    :sswitch_4
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->getCurrentTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->onTrackOptionInfinite(Landroid/app/Activity;Lcom/sonyericsson/music/common/Track;)V

    return v2

    .line 444
    :sswitch_5
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->getCurrentTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->onTrackOptionEditMusicInfo(Lcom/sonyericsson/music/common/Track;)V

    return v2

    .line 435
    :sswitch_6
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->getCurrentTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->onTrackOptionArtist(Landroid/app/Activity;Lcom/sonyericsson/music/common/Track;)V

    return v2

    .line 438
    :sswitch_7
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->getCurrentTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->onTrackOptionAlbum(Landroid/app/Activity;Lcom/sonyericsson/music/common/Track;)V

    return v2

    :sswitch_data_0
    .sparse-switch
        0x7f090106 -> :sswitch_7
        0x7f090107 -> :sswitch_6
        0x7f09010d -> :sswitch_5
        0x7f090110 -> :sswitch_4
        0x7f090113 -> :sswitch_3
        0x7f090118 -> :sswitch_2
        0x7f090119 -> :sswitch_1
        0x7f09011b -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5

    .line 390
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 392
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/music/player/PlayerState;->getCurrentTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object v1

    .line 393
    invoke-static {v1}, Lcom/sonyericsson/music/common/TrackUtils;->isLocalTrack(Lcom/sonyericsson/music/common/Track;)Z

    move-result v2

    const v3, 0x7f09011b

    .line 394
    iget-boolean v4, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mVisualizerAvailable:Z

    invoke-direct {p0, p1, v3, v4}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->safeSetVisible(Landroid/view/Menu;IZ)V

    const v3, 0x7f090107

    .line 395
    invoke-direct {p0, p1, v3, v2}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->safeSetVisible(Landroid/view/Menu;IZ)V

    const v3, 0x7f090106

    .line 396
    invoke-direct {p0, p1, v3, v2}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->safeSetVisible(Landroid/view/Menu;IZ)V

    const v3, 0x7f09010d

    .line 397
    invoke-direct {p0, p1, v3, v2}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->safeSetVisible(Landroid/view/Menu;IZ)V

    const v3, 0x7f090110

    .line 399
    invoke-static {v1, v0}, Lcom/sonyericsson/music/common/TrackUtils;->canStartPlugins(Lcom/sonyericsson/music/common/Track;Landroid/content/Context;)Z

    move-result v0

    .line 398
    invoke-direct {p0, p1, v3, v0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->safeSetVisible(Landroid/view/Menu;IZ)V

    const v0, 0x7f090118

    .line 400
    invoke-direct {p0, p1, v0, v2}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->safeSetVisible(Landroid/view/Menu;IZ)V

    .line 402
    :cond_0
    invoke-super {p0, p1}, Lcom/sonyericsson/music/library/BaseFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 351
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mBackPlate:Lcom/sonyericsson/music/fullplayer/BackPlateView;

    if-eqz v0, :cond_0

    const-string v1, "key_previous_blur"

    .line 352
    invoke-virtual {v0}, Lcom/sonyericsson/music/fullplayer/BackPlateView;->getBlur()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 354
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onScrolledToPosition(I)V
    .locals 2

    .line 744
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 747
    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/music/player/PlayerController;->setPlayQueuePosition(IZ)V

    .line 749
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_0

    .line 750
    invoke-virtual {p0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->sendTrackChangedAccessibilityEvent()V

    :cond_0
    return-void
.end method

.method public onScrolling(F)V
    .locals 1

    .line 739
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mArtPagerAdapter:Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->setUserPosition(F)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 331
    invoke-super {p0}, Lcom/sonyericsson/music/library/BaseFragment;->onStart()V

    .line 332
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->registerPlayerStateListener()V

    .line 333
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->loadState(Lcom/sonyericsson/music/player/PlayerState;)V

    .line 334
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->registerNfc(Landroid/app/Activity;)V

    .line 336
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/music/MusicActivity;->addOnArtResetListener(Lcom/sonyericsson/music/MusicActivity$ArtResetListener;)Z

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 341
    invoke-super {p0}, Lcom/sonyericsson/music/library/BaseFragment;->onStop()V

    .line 342
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->unregisterPlayerStateListener()V

    .line 343
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 344
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->getToolbar()Lcom/sonyericsson/music/ui/ShadowingToolbar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/ui/ShadowingToolbar;->setShadowEnabled(Z)V

    .line 346
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/music/MusicActivity;->removeOnArtResetListener(Lcom/sonyericsson/music/MusicActivity$ArtResetListener;)V

    return-void
.end method

.method public onSwipeDown()V
    .locals 2

    .line 757
    invoke-direct {p0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->canMinimize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 760
    sget-object v1, Lcom/sonyericsson/music/MusicActivity$BackSource;->SWIPE:Lcom/sonyericsson/music/MusicActivity$BackSource;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/MusicActivity;->onBackPressed(Lcom/sonyericsson/music/MusicActivity$BackSource;)V

    :cond_0
    return-void
.end method

.method sendTrackChangedAccessibilityEvent()V
    .locals 4

    .line 1088
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "accessibility"

    .line 1093
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v1, :cond_2

    .line 1094
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0x4000

    .line 1097
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 1098
    iget-object v3, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mArtPagerView:Lcom/sonyericsson/music/fullplayer/ArtPagerView;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1099
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 1100
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->mArtPagerView:Lcom/sonyericsson/music/fullplayer/ArtPagerView;

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 1101
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f100073

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1102
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method
