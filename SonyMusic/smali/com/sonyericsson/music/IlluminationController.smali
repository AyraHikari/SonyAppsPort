.class public Lcom/sonyericsson/music/IlluminationController;
.super Landroidx/fragment/app/Fragment;
.source "IlluminationController.java"


# static fields
.field private static final ILLUMINATION_SERVICE_COMPONENT:Landroid/content/ComponentName;

.field private static final MUSIC_BEAT_LED_ON_TIME:I = 0x927c0

.field private static final RGB_LED_ON_TIME:I = 0xfa0

.field public static final TAG:Ljava/lang/String; = "IlluminationController"


# instance fields
.field private mIsIlluminationSupported:Z

.field private mIsMusicBeatSupported:Z

.field private final mPlayerStateListener:Lcom/sonyericsson/music/player/PlayerStateListener;

.field private mStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 43
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sonyericsson.illumination.service"

    const-string v2, "com.sonyericsson.illumination.service.IlluminationService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/music/IlluminationController;->ILLUMINATION_SERVICE_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/sonyericsson/music/IlluminationController;->mIsMusicBeatSupported:Z

    .line 48
    iput-boolean v0, p0, Lcom/sonyericsson/music/IlluminationController;->mIsIlluminationSupported:Z

    .line 51
    new-instance v0, Lcom/sonyericsson/music/IlluminationController$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/IlluminationController$1;-><init>(Lcom/sonyericsson/music/IlluminationController;)V

    iput-object v0, p0, Lcom/sonyericsson/music/IlluminationController;->mPlayerStateListener:Lcom/sonyericsson/music/player/PlayerStateListener;

    const/4 v0, 0x1

    .line 72
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/IlluminationController;Landroid/app/Activity;Lcom/sonyericsson/music/player/PlayerState;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/IlluminationController;->updateBeatAndIllumination(Landroid/app/Activity;Lcom/sonyericsson/music/player/PlayerState;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/music/IlluminationController;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/sonyericsson/music/IlluminationController;->mIsMusicBeatSupported:Z

    return p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/music/IlluminationController;Landroid/app/Activity;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/IlluminationController;->startMusicBeatIllumination(Landroid/app/Activity;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/music/IlluminationController;Landroid/app/Activity;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/IlluminationController;->stopMusicBeatIllumination(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/music/IlluminationController;Landroid/app/Activity;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/IlluminationController;->startRGBIllumination(Landroid/app/Activity;I)V

    return-void
.end method

.method private static createIlluminationServiceIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 214
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 215
    sget-object v1, Lcom/sonyericsson/music/IlluminationController;->ILLUMINATION_SERVICE_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 216
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private getPlayerController()Lcom/sonyericsson/music/player/PlayerController;
    .locals 1

    .line 109
    invoke-virtual {p0}, Lcom/sonyericsson/music/IlluminationController;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object v0

    return-object v0
.end method

.method private isIlluminationServiceAvailable(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "com.sonyericsson.illumination.intent.action.START_LED"

    .line 203
    invoke-static {v0}, Lcom/sonyericsson/music/IlluminationController;->createIlluminationServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.sonyericsson.illumination.intent.extra.PACKAGE_NAME"

    .line 204
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 v1, 0x40

    .line 207
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private startMusicBeatIllumination(Landroid/app/Activity;I)V
    .locals 3

    .line 182
    iget-boolean v0, p0, Lcom/sonyericsson/music/IlluminationController;->mIsIlluminationSupported:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.sonyericsson.illumination.intent.action.START_LED"

    .line 183
    invoke-static {v0}, Lcom/sonyericsson/music/IlluminationController;->createIlluminationServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.sonyericsson.illumination.intent.extra.LED_ID"

    const-string v2, "com.sonyericsson.illumination.intent.extra.value.AUDIO"

    .line 184
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sonyericsson.illumination.intent.extra.PACKAGE_NAME"

    .line 185
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sonyericsson.illumination.intent.extra.LED_COLOR"

    .line 186
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "com.sonyericsson.illumination.intent.extra.LED_ON_TIME"

    const v1, 0x927c0

    .line 187
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 188
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method private startRGBIllumination(Landroid/app/Activity;I)V
    .locals 3

    .line 162
    iget-boolean v0, p0, Lcom/sonyericsson/music/IlluminationController;->mIsIlluminationSupported:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.sonyericsson.illumination.intent.action.START_LED"

    .line 163
    invoke-static {v0}, Lcom/sonyericsson/music/IlluminationController;->createIlluminationServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.sonyericsson.illumination.intent.extra.LED_ID"

    const-string v2, "com.sonyericsson.illumination.intent.extra.value.BUTTON_RGB"

    .line 164
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sonyericsson.illumination.intent.extra.PACKAGE_NAME"

    .line 165
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sonyericsson.illumination.intent.extra.LED_COLOR"

    .line 166
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "com.sonyericsson.illumination.intent.extra.LED_ON_TIME"

    const/16 v1, 0xfa0

    .line 167
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 168
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method private stopMusicBeatIllumination(Landroid/app/Activity;)V
    .locals 3

    .line 193
    iget-boolean v0, p0, Lcom/sonyericsson/music/IlluminationController;->mIsIlluminationSupported:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "com.sonyericsson.illumination.intent.action.STOP_LED"

    .line 194
    invoke-static {v0}, Lcom/sonyericsson/music/IlluminationController;->createIlluminationServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.sonyericsson.illumination.intent.extra.LED_ID"

    const-string v2, "com.sonyericsson.illumination.intent.extra.value.AUDIO"

    .line 195
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sonyericsson.illumination.intent.extra.PACKAGE_NAME"

    .line 196
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method private stopRGBIllumination(Landroid/app/Activity;)V
    .locals 3

    .line 173
    iget-boolean v0, p0, Lcom/sonyericsson/music/IlluminationController;->mIsIlluminationSupported:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "com.sonyericsson.illumination.intent.action.STOP_LED"

    .line 174
    invoke-static {v0}, Lcom/sonyericsson/music/IlluminationController;->createIlluminationServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.sonyericsson.illumination.intent.extra.LED_ID"

    const-string v2, "com.sonyericsson.illumination.intent.extra.value.BUTTON_RGB"

    .line 175
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sonyericsson.illumination.intent.extra.PACKAGE_NAME"

    .line 176
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method private updateBeatAndIllumination(Landroid/app/Activity;Lcom/sonyericsson/music/player/PlayerState;)V
    .locals 2

    .line 148
    invoke-virtual {p2}, Lcom/sonyericsson/music/player/PlayerState;->getCurrentTrackColor()I

    move-result v0

    invoke-static {p1, v0}, Lcom/sonyericsson/music/common/UIUtils;->normalizeTrackColor(Landroid/content/Context;I)I

    move-result v0

    .line 149
    iget-boolean v1, p0, Lcom/sonyericsson/music/IlluminationController;->mIsMusicBeatSupported:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/sonyericsson/music/player/PlayerState;->isPlaying()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 150
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/IlluminationController;->startMusicBeatIllumination(Landroid/app/Activity;I)V

    goto :goto_0

    .line 152
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/IlluminationController;->startRGBIllumination(Landroid/app/Activity;I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected getMusicActivity()Lcom/sonyericsson/music/MusicActivity;
    .locals 1

    .line 105
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    return-object v0
.end method

.method public init()V
    .locals 2

    .line 113
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 114
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/music/common/AvailabilityUtils;->isIlluminationSettingsAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    new-instance v1, Lcom/sonyericsson/music/IlluminationController$2;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/music/IlluminationController$2;-><init>(Lcom/sonyericsson/music/IlluminationController;Landroid/content/Context;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 143
    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 77
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 78
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/IlluminationController;->isIlluminationServiceAvailable(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/music/IlluminationController;->mIsIlluminationSupported:Z

    return-void
.end method

.method protected onRetrieveMusicBeatState(Z)V
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcom/sonyericsson/music/IlluminationController;->mStarted:Z

    if-eqz v0, :cond_0

    .line 99
    iput-boolean p1, p0, Lcom/sonyericsson/music/IlluminationController;->mIsMusicBeatSupported:Z

    .line 100
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-direct {p0}, Lcom/sonyericsson/music/IlluminationController;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/player/PlayerController;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/IlluminationController;->updateBeatAndIllumination(Landroid/app/Activity;Lcom/sonyericsson/music/player/PlayerState;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 83
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 84
    invoke-direct {p0}, Lcom/sonyericsson/music/IlluminationController;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/IlluminationController;->mPlayerStateListener:Lcom/sonyericsson/music/player/PlayerStateListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/player/PlayerController;->registerPlayerStateListener(Lcom/sonyericsson/music/player/PlayerStateListener;)V

    .line 85
    invoke-virtual {p0}, Lcom/sonyericsson/music/IlluminationController;->init()V

    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lcom/sonyericsson/music/IlluminationController;->mStarted:Z

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 91
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 92
    invoke-direct {p0}, Lcom/sonyericsson/music/IlluminationController;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/IlluminationController;->mPlayerStateListener:Lcom/sonyericsson/music/player/PlayerStateListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/player/PlayerController;->unregisterPlayerStateListener(Lcom/sonyericsson/music/player/PlayerStateListener;)V

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/sonyericsson/music/IlluminationController;->mStarted:Z

    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/IlluminationController;->pause(Landroid/app/Activity;)V

    return-void
.end method

.method public pause(Landroid/app/Activity;)V
    .locals 0

    .line 157
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/IlluminationController;->stopRGBIllumination(Landroid/app/Activity;)V

    .line 158
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/IlluminationController;->stopMusicBeatIllumination(Landroid/app/Activity;)V

    return-void
.end method
