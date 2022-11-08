.class public Lcom/sonyericsson/music/MiniPlayerFragment;
.super Lcom/sonyericsson/music/library/BaseFragment;
.source "MiniPlayerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/sonyericsson/music/MusicActivity$ArtResetListener;
.implements Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/MiniPlayerFragment$ScreenReceiver;,
        Lcom/sonyericsson/music/MiniPlayerFragment$RetainObject;,
        Lcom/sonyericsson/music/MiniPlayerFragment$SloppyClickListener;
    }
.end annotation


# static fields
.field private static final BUFFERING_SPINNER_SHOW_DELAY:J = 0x2eeL

.field private static final COUNTDOWN_TIMER_INTERVAL_MS:I = 0x7530

.field private static final NBR_OF_MILLISECONDS_PER_MINUTE:I = 0xea60

.field private static final PENDING_ART_DELAY:J = 0x1f4L

.field private static final PROGRESS_BAR_UNKNOWN_MAX:I = 0x3e8

.field private static final RETAIN_KEY:Ljava/lang/String; = "MiniPlayerFragment"

.field private static final SHOW_NO_CONTENT_DELAY:J = 0x1f4L


# instance fields
.field private mAlbumArtImage:Lcom/sonyericsson/music/ui/MiniPlayerImageView;

.field private mArtistName:Landroid/widget/TextView;

.field private mBufferingSpinner:Landroid/widget/ProgressBar;

.field private mDefaultAlbumIcon:Landroid/graphics/drawable/Drawable;

.field private final mHandler:Landroid/os/Handler;

.field private mHighlightAlbumArt:Landroid/widget/ImageView;

.field private mImageSize:I

.field private mInfoLayout:Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout;

.field private mIsInteractive:Z

.field private mMiniPlayer:Landroid/view/View;

.field private mNextButton:Landroid/widget/ImageButton;

.field private mPendingArtDirection:Lcom/sonyericsson/music/player/PlayerState$SkipDirection;

.field private final mPendingArtRunnable:Ljava/lang/Runnable;

.field private mPlayPauseButton:Lcom/sonyericsson/music/ui/PlayPauseButton;

.field private mPlaybackProgress:Landroid/widget/ProgressBar;

.field private mPlayerArtListener:Lcom/sonyericsson/music/player/PlayerArtDecoder$OnPlayerArtListener;

.field private final mPlayerStateListener:Lcom/sonyericsson/music/player/PlayerStateListener;

.field private mPrevButton:Landroid/widget/ImageButton;

.field private mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private final mShowNoContent:Ljava/lang/Runnable;

.field private mTimer:Landroid/os/CountDownTimer;

.field private mTimerBanner:Landroid/view/View;

.field private mTimerCountdownText:Landroid/widget/TextView;

.field private mTimerSetting:Landroid/view/View;

