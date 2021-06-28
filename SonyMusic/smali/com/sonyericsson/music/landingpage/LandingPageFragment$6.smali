.class Lcom/sonyericsson/music/landingpage/LandingPageFragment$6;
.super Lcom/sonyericsson/music/MusicActivity$StartupTask;
.source "LandingPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/landingpage/LandingPageFragment;->scheduleRefreshPlaylistArt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/landingpage/LandingPageFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/landingpage/LandingPageFragment;)V
    .locals 0

    .line 609
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$6;->this$0:Lcom/sonyericsson/music/landingpage/LandingPageFragment;

    invoke-direct {p0}, Lcom/sonyericsson/music/MusicActivity$StartupTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/sonyericsson/music/MusicActivity;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 612
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 616
    :cond_0
    invoke-static {p1}, Lcom/sonyericsson/music/common/RefreshPlaylistArtService;->updateAll(Landroid/content/Context;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
