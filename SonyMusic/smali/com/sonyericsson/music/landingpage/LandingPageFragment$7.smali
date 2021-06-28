.class Lcom/sonyericsson/music/landingpage/LandingPageFragment$7;
.super Ljava/lang/Object;
.source "LandingPageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/landingpage/LandingPageFragment;->scheduleFinishStartup()V
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

    .line 623
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$7;->this$0:Lcom/sonyericsson/music/landingpage/LandingPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 626
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$7;->this$0:Lcom/sonyericsson/music/landingpage/LandingPageFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->access$200(Lcom/sonyericsson/music/landingpage/LandingPageFragment;)Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 628
    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->finishStartup()V

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$7;->this$0:Lcom/sonyericsson/music/landingpage/LandingPageFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->access$300(Lcom/sonyericsson/music/landingpage/LandingPageFragment;)Lcom/sonyericsson/music/landingpage/card/LandingPageCard;

    move-result-object v0

    if-nez v0, :cond_1

    .line 633
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$7;->this$0:Lcom/sonyericsson/music/landingpage/LandingPageFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->access$400(Lcom/sonyericsson/music/landingpage/LandingPageFragment;)V

    :cond_1
    return-void
.end method