.field private mTrackName:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Lcom/sonyericsson/music/library/BaseFragment;-><init>()V

    .line 105
    new-instance v0, Lcom/sonyericsson/music/MiniPlayerFragment$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/MiniPlayerFragment$1;-><init>(Lcom/sonyericsson/music/MiniPlayerFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mPlayerStateListener:Lcom/sonyericsson/music/player/PlayerStateListener;

    .line 146
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mHandler:Landroid/os/Handler;

    .line 148
    new-instance v0, Lcom/sonyericsson/music/MiniPlayerFragment$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/MiniPlayerFragment$2;-><init>(Lcom/sonyericsson/music/MiniPlayerFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mShowNoContent:Ljava/lang/Runnable;

    .line 161
    new-instance v0, Lcom/sonyericsson/music/MiniPlayerFragment$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/MiniPlayerFragment$3;-><init>(Lcom/sonyericsson/music/MiniPlayerFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mPendingArtRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/MiniPlayerFragment;)Lcom/sonyericsson/music/ui/PlayPauseButton;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mPlayPauseButton:Lcom/sonyericsson/music/ui/PlayPauseButton;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/music/MiniPlayerFragment;Lcom/sonyericsson/music/player/PlayerState;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/MiniPlayerFragment;->updateIsPlaying(Lcom/sonyericsson/music/player/PlayerState;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sonyericsson/music/MiniPlayerFragment;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mDefaultAlbumIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/sonyericsson/music/MiniPlayerFragment;)Lcom/sonyericsson/music/player/PlayerState$SkipDirection;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mPendingArtDirection:Lcom/sonyericsson/music/player/PlayerState$SkipDirection;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/sonyericsson/music/MiniPlayerFragment;Lcom/sonyericsson/music/player/PlayerState$SkipDirection;)Lcom/sonyericsson/music/player/PlayerState$SkipDirection;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mPendingArtDirection:Lcom/sonyericsson/music/player/PlayerState$SkipDirection;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/sonyericsson/music/MiniPlayerFragment;)Lcom/sonyericsson/music/ui/MiniPlayerImageView;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mAlbumArtImage:Lcom/sonyericsson/music/ui/MiniPlayerImageView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/sonyericsson/music/MiniPlayerFragment;)Lcom/sonyericsson/music/MusicActivity;
    .locals 0

    .line 70
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/sonyericsson/music/MiniPlayerFragment;)Lcom/sonyericsson/music/MusicActivity;
    .locals 0

    .line 70
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lcom/sonyericsson/music/MiniPlayerFragment;)Landroid/widget/ProgressBar;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mBufferingSpinner:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/sonyericsson/music/MiniPlayerFragment;)Lcom/sonyericsson/music/player/PlayerArtDecoder$OnPlayerArtListener;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mPlayerArtListener:Lcom/sonyericsson/music/player/PlayerArtDecoder$OnPlayerArtListener;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/sonyericsson/music/MiniPlayerFragment;Lcom/sonyericsson/music/player/PlayerArtDecoder$OnPlayerArtListener;)Lcom/sonyericsson/music/player/PlayerArtDecoder$OnPlayerArtListener;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mPlayerArtListener:Lcom/sonyericsson/music/player/PlayerArtDecoder$OnPlayerArtListener;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/sonyericsson/music/MiniPlayerFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mPendingArtRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/sonyericsson/music/MiniPlayerFragment;)Landroid/os/Handler;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/music/MiniPlayerFragment;Z)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/MiniPlayerFragment;->showBufferingSpinner(Z)V

    return-void
.end method

.method static synthetic access$2000()Ljava/lang/String;
    .locals 1

    .line 70
    sget-object v0, Lcom/sonyericsson/music/MiniPlayerFragment;->RETAIN_KEY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/music/MiniPlayerFragment;Lcom/sonyericsson/music/player/PlayerState;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/MiniPlayerFragment;->updateTrack(Lcom/sonyericsson/music/player/PlayerState;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/music/MiniPlayerFragment;)Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mIsInteractive:Z

    return p0
.end method

.method static synthetic access$402(Lcom/sonyericsson/music/MiniPlayerFragment;Z)Z
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mIsInteractive:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sonyericsson/music/MiniPlayerFragment;)Landroid/widget/ProgressBar;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mPlaybackProgress:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sonyericsson/music/MiniPlayerFragment;)Lcom/sonyericsson/music/player/PlayerController;
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/sonyericsson/music/MiniPlayerFragment;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/sonyericsson/music/MiniPlayerFragment;)Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mInfoLayout:Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout;

    return-object p0
.end method

.method static synthetic access$800(Lcom/sonyericsson/music/MiniPlayerFragment;)Landroid/widget/TextView;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mTrackName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/sonyericsson/music/MiniPlayerFragment;)Landroid/widget/TextView;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mArtistName:Landroid/widget/TextView;

    return-object p0
.end method

.method private createDefaultDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const v0, 0x7f080196

    .line 284
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 285
    new-instance v0, Lcom/sonyericsson/music/fullplayer/CenterCropDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/sonyericsson/music/fullplayer/CenterCropDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method private getPlayerController()Lcom/sonyericsson/music/player/PlayerController;
    .locals 1

    .line 440
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object v0

    return-object v0
.end method

.method private getPlayerState()Lcom/sonyericsson/music/player/PlayerState;
    .locals 1

    .line 444
    invoke-direct {p0}, Lcom/sonyericsson/music/MiniPlayerFragment;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/player/PlayerController;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object v0

    return-object v0
