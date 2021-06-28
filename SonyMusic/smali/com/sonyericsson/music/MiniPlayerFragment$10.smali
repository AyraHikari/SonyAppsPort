.class Lcom/sonyericsson/music/MiniPlayerFragment$10;
.super Landroid/os/CountDownTimer;
.source "MiniPlayerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/MiniPlayerFragment;->setTimer(JLcom/sonyericsson/music/player/PlayerController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/MiniPlayerFragment;

.field final synthetic val$playerController:Lcom/sonyericsson/music/player/PlayerController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/MiniPlayerFragment;JJLcom/sonyericsson/music/player/PlayerController;)V
    .locals 0

    .line 721
    iput-object p1, p0, Lcom/sonyericsson/music/MiniPlayerFragment$10;->this$0:Lcom/sonyericsson/music/MiniPlayerFragment;

    iput-object p6, p0, Lcom/sonyericsson/music/MiniPlayerFragment$10;->val$playerController:Lcom/sonyericsson/music/player/PlayerController;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 729
    iget-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment$10;->this$0:Lcom/sonyericsson/music/MiniPlayerFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/music/MiniPlayerFragment;->hideTimerBanner()V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    .line 724
    iget-object p1, p0, Lcom/sonyericsson/music/MiniPlayerFragment$10;->this$0:Lcom/sonyericsson/music/MiniPlayerFragment;

    iget-object p2, p0, Lcom/sonyericsson/music/MiniPlayerFragment$10;->val$playerController:Lcom/sonyericsson/music/player/PlayerController;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/MiniPlayerFragment;->refreshTimerBanner(Lcom/sonyericsson/music/player/PlayerController;)V

    return-void
.end method
