.class Lcom/sonyericsson/music/landingpage/LandingPageFragment$4;
.super Lcom/sonyericsson/music/MusicActivity$StartupTask;
.source "LandingPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/landingpage/LandingPageFragment;->onResume()V
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

    .line 388
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$4;->this$0:Lcom/sonyericsson/music/landingpage/LandingPageFragment;

    invoke-direct {p0}, Lcom/sonyericsson/music/MusicActivity$StartupTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/sonyericsson/music/MusicActivity;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 391
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 392
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$4;->this$0:Lcom/sonyericsson/music/landingpage/LandingPageFragment;

    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->updateTrackCountDependentUi()V

    :cond_0
    return-void
.end method