.end method

.method private loadAlbumArt(Lcom/sonyericsson/music/common/Track;Lcom/sonyericsson/music/ui/MiniPlayerImageView;Lcom/sonyericsson/music/player/PlayerState$SkipDirection;)V
    .locals 5

    .line 404
    invoke-static {}, Lcom/sonyericsson/music/RetainManager;->getInstance()Lcom/sonyericsson/music/RetainManager;

    move-result-object v0

    .line 405
    sget-object v1, Lcom/sonyericsson/music/MiniPlayerFragment;->RETAIN_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/RetainManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/MiniPlayerFragment$RetainObject;

    if-eqz v1, :cond_0

    .line 407
    invoke-virtual {v1}, Lcom/sonyericsson/music/MiniPlayerFragment$RetainObject;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 408
    invoke-virtual {v1}, Lcom/sonyericsson/music/MiniPlayerFragment$RetainObject;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Lcom/sonyericsson/music/ui/MiniPlayerImageView;->setImageDrawableWithAnimation(Landroid/graphics/drawable/Drawable;Lcom/sonyericsson/music/player/PlayerState$SkipDirection;)V

    return-void

    .line 412
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/music/MiniPlayerFragment;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/music/player/PlayerController;->getPlayerArtDecoder()Lcom/sonyericsson/music/player/PlayerArtDecoder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 413
    invoke-virtual {v1}, Lcom/sonyericsson/music/player/PlayerArtDecoder;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 415
    iput-object p3, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mPendingArtDirection:Lcom/sonyericsson/music/player/PlayerState$SkipDirection;

    .line 416
    iget-object p3, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mPendingArtRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1f4

    invoke-virtual {p3, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 417
    new-instance p3, Lcom/sonyericsson/music/MiniPlayerFragment$7;

    invoke-direct {p3, p0, p2, v0, p1}, Lcom/sonyericsson/music/MiniPlayerFragment$7;-><init>(Lcom/sonyericsson/music/MiniPlayerFragment;Lcom/sonyericsson/music/ui/MiniPlayerImageView;Lcom/sonyericsson/music/RetainManager;Lcom/sonyericsson/music/common/Track;)V

    iput-object p3, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mPlayerArtListener:Lcom/sonyericsson/music/player/PlayerArtDecoder$OnPlayerArtListener;

    .line 435
    iget p2, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mImageSize:I

    iget-object p3, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mPlayerArtListener:Lcom/sonyericsson/music/player/PlayerArtDecoder$OnPlayerArtListener;

    invoke-virtual {v1, p1, p2, p3}, Lcom/sonyericsson/music/player/PlayerArtDecoder;->decodeArt(Lcom/sonyericsson/music/common/Track;ILcom/sonyericsson/music/player/PlayerArtDecoder$OnPlayerArtListener;)V

    :cond_1
    return-void
.end method

.method private loadState(Lcom/sonyericsson/music/player/PlayerState;)V
    .locals 3

    .line 325
    iget-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mPlayPauseButton:Lcom/sonyericsson/music/ui/PlayPauseButton;

    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->isPlaying()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/music/ui/PlayPauseButton;->setPlaying(ZZ)V

    .line 326
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/MiniPlayerFragment;->updateIsPlaying(Lcom/sonyericsson/music/player/PlayerState;)V

    .line 327
    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->getLoadingState()Lcom/sonyericsson/music/player/PlayerState$LoadingState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/music/player/PlayerState$LoadingState;->IDLE:Lcom/sonyericsson/music/player/PlayerState$LoadingState;

    if-eq v0, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-direct {p0, v2}, Lcom/sonyericsson/music/MiniPlayerFragment;->showBufferingSpinner(Z)V

    .line 328
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/MiniPlayerFragment;->updateTrack(Lcom/sonyericsson/music/player/PlayerState;)V

    .line 329
    iget-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mPlaybackProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->getPlaybackPosition()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method private openPlayerFragmentWithTransition()V
    .locals 7

    .line 497
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 498
    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->isFragmentTransactionAllowed()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 502
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "PlayerFragment"

    .line 503
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    .line 505
    iget-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mAlbumArtImage:Lcom/sonyericsson/music/ui/MiniPlayerImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 506
    iget-object v1, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mAlbumArtImage:Lcom/sonyericsson/music/ui/MiniPlayerImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    .line 507
    iget-object v3, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mAlbumArtImage:Lcom/sonyericsson/music/ui/MiniPlayerImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 509
    :goto_0
    instance-of v6, v0, Lcom/sonyericsson/music/fullplayer/CenterCropDrawable;

    if-nez v6, :cond_2

    if-eqz v5, :cond_2

    .line 510
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/sonyericsson/music/common/MusicUtils;->openPlayerFragment(Landroid/app/Activity;Z)V

    return-void

    :cond_2
    const/4 v5, 0x2

    .line 515
    new-array v5, v5, [I

    .line 516
    iget-object v6, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mAlbumArtImage:Lcom/sonyericsson/music/ui/MiniPlayerImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->getLocationInWindow([I)V

    .line 517
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v2, v2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 518
    aget v1, v5, v2

    aget v3, v5, v4

    invoke-virtual {v6, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 519
    move-object v1, v0

    check-cast v1, Lcom/sonyericsson/music/fullplayer/CenterCropDrawable;

    invoke-virtual {v1}, Lcom/sonyericsson/music/fullplayer/CenterCropDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 520
    iget-object v3, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mDefaultAlbumIcon:Landroid/graphics/drawable/Drawable;

    if-ne v0, v3, :cond_3

    const/4 v2, 0x1

    .line 521
    :cond_3
    invoke-static {v6, v1, v2}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->newInstance(Landroid/graphics/Rect;Landroid/graphics/Bitmap;Z)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 522
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "PlayerFragment"

    invoke-static {v1, v4, v0, v2}, Lcom/sonyericsson/music/common/MusicUtils;->openPlayerFragment(Landroid/app/Activity;ZLandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v1, "PlayerFragment"

    .line 524
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    :goto_1
    return-void

    :cond_5
    :goto_2
    return-void
.end method

.method public static removeRetainedArt()V
    .locals 2

    .line 175
    invoke-static {}, Lcom/sonyericsson/music/RetainManager;->getInstance()Lcom/sonyericsson/music/RetainManager;

    move-result-object v0

    .line 176
    sget-object v1, Lcom/sonyericsson/music/MiniPlayerFragment;->RETAIN_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/RetainManager;->remove(Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method private setUpMiniPlayerView(Landroid/content/res/Resources;Landroid/view/View;)V
    .locals 2

    const v0, 0x7f090124

    .line 210
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mMiniPlayer:Landroid/view/View;

    const v0, 0x7f09017a

    .line 211
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/ui/PlayPauseButton;

    iput-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mPlayPauseButton:Lcom/sonyericsson/music/ui/PlayPauseButton;

    const v0, 0x7f090050

    .line 212
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mArtistName:Landroid/widget/TextView;

    const v0, 0x7f090214

    .line 213
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mTrackName:Landroid/widget/TextView;

    const v0, 0x7f0900df

    .line 214
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout;

    iput-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mInfoLayout:Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout;

    const v0, 0x7f09015f

    .line 215
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mNextButton:Landroid/widget/ImageButton;

    const v0, 0x7f090193

    .line 216
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mPrevButton:Landroid/widget/ImageButton;

    const v0, 0x7f0900db

    .line 217
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/ui/MiniPlayerImageView;

    iput-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mAlbumArtImage:Lcom/sonyericsson/music/ui/MiniPlayerImageView;

    const v0, 0x7f0900dc

    .line 218
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mHighlightAlbumArt:Landroid/widget/ImageView;

    const v0, 0x7f0900fe

    .line 219
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mBufferingSpinner:Landroid/widget/ProgressBar;

    const v0, 0x7f090186

    .line 220
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mPlaybackProgress:Landroid/widget/ProgressBar;

    const v0, 0x7f090210

    .line 221
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mTimerBanner:Landroid/view/View;

    const v0, 0x7f090213

    .line 223
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mTimerSetting:Landroid/view/View;

    .line 224
    iget-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mTimerSetting:Landroid/view/View;

    new-instance v1, Lcom/sonyericsson/music/MiniPlayerFragment$4;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/MiniPlayerFragment$4;-><init>(Lcom/sonyericsson/music/MiniPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090212

    .line 246
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mTimerCountdownText:Landroid/widget/TextView;

    const v0, 0x7f090211

    .line 248
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 249
    new-instance v1, Lcom/sonyericsson/music/MiniPlayerFragment$5;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/MiniPlayerFragment$5;-><init>(Lcom/sonyericsson/music/MiniPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/MiniPlayerFragment;->createDefaultDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mDefaultAlbumIcon:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f0700e6

    .line 264
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mImageSize:I

    .line 266
    iget-object p1, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mPrevButton:Landroid/widget/ImageButton;

    new-instance v0, Lcom/sonyericsson/music/ui/PreviousDrawable;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/music/ui/PreviousDrawable;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/MiniPlayerFragment;->setupPlayControl(Landroid/widget/ImageButton;Lcom/sonyericsson/music/ui/PlayControlDrawable;)V

    .line 267
    iget-object p1, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mNextButton:Landroid/widget/ImageButton;

    new-instance v0, Lcom/sonyericsson/music/ui/NextDrawable;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/music/ui/NextDrawable;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/MiniPlayerFragment;->setupPlayControl(Landroid/widget/ImageButton;Lcom/sonyericsson/music/ui/PlayControlDrawable;)V

    .line 269
    iget-object p1, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mMiniPlayer:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 270
    iget-object p1, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mMiniPlayer:Landroid/view/View;

    new-instance v0, Lcom/sonyericsson/music/MiniPlayerFragment$SloppyClickListener;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/sonyericsson/music/MiniPlayerFragment$SloppyClickListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 271
    iget-object p1, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mMiniPlayer:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    iget-object p1, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mPlayPauseButton:Lcom/sonyericsson/music/ui/PlayPauseButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    iget-object p1, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget-object p1, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupPlayControl(Landroid/widget/ImageButton;Lcom/sonyericsson/music/ui/PlayControlDrawable;)V
    .locals 1

    .line 279
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Lcom/sonyericsson/music/ui/PlayControlDrawable;->setStateful(Z)V

    .line 280
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private showBufferingSpinner(Z)V
    .locals 5

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    .line 383
    iget-object p1, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mAlbumArtImage:Lcom/sonyericsson/music/ui/MiniPlayerImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v2, 0x2ee

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 384
    iget-object p1, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mBufferingSpinner:Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 385
    iget-object p1, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mBufferingSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setAlpha(F)V

    .line 386
    iget-object p1, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mBufferingSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 388
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mAlbumArtImage:Lcom/sonyericsson/music/ui/MiniPlayerImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 389
    iget-object p1, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mBufferingSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/sonyericsson/music/MiniPlayerFragment$6;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/MiniPlayerFragment$6;-><init>(Lcom/sonyericsson/music/MiniPlayerFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    :goto_0
    return-void
.end method

.method private startTimerBannerAnimation(Landroid/view/View;Z)V
    .locals 9

    .line 565
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 566
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 570
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070154

    .line 571
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    if-eqz p2, :cond_2

    move v7, v0

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    .line 576
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    const/4 v0, 0x2

    .line 577
    new-array v0, v0, [I

    aput v2, v0, v1

    const/4 v1, 0x1

    aput v7, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 578
    new-instance v1, Lcom/sonyericsson/music/MiniPlayerFragment$9;

    move-object v3, v1

    move-object v4, p0

    move-object v6, p1

    move v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/music/MiniPlayerFragment$9;-><init>(Lcom/sonyericsson/music/MiniPlayerFragment;Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;IZ)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 589
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_3
    :goto_2
    return-void
.end method

.method private updateIsPlaying(Lcom/sonyericsson/music/player/PlayerState;)V
    .locals 3

    .line 333
    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->getCurrentTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 335
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/MiniPlayerFragment;->setControlsEnabled(Z)V

    goto :goto_0

    .line 337
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mShowNoContent:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method private updateTrack(Lcom/sonyericsson/music/player/PlayerState;)V
    .locals 4

    .line 342
    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->getCurrentTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 345
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getArtist()Ljava/lang/String;

    move-result-object v2

    .line 344
    invoke-static {v1, v2}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownArtistWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 346
    iget-object v2, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mInfoLayout:Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout;

    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->getSkipDirection()Lcom/sonyericsson/music/player/PlayerState$SkipDirection;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout;->startTransition(Lcom/sonyericsson/music/player/PlayerState$SkipDirection;)V

    .line 347
    iget-object v2, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mArtistName:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    iget-object v1, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mTrackName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v1, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mAlbumArtImage:Lcom/sonyericsson/music/ui/MiniPlayerImageView;

    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->getSkipDirection()Lcom/sonyericsson/music/player/PlayerState$SkipDirection;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/sonyericsson/music/MiniPlayerFragment;->loadAlbumArt(Lcom/sonyericsson/music/common/Track;Lcom/sonyericsson/music/ui/MiniPlayerImageView;Lcom/sonyericsson/music/player/PlayerState$SkipDirection;)V

    .line 350
    iget-object p1, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mPlaybackProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getDuration()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 351
    iget-object p1, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mShowNoContent:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    .line 352
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/MiniPlayerFragment;->setControlsEnabled(Z)V

    goto :goto_0

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mAlbumArtImage:Lcom/sonyericsson/music/ui/MiniPlayerImageView;

    iget-object v1, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mDefaultAlbumIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->getSkipDirection()Lcom/sonyericsson/music/player/PlayerState$SkipDirection;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/music/ui/MiniPlayerImageView;->setImageDrawableWithAnimation(Landroid/graphics/drawable/Drawable;Lcom/sonyericsson/music/player/PlayerState$SkipDirection;)V

    .line 355
    iget-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mInfoLayout:Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout;

    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->getSkipDirection()Lcom/sonyericsson/music/player/PlayerState$SkipDirection;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/ui/MiniPlayerInfoLayout;->startTransition(Lcom/sonyericsson/music/player/PlayerState$SkipDirection;)V

    .line 356
    iget-object p1, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mArtistName:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    iget-object p1, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mTrackName:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    iget-object p1, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mPlaybackProgress:Landroid/widget/ProgressBar;

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 359
    iget-object p1, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mShowNoContent:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public activateDelayedPause(J)V
    .locals 1

    .line 616
    invoke-direct {p0}, Lcom/sonyericsson/music/MiniPlayerFragment;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 617
    invoke-direct {p0}, Lcom/sonyericsson/music/MiniPlayerFragment;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/music/player/PlayerController;->pauseDelayed(J)V

    :cond_0
    return-void
.end method

.method cancelTimer()V
    .locals 1

    .line 543
    iget-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 544
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    return-void
.end method

.method public getDelayedPausedEndMillis()J
    .locals 2

    .line 607
    invoke-direct {p0}, Lcom/sonyericsson/music/MiniPlayerFragment;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 608
    invoke-direct {p0}, Lcom/sonyericsson/music/MiniPlayerFragment;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/player/PlayerController;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/player/PlayerState;->getDelayedPauseEndMillis()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public hidePlayerArt(Z)V
    .locals 1

    .line 539
    iget-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mAlbumArtImage:Lcom/sonyericsson/music/ui/MiniPlayerImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method hideTimerBanner()V
    .locals 2

    .line 553
    iget-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mTimerBanner:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/music/MiniPlayerFragment;->startTimerBannerAnimation(Landroid/view/View;Z)V

    return-void
.end method

.method protected isContentFragment()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isTargetForBackgroundColor()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onArtReset(ZZ)V
    .locals 1

    if-eqz p1, :cond_0

    .line 595
    invoke-static {}, Lcom/sonyericsson/music/MiniPlayerFragment;->removeRetainedArt()V

    .line 596
    invoke-direct {p0}, Lcom/sonyericsson/music/MiniPlayerFragment;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->getCurrentTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 600
    iget-object p2, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mAlbumArtImage:Lcom/sonyericsson/music/ui/MiniPlayerImageView;

    sget-object v0, Lcom/sonyericsson/music/player/PlayerState$SkipDirection;->NONE:Lcom/sonyericsson/music/player/PlayerState$SkipDirection;

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/music/MiniPlayerFragment;->loadAlbumArt(Lcom/sonyericsson/music/common/Track;Lcom/sonyericsson/music/ui/MiniPlayerImageView;Lcom/sonyericsson/music/player/PlayerState$SkipDirection;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 463
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 488
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 471
    :sswitch_0
    invoke-direct {p0}, Lcom/sonyericsson/music/MiniPlayerFragment;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerController;->previous()V

    goto :goto_0

    .line 465
    :sswitch_1
    invoke-direct {p0}, Lcom/sonyericsson/music/MiniPlayerFragment;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerController;->playPause()V

    goto :goto_0

    .line 468
    :sswitch_2
    invoke-direct {p0}, Lcom/sonyericsson/music/MiniPlayerFragment;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerController;->next()V

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x0

    .line 477
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 478
    new-instance v0, Lcom/sonyericsson/music/MiniPlayerFragment$8;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/music/MiniPlayerFragment$8;-><init>(Lcom/sonyericsson/music/MiniPlayerFragment;Landroid/view/View;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 485
    invoke-direct {p0}, Lcom/sonyericsson/music/MiniPlayerFragment;->openPlayerFragmentWithTransition()V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090123 -> :sswitch_3
        0x7f090124 -> :sswitch_3
        0x7f09015f -> :sswitch_2
        0x7f09017a -> :sswitch_1
        0x7f090193 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 181
    invoke-super {p0, p1}, Lcom/sonyericsson/music/library/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 183
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/music/common/UIUtils;->isInteractive(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mIsInteractive:Z

    .line 184
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.SCREEN_ON"

    .line 185
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 186
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    new-instance v0, Lcom/sonyericsson/music/MiniPlayerFragment$ScreenReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/music/MiniPlayerFragment$ScreenReceiver;-><init>(Lcom/sonyericsson/music/MiniPlayerFragment;Lcom/sonyericsson/music/MiniPlayerFragment$1;)V

    iput-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    .line 188
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c006c

    const/4 v0, 0x0

    .line 203
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 204
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {p2, p0}, Lcom/sonyericsson/music/MusicActivity;->addOnArtResetListener(Lcom/sonyericsson/music/MusicActivity$ArtResetListener;)Z

    .line 205
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/sonyericsson/music/MiniPlayerFragment;->setUpMiniPlayerView(Landroid/content/res/Resources;Landroid/view/View;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 193
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 195
    iget-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 197
    iput-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 320
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/music/MusicActivity;->removeOnArtResetListener(Lcom/sonyericsson/music/MusicActivity$ArtResetListener;)V

    .line 321
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .line 452
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    goto :goto_1

    .line 455
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090124

    if-ne p1, v0, :cond_2

    .line 456
    iget-object p1, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mHighlightAlbumArt:Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onStart()V
    .locals 5

    .line 290
    invoke-super {p0}, Lcom/sonyericsson/music/library/BaseFragment;->onStart()V

    .line 291
    invoke-direct {p0}, Lcom/sonyericsson/music/MiniPlayerFragment;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mPlayerStateListener:Lcom/sonyericsson/music/player/PlayerStateListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/player/PlayerController;->registerPlayerStateListener(Lcom/sonyericsson/music/player/PlayerStateListener;)V

    .line 292
    invoke-direct {p0}, Lcom/sonyericsson/music/MiniPlayerFragment;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/MiniPlayerFragment;->loadState(Lcom/sonyericsson/music/player/PlayerState;)V

    .line 294
    invoke-direct {p0}, Lcom/sonyericsson/music/MiniPlayerFragment;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/player/PlayerController;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/player/PlayerState;->getDelayedPauseEndMillis()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    .line 297
    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/MiniPlayerFragment;->setBannerVisibility(Z)V

    .line 298
    invoke-virtual {p0}, Lcom/sonyericsson/music/MiniPlayerFragment;->cancelTimer()V

    goto :goto_0

    .line 300
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-direct {p0}, Lcom/sonyericsson/music/MiniPlayerFragment;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/music/MiniPlayerFragment;->setTimer(JLcom/sonyericsson/music/player/PlayerController;)V

    const/4 v0, 0x1

    .line 301
    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/MiniPlayerFragment;->setBannerVisibility(Z)V

    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 307
    invoke-super {p0}, Lcom/sonyericsson/music/library/BaseFragment;->onStop()V

    .line 309
    invoke-direct {p0}, Lcom/sonyericsson/music/MiniPlayerFragment;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mPlayerStateListener:Lcom/sonyericsson/music/player/PlayerStateListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/player/PlayerController;->unregisterPlayerStateListener(Lcom/sonyericsson/music/player/PlayerStateListener;)V

    .line 312
    invoke-virtual {p0}, Lcom/sonyericsson/music/MiniPlayerFragment;->cancelTimer()V

    .line 314
    iget-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mShowNoContent:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 315
    iget-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mPendingArtRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method refreshTimerBanner(Lcom/sonyericsson/music/player/PlayerController;)V
    .locals 5

    .line 739
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 744
    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerController;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->getDelayedPauseEndMillis()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    .line 746
    invoke-virtual {p0}, Lcom/sonyericsson/music/MiniPlayerFragment;->cancelTimer()V

    .line 747
    invoke-virtual {p0}, Lcom/sonyericsson/music/MiniPlayerFragment;->hideTimerBanner()V

    goto :goto_0

    .line 749
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0xea60

    div-long/2addr v1, v3

    long-to-int p1, v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_3

    const p1, 0x7f10029c

    .line 753
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    const/4 v1, 0x1

    if-ne p1, v1, :cond_4

    const p1, 0x7f10029f

    .line 756
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    const v2, 0x7f1002a0

    .line 759
    new-array v1, v1, [Ljava/lang/Object;

    .line 760
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    .line 759
    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 762
    :goto_2
    iget-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mTimerCountdownText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method setBannerVisibility(Z)V
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mTimerBanner:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected setControlsEnabled(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v0, 0x3e4ccccd    # 0.2f

    .line 366
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 367
    iget-object v1, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 368
    iget-object v1, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 370
    iget-object v1, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 371
    iget-object v1, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 372
    iget-object v1, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 374
    iget-object v1, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mAlbumArtImage:Lcom/sonyericsson/music/ui/MiniPlayerImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 376
    iget-object v1, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mPlayPauseButton:Lcom/sonyericsson/music/ui/PlayPauseButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 377
    iget-object v1, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mPlayPauseButton:Lcom/sonyericsson/music/ui/PlayPauseButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 378
    iget-object p1, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mPlayPauseButton:Lcom/sonyericsson/music/ui/PlayPauseButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setAlpha(F)V

    return-void
.end method

.method setTimer(JLcom/sonyericsson/music/player/PlayerController;)V
    .locals 8

    .line 717
    iget-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 718
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 720
    :cond_0
    invoke-virtual {p0, p3}, Lcom/sonyericsson/music/MiniPlayerFragment;->refreshTimerBanner(Lcom/sonyericsson/music/player/PlayerController;)V

    .line 721
    new-instance v0, Lcom/sonyericsson/music/MiniPlayerFragment$10;

    const-wide/16 v5, 0x7530

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/music/MiniPlayerFragment$10;-><init>(Lcom/sonyericsson/music/MiniPlayerFragment;JJLcom/sonyericsson/music/player/PlayerController;)V

    iput-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mTimer:Landroid/os/CountDownTimer;

    .line 732
    iget-object p1, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method showTimerBanner()V
    .locals 2

    .line 558
    iget-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mTimerBanner:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 559
    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/MiniPlayerFragment;->setBannerVisibility(Z)V

    .line 560
    iget-object v1, p0, Lcom/sonyericsson/music/MiniPlayerFragment;->mTimerBanner:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/music/MiniPlayerFragment;->startTimerBannerAnimation(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method
